extends Node3D

@onready var info_label = $InfoLabel
@onready var fps_label = $FPSLabel
@onready var voxel_gi = $VoxelGI
@onready var world_environment = $WorldEnvironment

enum GIMode {
	DISABLED,
	VOXEL_GI,
	SDFGI,
	# TODO: LIGHTMAP_GI
}

enum GIQuality {
	LOW,
	MEDIUM,
	HIGH,
}

var gi_mode = GIMode.VOXEL_GI
var gi_quality = GIQuality.LOW


func _ready():
	update_info_label()


func _process(_delta):
	fps_label.text = "%d FPS (%.2f mspf)" % [Engine.get_frames_per_second(), 1000.0 / Engine.get_frames_per_second()]


func _input(event):
	if event.is_action_pressed("decrease_gi_quality"):
		gi_quality = wrapi(int(gi_quality) - 1, 0, 3)
		update_gi_quality()
	if event.is_action_pressed("increase_gi_quality"):
		gi_quality = wrapi(int(gi_quality) + 1, 0, 3)
		update_gi_quality()
	if event.is_action_pressed("previous_gi_mode"):
		gi_mode = wrapi(int(gi_mode) - 1, 0, 3)
		update_gi_mode()
	if event.is_action_pressed("next_gi_mode"):
		gi_mode = wrapi(int(gi_mode) + 1, 0, 3)
		update_gi_mode()


func update_gi_mode():
	update_info_label()
	
	match gi_mode:
		GIMode.DISABLED:
			voxel_gi.visible = false
			world_environment.environment.sdfgi_enabled = false
		GIMode.VOXEL_GI:
			voxel_gi.visible = true
			world_environment.environment.sdfgi_enabled = false
		GIMode.SDFGI:
			voxel_gi.visible = false
			world_environment.environment.sdfgi_enabled = true


func update_gi_quality():
	update_info_label()
	
	match gi_quality:
		GIQuality.LOW:
			RenderingServer.voxel_gi_set_quality(RenderingServer.VOXEL_GI_QUALITY_LOW)
			world_environment.environment.sdfgi_cascades = Environment.SDFGI_CASCADES_4
		GIQuality.MEDIUM:
			RenderingServer.voxel_gi_set_quality(RenderingServer.VOXEL_GI_QUALITY_LOW)
			world_environment.environment.sdfgi_cascades = Environment.SDFGI_CASCADES_6
		GIQuality.HIGH:
			RenderingServer.voxel_gi_set_quality(RenderingServer.VOXEL_GI_QUALITY_HIGH)
			world_environment.environment.sdfgi_cascades = Environment.SDFGI_CASCADES_8


func update_info_label():
	var mode_text = ""
	if gi_mode == GIMode.DISABLED:
		mode_text = "Disabled"
	elif gi_mode == GIMode.VOXEL_GI:
		mode_text = "VoxelGI"
	else:
		mode_text = "SDFGI"

	var quality_text = ""
	if gi_quality == GIQuality.LOW:
		quality_text = "Low"
	elif gi_quality == GIQuality.MEDIUM:
		quality_text = "Medium"
	else:
		quality_text = "High"

	info_label.text = "GI Mode: %s\nGI Quality: %s" % [mode_text, quality_text]
