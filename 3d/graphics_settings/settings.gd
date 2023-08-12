extends Control

# A good practice is to use a separate file for graphics options compared to other game options.
# This can be used with cloud save systems to only synchronize game options
# (which are generally the same across an user's devices),
# but not graphics options which may need to differ for performance reasons.
const CONFIG_FILE_PATH = "user://settings_graphics.ini"

# Window project settings:
#  - Stretch mode is set to `canvas_items` (`2d` in Godot 3.x)
#  - Stretch aspect is set to `expand`
@onready var world_environment := $WorldEnvironment
@onready var directional_light := $Node3D/DirectionalLight3D
@onready var camera := $Node3D/Camera3D
@onready var fps_label := $FPSLabel
@onready var resolution_label := $ResolutionLabel

var config_file := ConfigFile.new()
var counter := 0.0

# When the screen changes size, we need to update the 3D
# viewport quality setting. If we don't do this, the viewport will take
# the size from the main viewport.
var viewport_start_size := Vector2(
	ProjectSettings.get_setting(&"display/window/size/viewport_width"),
	ProjectSettings.get_setting(&"display/window/size/viewport_height")
)


## Save the ConfigFiles with the specified setting after a short delay has elapsed.
## This prevents spamming filesystem writes when this method is called often
## (e.g. when dragging a slider).
func queue_save(section: String, key: String, value: Variant) -> void:
	config_file.set_value(section, key, value)
	%SaveTimer.start()


func _ready() -> void:
	config_file.load("user://settings_graphics.ini")

	get_viewport().size_changed.connect(self.update_resolution_label)
	update_resolution_label()

	# Update options in the menu based on the previously saved settings.
	load_settings()
	load_project_settings_override()

	# Disable V-Sync to uncap framerate on supported platforms. This makes performance comparison
	# easier on high-end machines that easily reach the monitor's refresh rate.
	DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)


func _process(delta: float) -> void:
	counter += delta
	# Hide FPS label until it's initially updated by the engine (this can take up to 1 second).
	fps_label.visible = counter >= 1.0
	fps_label.text = "%d FPS (%.2f mspf)" % [Engine.get_frames_per_second(), 1000.0 / Engine.get_frames_per_second()]
	# Color FPS counter depending on framerate.
	# The Gradient resource is stored as metadata within the FPSLabel node (accessible in the inspector).
	fps_label.modulate = fps_label.get_meta("gradient").sample(remap(Engine.get_frames_per_second(), 0, 180, 0.0, 1.0))


func _exit_tree() -> void:
	# Save changes if the user quits the project before the save timer has expired.
	config_file.save(CONFIG_FILE_PATH)

func update_resolution_label() -> void:
	var viewport_render_size = get_viewport().size * get_viewport().scaling_3d_scale
	resolution_label.text = "3D viewport resolution: %d × %d (%d%%)" \
			% [viewport_render_size.x, viewport_render_size.y, round(get_viewport().scaling_3d_scale * 100)]


