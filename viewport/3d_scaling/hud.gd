extends Control

@onready var viewport = get_tree().root
@onready var scale_label = $VBoxContainer/Scale
@onready var filter_label = $VBoxContainer/Filter
@onready var fsr_sharpness_label = $VBoxContainer/FSRSharpness
@onready var texture_mipmap_bias_automatic_label = $VBoxContainer/TextureMipmapBiasAutomatic
@onready var texture_mipmap_bias_manual_label = $VBoxContainer/TextureMipmapBiasManual

func _ready() -> void:
	viewport.scaling_3d_mode = Viewport.SCALING_3D_MODE_BILINEAR


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("increase_viewport_resolution"):
		viewport.scaling_3d_scale = wrapf(viewport.scaling_3d_scale + 0.1, 0.3, 2.1)
		update_scale_label()
	if event.is_action_pressed("decrease_viewport_resolution"):
		viewport.scaling_3d_scale = wrapf(viewport.scaling_3d_scale - 0.1, 0.3, 2.1)
		update_scale_label()

	if event.is_action_pressed("toggle_filtering") and viewport.scaling_3d_scale <= 1.001:
		viewport.scaling_3d_mode = wrapi(viewport.scaling_3d_mode + 1, Viewport.SCALING_3D_MODE_BILINEAR, Viewport.SCALING_3D_MODE_MAX) as Viewport.Scaling3DMode
		filter_label.text = "Scaling Mode: "
		match viewport.scaling_3d_mode:
			Viewport.SCALING_3D_MODE_BILINEAR:
				filter_label.text += "Bilinear"
				fsr_sharpness_label.visible = false
			Viewport.SCALING_3D_MODE_FSR:
				filter_label.text += "AMD FidelityFX Super Resolution 1.0"
				fsr_sharpness_label.visible = true

	if event.is_action_pressed("increase_fsr_sharpness") and viewport.scaling_3d_mode == Viewport.SCALING_3D_MODE_FSR:
		viewport.fsr_sharpness = wrapf(viewport.fsr_sharpness - 0.2, 0.0, 2.2)
		update_fsr_sharpness_label()
	if event.is_action_pressed("decrease_fsr_sharpness") and viewport.scaling_3d_mode == Viewport.SCALING_3D_MODE_FSR:
		viewport.fsr_sharpness = wrapf(viewport.fsr_sharpness + 0.2, 0.0, 2.2)
		update_fsr_sharpness_label()

	if event.is_action_pressed("increase_texture_mipmap_bias"):
		viewport.texture_mipmap_bias = wrapf(viewport.texture_mipmap_bias + 0.1, -1.0, 0.1)
		update_texture_mipmap_bias_manual_label()
	if event.is_action_pressed("decrease_texture_mipmap_bias"):
		viewport.texture_mipmap_bias = wrapf(viewport.texture_mipmap_bias - 0.1, -1.0, 0.1)
		update_texture_mipmap_bias_manual_label()


func update_scale_label() -> void:
	scale_label.text = "Scale: %3.0f%%" % (viewport.scaling_3d_scale * 100)
	texture_mipmap_bias_automatic_label.text = "Texture Mipmap Bias (automatic): %.2f" % min(0.0, log(viewport.scaling_3d_scale) / log(2))
	if (viewport.scaling_3d_scale > 1.001):
		scale_label.text += " (supersampling, slow)"
		# Bilinear filtering is forced by the engine when performing supersampling.
		filter_label.visible = false
		fsr_sharpness_label.visible = false
	else:
		filter_label.visible = true
		fsr_sharpness_label.visible = viewport.scaling_3d_mode == Viewport.SCALING_3D_MODE_FSR


func update_fsr_sharpness_label() -> void:
	# Lower FSR sharpness values are sharper (with 0.0 being the maximum),
	# but we want to display the value in a "higher setting is sharper" fashion.
	fsr_sharpness_label.text = "FSR Sharpness: %3.0f%%" % (remap(viewport.fsr_sharpness, 2.0, 0.0, 0.0, 1.0) * 100)


func update_texture_mipmap_bias_manual_label() -> void:
	texture_mipmap_bias_manual_label.text = "Texture Mipmap Bias (manual offset): %.1f" % viewport.texture_mipmap_bias
