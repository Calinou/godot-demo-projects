extends Pawn


#warning-ignore:unused_class_variable
@export var combat_actor: PackedScene
#warning-ignore:unused_class_variable
var lost = false
@onready var parent = get_parent()


func _ready():
	update_look_direction(Vector2.RIGHT)



func _process(_delta):
	var input_direction = get_input_direction()
	if input_direction.is_zero_approx():
		return
	update_look_direction(input_direction)

	var target_position = parent.request_move(self, input_direction)
	if target_position:
		move_to(target_position)
	else:
		bump()


func get_input_direction():
	return Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)


func update_look_direction(direction):
	$Pivot/Sprite2D.rotation = direction.angle()


func move_to(target_position):
	set_process(false)
	var move_direction = (target_position - position).normalized()
	var state_machine = $AnimationTree.get("parameters/playback")
	state_machine.travel("walk")

	await $AnimationTree.animation_started
	var tween := create_tween()
	tween.set_ease(Tween.EASE_IN)
	tween.tween_property($Pivot, "position", $Pivot.position + move_direction * 64, state_machine.get_current_length())

	await $AnimationTree.animation_finished
	$Pivot.position = Vector2.ZERO
	position = target_position
	state_machine.travel("idle")

	set_process(true)

func bump():
	set_process(false)
	var state_machine = $AnimationTree.get("parameters/playback")
	state_machine.travel("bump")
	await $AnimationTree.animation_finished
	state_machine.travel("idle")
	set_process(true)
