extends Control

# The size of the minimap on the UI in pixels.
# This is not the actual texture size used by the SubViewport, which is larger
# as we don't see the whole texture at once (512x512 in this demo).
const MINIMAP_SIZE = Vector2(256, 256)

var player_position := Vector3()
var player_rotation := 0.0

@onready var minimap_camera: Camera3D = $Mask/SubViewport/Camera3D
@onready var minimap_bounds := Rect2(-Vector2.ONE * minimap_camera.size * 0.5, Vector2.ONE * minimap_camera.size)
@onready var minimap_zoom := 15.0


func _process(_delta: float) -> void:
	# FIXME: Fix camera positioning not being correct and speed being wrong.
	$Mask/TextureRect.region_rect = Rect2(Vector2(player_position.x, player_position.z) * minimap_camera.size * 0.5, MINIMAP_SIZE)
	$Mask/TextureRect.rotation = player_rotation