func load_settings() -> void:
	# If an option doesn't exist in the file, keep the existing one defined in the UI scene.
	%UIScaleOptionButton.selected = config_file.get_value("user_interface", "scale", %UIScaleOptionButton.selected)
	%DisplayModeOptionButton.selected = config_file.get_value("display", "mode", %DisplayModeOptionButton.selected)
	%VsyncOptionButton.selected = config_file.get_value("display", "vsync", %VsyncOptionButton.selected)
	%ResolutionScaleSlider.value = config_file.get_value("display", "resolution_scale", %ResolutionScaleSlider.value)
	%FilterOptionButton.selected = config_file.get_value("display", "resolution_scale_filter", %FilterOptionButton.selected)
	%FSRSharpnessSlider.value = config_file.get_value("display", "resolution_scale_fsr_sharpness", %FSRSharpnessSlider.value)
	update_display_settings()

	%TAAOptionButton.selected = config_file.get_value("antialiasing", "temporal_aa", %TAAOptionButton.selected)
	%MSAAOptionButton.selected = config_file.get_value("antialiasing", "msaa", %MSAAOptionButton.selected)
	%FXAAOptionButton.selected = config_file.get_value("antialiasing", "fxaa", %FXAAOptionButton.selected)
	%ShadowSizeOptionButton.selected = config_file.get_value("shadows", "shadow_map_size", %ShadowSizeOptionButton.selected)
	%ShadowFilterOptionButton.selected = config_file.get_value("shadows", "shadow_map_filter", %ShadowFilterOptionButton.selected)
	%MeshLODOptionButton.selected = config_file.get_value("meshes", "mesh_lod_threshold", %MeshLODOptionButton.selected)
	%SDFGIOptionButton.selected = config_file.get_value("global_illumination", "signed_distance_field_gi", %SDFGIOptionButton.selected)
	%GlowOptionButton.selected = config_file.get_value("post_processing", "glow", %GlowOptionButton.selected)
	%SSAOOptionButton.selected = config_file.get_value("post_processing", "screen_space_ambient_occlusion", %SSAOOptionButton.selected)
	%SSReflectionsOptionButton.selected = config_file.get_value("post_processing", "screen_space_reflections", %SSReflectionsOptionButton.selected)
	%SSILOptionButton.selected = config_file.get_value("post_processing", "screen_space_indirect_lighting", %SSILOptionButton.selected)
	%VolumetricFogOptionButton.selected = config_file.get_value("post_processing", "volumetric_fog", %VolumetricFogOptionButton.selected)
	update_rendering_settings()


func load_project_settings_override() -> void:
	var rendering_method_index := 1
	match ProjectSettings.get_setting("rendering/renderer/rendering_method"):
		"forward_plus":
			rendering_method_index = 0
		"mobile":
			rendering_method_index = 1
		"gl_compatibility":
			rendering_method_index = 2

	$SettingsMenu/ScrollContainer/VBoxContainer/GridContainer2/RenderingMethodOptionButton.selected = rendering_method_index

func _on_hide_show_button_toggled(show_settings: bool) -> void:
	# Option to hide the settings so you can see the changes to the 3D world better.
	var button := $HideShowButton
	var settings_menu := $SettingsMenu
	if show_settings:
		button.text = "Hide settings"
	else:
		button.text = "Show settings"
	settings_menu.visible = show_settings

# User interface settings.

func _on_ui_scale_option_button_item_selected(index: int) -> void:
	var scale_factor := 1.0
	match index:
		0: # Smaller (66%)
			scale_factor = 0.6667
		1: # Small (80%)
			scale_factor = 0.8
		2: # Medium (100%) (default)
			scale_factor = 1.0
		3: # Large (133%)
			scale_factor = 1.3333
		4: # Larger (200%)
			scale_factor = 2.0

	get_tree().root.set_content_scale_factor(scale_factor)
	queue_save("user_interface", "scale", index)

# Video settings.

func _on_rendering_method_option_button_item_selected(index: int) -> void:
	# Due to its nature, this setting needs special handling and is not saved in the
	# usual graphics settings configuration file.
	var override := ConfigFile.new()
	var rendering_method := "forward_plus"
	match index:
		0: # Forward+
			rendering_method = "forward_plus"
		1: # Mobile
			rendering_method = "mobile"
		2: # Compatibility
			rendering_method = "gl_compatibility"

	override.set_value("rendering", "renderer/rendering_method", rendering_method)

	# This path is configured as a custom project settings override file in the Project Settings.
	# This means Godot will load it to override project settings before the renderer is initialized,
	# which allows overriding the rendering method and other settings that require a restart to be effective.
	var override_path: String = ProjectSettings.get_setting("application/config/project_settings_override")
	print("Saving project settings override to: %s" % ProjectSettings.globalize_path(override_path))
	override.save(override_path)

func _on_display_mode_option_button_item_selected(index: int) -> void:
	# To change between winow, fullscreen and other window modes,
	# set the root mode to one of the options of Window.MODE_*.
	# Other modes are maximized and minimized.
	match index:
		0: # Disabled (default)
			get_tree().root.set_mode(Window.MODE_WINDOWED)
		1: # Fullscreen
			get_tree().root.set_mode(Window.MODE_FULLSCREEN)
		2: # Exclusive Fullscreen
			get_tree().root.set_mode(Window.MODE_EXCLUSIVE_FULLSCREEN)

	queue_save("display", "mode", index)

