
extends KinematicBody2D

# Member variables
const ADVANCE_SPEED = 500.0

var advance_dir = Vector2(1, 0)
var hit = false


func _physics_process(delta):  #-- NOTE: Automatically converted by Godot 2 to 3 converter, please review
	if hit:
		return
	var collision = move_and_collide(advance_dir*delta*ADVANCE_SPEED)  #-- NOTE: Automatically converted by Godot 2 to 3 converter, please review
	if collision:
		get_node("anim").play("explode")
		hit = true


func _ready():
	set_physics_process(true)  #-- NOTE: Automatically converted by Godot 2 to 3 converter, please review

