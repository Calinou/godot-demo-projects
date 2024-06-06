extends Node3D


func _ready() -> void:
	# Adjust visuals to better correspond to Forward+/Mobile when using
	# the Compatibility rendering method.
	if Engine.get_current_rendering_method() == "gl_compatibility":
		$DirectionalLight3D.light_energy *= 0.25
		RenderingServer.directional_soft_shadow_filter_set_quality(RenderingServer.SHADOW_QUALITY_SOFT_HIGH)