func _on_vsync_option_button_item_selected(index: int) -> void:
	# V-Sync is enabled by default.
	# Vertical synchronization locks framerate and makes screen tearing not visible at the cost of
	# higher input latency and stuttering when the framerate target is not met.
	# Adaptive V-Sync automatically disables V-Sync when the framerate target is not met, and enables
	# V-Sync otherwise. This prevents suttering and reduces input latency when the framerate target
	# is not met, at the cost of visible tearing.
	# Mailbox V-Sync does not cap framerate but allows displaying frames without tearing,
	# and without added latency compared to V-Sync disabled. It is most effective when you can
	# consistently render at least twice as many frames as the monitor refresh rate.
	match index:
		0: # Disabled (default)
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		1: # Adaptive
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ADAPTIVE)
		2: # Enabled
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
		3: # Mailbox
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_MAILBOX)


func _on_resolution_scale_slider_value_changed(value: float) -> void:
	get_viewport().scaling_3d_scale = value
	update_resolution_label()


func _on_filter_option_button_item_selected(index: int) -> void:
	# Viewport scale mode setting.
	if index == 0: # Bilinear (Fastest)
		get_viewport().scaling_3d_mode = Viewport.SCALING_3D_MODE_BILINEAR
		# FSR Sharpness is only effective when the scaling mode is FSR 1.0.
		%FSRSharpnessLabel.visible = false
		%FSRSharpnessSlider.visible = false
	elif index == 1: # FSR 1.0 (Fast)
		get_viewport().scaling_3d_mode = Viewport.SCALING_3D_MODE_FSR
		# FSR Sharpness is only effective when the scaling mode is FSR 1.0.
		%FSRSharpnessLabel.visible = true
		%FSRSharpnessSlider.visible = true


func _on_fsr_sharpness_slider_value_changed(value: float) -> void:
	# Lower FSR sharpness values result in a sharper image.
	# Invert the slider so that higher values result in a sharper image,
	# which is generally expected from users.
	get_viewport().fsr_sharpness = 2.0 - value


func _on_msaa_option_button_item_selected(index: int) -> void:
	# Multi-sample anti-aliasing. High quality, but slow. It also does not smooth out the edges of
	# transparent (alpha scissor) textures.
	match index:
		0: # Disabled (default)
			get_viewport().msaa_3d = Viewport.MSAA_DISABLED
		1: # 2×
			get_viewport().msaa_3d = Viewport.MSAA_2X
		2: # 4×
			get_viewport().msaa_3d = Viewport.MSAA_4X
		3: # 8×
			get_viewport().msaa_3d = Viewport.MSAA_8X


func _on_taa_option_button_item_selected(index: int) -> void:
	# Temporal antialiasing. Smooths out everything including specular aliasing, but can introduce
	# ghosting artifacts and blurring in motion. Moderate performance cost.
	get_viewport().use_taa = index == 1


func _on_fxaa_option_button_item_selected(index: int) -> void:
	# Fast approximate anti-aliasing. Much faster than MSAA (and works on alpha scissor edges),
	# but blurs the whole scene rendering slightly.
	get_viewport().screen_space_aa = int(index == 1) as Viewport.ScreenSpaceAA


func _on_fov_slider_value_changed(value: float) -> void:
	camera.fov = value

# Quality settings.

