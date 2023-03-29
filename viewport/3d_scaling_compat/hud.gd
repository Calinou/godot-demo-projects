extends Control

# The 3D viewport's shrink factor. For instance, 1 is full resolution,
# 2 is half resolution and 4 is quarter resolution. Lower values look
# sharper but are slower to render.
var scale_factor = 1
var filter_mode = TEXTURE_FILTER_NEAREST

@onready var viewport_container = $SubViewportContainer
@onready var viewport = $SubViewportContainer/SubViewport
@onready var scale_label = $VBoxContainer/Scale
@onready var filter_label = $VBoxContainer/Filter

func _ready() -> void:
	get_viewport().size_changed.connect(_root_viewport_size_changed)


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("cycle_viewport_resolution"):
		scale_factor = wrapi(scale_factor + 1, 1, 5)
		viewport_container.stretch_shrink = scale_factor
		scale_label.text = "Scale: %3.0f%%" % (100.0 / scale_factor)

	if event.is_action_pressed("toggle_filtering"):
		viewport_container.texture_filter = TEXTURE_FILTER_LINEAR if viewport_container.texture_filter == TEXTURE_FILTER_NEAREST else TEXTURE_FILTER_NEAREST
		filter_label.text = "Filter: "
		filter_label.text += "Bilinear" if viewport_container.texture_filter == TEXTURE_FILTER_LINEAR else "Nearest-neighbor"


# Called when the root's viewport size changes (i.e. when the window is resized).
# This is done to handle multiple resolutions without losing quality.
func _root_viewport_size_changed() -> void:
	push_error("TODO")
