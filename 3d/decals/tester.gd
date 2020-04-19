extends WorldEnvironment

const ROT_SPEED = 0.003
const ZOOM_SPEED = 0.125
const MAIN_BUTTONS = BUTTON_MASK_LEFT | BUTTON_MASK_RIGHT | BUTTON_MASK_MIDDLE

var tester_index = 0
var rot_x = deg2rad(-22.5) # This must be kept in sync with RotationX.
var rot_y = deg2rad(90) # This must be kept in sync with CameraHolder.
var zoom = 1.5
var base_height = ProjectSettings.get_setting("display/window/size/height")

onready var testers = $Testers
onready var camera_holder = $CameraHolder # Has a position and rotates on Y.
onready var rotation_x = $CameraHolder/RotationX
onready var camera = $CameraHolder/RotationX/Camera3D

func _ready():
	camera_holder.transform.basis = Basis(Vector3(0, rot_y, 0))
	rotation_x.transform.basis = Basis(Vector3(rot_x, 0, 0))

func _unhandled_input(event):
	if event.is_action_pressed("ui_left"):
		tester_index = max(0, tester_index - 1)
	if event.is_action_pressed("ui_right"):
		tester_index = min(tester_index + 1, testers.get_child_count() -1)
		
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP:
			zoom -= ZOOM_SPEED
		if event.button_index == BUTTON_WHEEL_DOWN:
			zoom += ZOOM_SPEED
		zoom = clamp(zoom, 1.5, 4)
	
	if event is InputEventMouseMotion and event.button_mask & MAIN_BUTTONS:
		# Compensate motion speed to be resolution-independent (based on the window height).
		var relative_motion = event.relative
		rot_y -= relative_motion.x * ROT_SPEED
		rot_x -= relative_motion.y * ROT_SPEED
		rot_x = clamp(rot_x, deg2rad(-90), 0)
		camera_holder.transform.basis = Basis(Vector3(0, rot_y, 0))
		rotation_x.transform.basis = Basis(Vector3(rot_x, 0, 0))


func _process(delta):
	var current_tester = testers.get_child(tester_index)
	# This code assumes CameraHolder's X and Y coordinates are already correct.
	var current_position = camera_holder.global_transform.origin.z
	var target_position = current_tester.global_transform.origin.z
	camera_holder.global_transform.origin.z = lerp(current_position, target_position, 3 * delta)
	camera.translation.z = lerp(camera.translation.z, zoom, 10 * delta)