func _on_shadow_size_option_button_item_selected(index):
	match index:
		0: # Minimum
			RenderingServer.directional_shadow_atlas_set_size(512, true)
			# Adjust shadow bias according to shadow resolution.
			# Higher resultions can use a lower bias without suffering from shadow acne.
			directional_light.shadow_bias = 0.06

			# Disable positional (omni/spot) light shadows entirely to further improve performance.
			# These often don't contribute as much to a scene compared to directional light shadows.
			get_viewport().positional_shadow_atlas_size = 0
		1: # Very Low
			RenderingServer.directional_shadow_atlas_set_size(1024, true)
			directional_light.shadow_bias = 0.04
			get_viewport().positional_shadow_atlas_size = 1024
		2: # Low
			RenderingServer.directional_shadow_atlas_set_size(2048, true)
			directional_light.shadow_bias = 0.03
			get_viewport().positional_shadow_atlas_size = 2048
		3: # Medium (default)
			RenderingServer.directional_shadow_atlas_set_size(4096, true)
			directional_light.shadow_bias = 0.02
			get_viewport().positional_shadow_atlas_size = 4096
		4: # High
			RenderingServer.directional_shadow_atlas_set_size(8192, true)
			directional_light.shadow_bias = 0.01
			get_viewport().positional_shadow_atlas_size = 8192
		5: # Ultra
			RenderingServer.directional_shadow_atlas_set_size(16384, true)
			directional_light.shadow_bias = 0.005
			get_viewport().positional_shadow_atlas_size = 16384


func _on_shadow_filter_option_button_item_selected(index):
	match index:
		0: # Very Low
			RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_HARD)
			RenderingServer.positional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_HARD)
		1: # Low
			RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_VERY_LOW)
			RenderingServer.positional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_VERY_LOW)
		2: # Medium (default)
			RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_LOW)
			RenderingServer.positional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_LOW)
		3: # High
			RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_MEDIUM)
			RenderingServer.positional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_MEDIUM)
		4: # Very High
			RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_HIGH)
			RenderingServer.positional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_HIGH)
		5: # Ultra
			RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_ULTRA)
			RenderingServer.positional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_ULTRA)


func _on_mesh_lod_option_button_item_selected(index):
	match index:
		0: # Very Low
			get_viewport().mesh_lod_threshold = 8.0
		1: # Low
			get_viewport().mesh_lod_threshold = 4.0
		2: # Medium
			get_viewport().mesh_lod_threshold = 2.0
		3: # High (default)
			get_viewport().mesh_lod_threshold = 1.0
		4: # Ultra
			# Always use highest LODs to avoid any form of pop-in.
			get_viewport().mesh_lod_threshold = 0.0

# Effect settings.

func _on_ss_reflections_option_button_item_selected(index: int) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	match index:
		0: # Disabled (default)
			world_environment.environment.set_ssr_enabled(false)
		1: # Low
			world_environment.environment.set_ssr_enabled(true)
			world_environment.environment.set_ssr_max_steps(8)
		2: # Medium
			world_environment.environment.set_ssr_enabled(true)
			world_environment.environment.set_ssr_max_steps(32)
		3: # High
			world_environment.environment.set_ssr_enabled(true)
			world_environment.environment.set_ssr_max_steps(56)


func _on_ssao_option_button_item_selected(index: int) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	match index:
		0: # Disabled (default)
			world_environment.environment.ssao_enabled = false
		1: # Very Low
			world_environment.environment.ssao_enabled = true
			RenderingServer.environment_set_ssao_quality(RenderingServer.ENV_SSAO_QUALITY_VERY_LOW, true, 0.5, 2, 50, 300)
		2: # Low
			world_environment.environment.ssao_enabled = true
			RenderingServer.environment_set_ssao_quality(RenderingServer.ENV_SSAO_QUALITY_VERY_LOW, true, 0.5, 2, 50, 300)
		3: # Medium
			world_environment.environment.ssao_enabled = true
			RenderingServer.environment_set_ssao_quality(RenderingServer.ENV_SSAO_QUALITY_MEDIUM, true, 0.5, 2, 50, 300)
		4: # High
			world_environment.environment.ssao_enabled = true
			RenderingServer.environment_set_ssao_quality(RenderingServer.ENV_SSAO_QUALITY_HIGH, true, 0.5, 2, 50, 300)


