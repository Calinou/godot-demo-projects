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

func _ready():
	viewport_container.texture_filter = CanvasItem.TEXTURE_FILTER_LINEAR

func _unhandled_input(event):
	if event.is_action_pressed("cycle_viewport_resolution"):
		scale_factor = wrapi(scale_factor + 1, 1, 5)
		viewport_container.stretch_shrink = scale_factor
		scale_label.text = "Scale: %3.0f%%" % (100.0 / scale_factor)

	if event.is_action_pressed("toggle_filtering"):
		filter_mode = wrapi(filter_mode + 1, TEXTURE_FILTER_LINEAR, TEXTURE_FILTER_MAX) as TextureFilter
		viewport_container.texture_filter = filter_mode
		filter_label.text = ClassDB.class_get_enum_constants("CanvasItem", "TextureFilter")[filter_mode].capitalize()
