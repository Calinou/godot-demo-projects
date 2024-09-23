extends HBoxContainer

@export var custom_bar: GradientBars

func _ready():
	_on_color_picker_button_color_changed(Color(0.5, 0.5, 0.5, 1))

func _on_color_picker_button_color_changed(color):
	custom_bar.set_color(color)