func _on_ssil_option_button_item_selected(index: int) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	match index:
		0: # Disabled (default)
			world_environment.environment.ssil_enabled = false
		1: # Very Low
			world_environment.environment.ssil_enabled = true
			RenderingServer.environment_set_ssil_quality(RenderingServer.ENV_SSIL_QUALITY_VERY_LOW, true, 0.5, 4, 50, 300)
		2: # Low
			world_environment.environment.ssil_enabled = true
			RenderingServer.environment_set_ssil_quality(RenderingServer.ENV_SSIL_QUALITY_LOW, true, 0.5, 4, 50, 300)
		3: # Medium
			world_environment.environment.ssil_enabled = true
			RenderingServer.environment_set_ssil_quality(RenderingServer.ENV_SSIL_QUALITY_MEDIUM, true, 0.5, 4, 50, 300)
		4: # High
			world_environment.environment.ssil_enabled = true
			RenderingServer.environment_set_ssil_quality(RenderingServer.ENV_SSIL_QUALITY_HIGH, true, 0.5, 4, 50, 300)


func _on_sdfgi_option_button_item_selected(index: int) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	match index:
		0: # Disabled (default)
			world_environment.environment.sdfgi_enabled = false
		1: # Low
			world_environment.environment.sdfgi_enabled = true
			RenderingServer.gi_set_use_half_resolution(true)
		2: # High
			world_environment.environment.sdfgi_enabled = true
			RenderingServer.gi_set_use_half_resolution(false)


func _on_glow_option_button_item_selected(index: int) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	match index:
		0: # Disabled (default)
			world_environment.environment.glow_enabled = false
		1: # Low
			world_environment.environment.glow_enabled = true
		2: # High
			world_environment.environment.glow_enabled = true


func _on_volumetric_fog_option_button_item_selected(index: int) -> void:
	match index:
		0: # Disabled (default)
			world_environment.environment.volumetric_fog_enabled = false
		1: # Low
			world_environment.environment.volumetric_fog_enabled = true
			RenderingServer.environment_set_volumetric_fog_filter_active(false)
		2: # High
			world_environment.environment.volumetric_fog_enabled = true
			RenderingServer.environment_set_volumetric_fog_filter_active(true)

# Adjustment settings.

func _on_brightness_slider_value_changed(value: float) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	# The slider value is clamped between 0.5 and 4.
	world_environment.environment.set_adjustment_brightness(value)


func _on_contrast_slider_value_changed(value: float) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	# The slider value is clamped between 0.5 and 4.
	world_environment.environment.set_adjustment_contrast(value)


func _on_saturation_slider_value_changed(value: float) -> void:
	# This is a setting that is attached to the environment.
	# If your game requires you to change the environment,
	# then be sure to run this function again to make the setting effective.
	# The slider value is clamped between 0.5 and 10.
	world_environment.environment.set_adjustment_saturation(value)

# Quality presets.

func _on_very_low_preset_pressed() -> void:
	%TAAOptionButton.selected = 0
	%MSAAOptionButton.selected = 0
	%FXAAOptionButton.selected = 0
	%ShadowSizeOptionButton.selected = 0
	%ShadowFilterOptionButton.selected = 0
	%MeshLODOptionButton.selected = 0
	%SDFGIOptionButton.selected = 0
	%GlowOptionButton.selected = 0
	%SSAOOptionButton.selected = 0
	%SSReflectionsOptionButton.selected = 0
	%SSILOptionButton.selected = 0
	%VolumetricFogOptionButton.selected = 0
	update_rendering_settings()

func _on_low_preset_pressed() -> void:
	%TAAOptionButton.selected = 0
	%MSAAOptionButton.selected = 0
	%FXAAOptionButton.selected = 1
	%ShadowSizeOptionButton.selected = 1
	%ShadowFilterOptionButton.selected = 1
	%MeshLODOptionButton.selected = 1
	%SDFGIOptionButton.selected = 0
	%GlowOptionButton.selected = 0
	%SSAOOptionButton.selected = 0
	%SSReflectionsOptionButton.selected = 0
	%SSILOptionButton.selected = 0
	%VolumetricFogOptionButton.selected = 0
	update_rendering_settings()


