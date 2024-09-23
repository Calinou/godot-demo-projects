extends HBoxContainer

@export var bars: Array[NodePath]
@export var max_value_label: Label3D
@export var colors: Array[Color]

func _ready():
	for i in range(colors.size()):
		var bar_path: NodePath = bars[i]
		var bar: GradientBars = get_node(bar_path) as GradientBars
		var col: Color = colors[i]
		bar.set_color(col)

	_on_steps_value_changed(6)

func _on_steps_value_changed(value):
	max_value_label.text = "%.1f" % value
	for bar_path in bars:
		var bar = get_node(bar_path)
		var shader_mat = bar.hdr_bar.material_override as ShaderMaterial
		shader_mat.set_shader_parameter("steps", value)