func _on_medium_preset_pressed() -> void:
	%TAAOptionButton.selected = 1
	%MSAAOptionButton.selected = 0
	%FXAAOptionButton.selected = 0
	%ShadowSizeOptionButton.selected = 2
	%ShadowFilterOptionButton.selected = 2
	%MeshLODOptionButton.selected = 1
	%SDFGIOptionButton.selected = 1
	%GlowOptionButton.selected = 1
	%SSAOOptionButton.selected = 1
	%SSReflectionsOptionButton.selected = 1
	%SSILOptionButton.selected = 0
	%VolumetricFogOptionButton.selected = 1
	update_rendering_settings()


func _on_high_preset_pressed() -> void:
	%TAAOptionButton.selected = 1
	%MSAAOptionButton.selected = 0
	%FXAAOptionButton.selected = 0
	%ShadowSizeOptionButton.selected = 3
	%ShadowFilterOptionButton.selected = 3
	%MeshLODOptionButton.selected = 2
	%SDFGIOptionButton.selected = 1
	%GlowOptionButton.selected = 2
	%SSAOOptionButton.selected = 2
	%SSReflectionsOptionButton.selected = 2
	%SSILOptionButton.selected = 2
	%VolumetricFogOptionButton.selected = 2
	update_rendering_settings()


func _on_ultra_preset_pressed() -> void:
	%TAAOptionButton.selected = 1
	%MSAAOptionButton.selected = 1
	%FXAAOptionButton.selected = 0
	%ShadowSizeOptionButton.selected = 4
	%ShadowFilterOptionButton.selected = 4
	%MeshLODOptionButton.selected = 3
	%SDFGIOptionButton.selected = 2
	%GlowOptionButton.selected = 2
	%SSAOOptionButton.selected = 3
	%SSReflectionsOptionButton.selected = 3
	%SSILOptionButton.selected = 3
	%VolumetricFogOptionButton.selected = 2
	update_rendering_settings()


func update_display_settings() -> void:
	# Simulate display options being manually selected to run their respective update code.
	# This is only run when loading the project.
	%UIScaleOptionButton.item_selected.emit(%UIScaleOptionButton.selected)
	%DisplayModeOptionButton.item_selected.emit(%DisplayModeOptionButton.selected)
	%VsyncOptionButton.item_selected.emit(%VsyncOptionButton.selected)
	%ResolutionScaleSlider.value_changed.emit(%ResolutionScaleSlider.value)
	%FilterOptionButton.item_selected.emit(%FilterOptionButton.selected)
	%FSRSharpnessSlider.value_changed.emit(%FSRSharpnessSlider.value)


func update_rendering_settings() -> void:
	# Simulate rendering options being manually selected to run their respective update code.
	# This is run when loading the project and applying a preset.
	%TAAOptionButton.item_selected.emit(%TAAOptionButton.selected)
	%MSAAOptionButton.item_selected.emit(%MSAAOptionButton.selected)
	%FXAAOptionButton.item_selected.emit(%FXAAOptionButton.selected)
	%ShadowSizeOptionButton.item_selected.emit(%ShadowSizeOptionButton.selected)
	%ShadowFilterOptionButton.item_selected.emit(%ShadowFilterOptionButton.selected)
	%MeshLODOptionButton.item_selected.emit(%MeshLODOptionButton.selected)
	%SDFGIOptionButton.item_selected.emit(%SDFGIOptionButton.selected)
	%GlowOptionButton.item_selected.emit(%GlowOptionButton.selected)
	%SSAOOptionButton.item_selected.emit(%SSAOOptionButton.selected)
	%SSReflectionsOptionButton.item_selected.emit(%SSReflectionsOptionButton.selected)
	%SSILOptionButton.item_selected.emit(%SSILOptionButton.selected)
	%VolumetricFogOptionButton.item_selected.emit(%VolumetricFogOptionButton.selected)


func _on_save_timer_timeout() -> void:
	print("Saving graphics settings to: %s" % ProjectSettings.globalize_path(CONFIG_FILE_PATH))
	config_file.save(CONFIG_FILE_PATH)
