extends Control

@onready var methods: ItemList = %Methods
@onready var drawing_area: Control = %DrawingArea
@onready var options: VFlowContainer = %Options

var draw_methods: Dictionary[String, Dictionary] = {}

var methods_to_list: Array[String] = [
	"draw_circle",
	"draw_line",
	"draw_rect",
]

func _ready() -> void:
	for method in get_method_list():
		if method.name in methods_to_list:
			draw_methods[method.name] = { args = method.args }
			methods.add_item(method.name)


func _on_methods_item_selected(index: int) -> void:
	var method_name: String = methods.get_item_text(index)
	var draw_method: Dictionary = draw_methods[method_name]

	# Remove controls for existing options.
	for option in options.get_children():
		option.queue_free()
	
	# Add controls for new options.
	for argument: Dictionary in draw_method.args:
		#var separator: VSeparator = VSeparator.new()
		#options.add_child(separator)
		match argument.type:
			TYPE_BOOL:
				var check_button: CheckButton = CheckButton.new()
				check_button.text = argument.name.capitalize()
				options.add_child(check_button)
			TYPE_FLOAT, TYPE_INT:
				var label: Label = Label.new()
				label.text = argument.name.capitalize() + ":"
				options.add_child(label)
				var spin_box: SpinBox = SpinBox.new()
				spin_box.min_value = 0
				spin_box.max_value = 1000
				spin_box.step = 0.5 if TYPE_FLOAT else 1.0
				spin_box.value_changed.connect(update_drawing_area.unbind(1))
				options.add_child(spin_box)
			TYPE_VECTOR2, TYPE_VECTOR2I:
				var label: Label = Label.new()
				label.text = argument.name.capitalize() + ":"
				options.add_child(label)
				var spin_box_x: SpinBox = SpinBox.new()
				spin_box_x.min_value = 0
				spin_box_x.max_value = 1000
				spin_box_x.step = 0.5 if TYPE_FLOAT else 1.0
				spin_box_x.suffix = "x"
				spin_box_x.modulate = Color(1.0, 0.75, 0.75)
				spin_box_x.value_changed.connect(update_drawing_area.unbind(1))
				options.add_child(spin_box_x)
				var spin_box_y: SpinBox = SpinBox.new()
				spin_box_y.min_value = 0
				spin_box_y.max_value = 1000
				spin_box_y.step = 0.01 if TYPE_FLOAT else 1.0
				spin_box_y.suffix = "y"
				spin_box_y.modulate = Color(0.75, 1.0, 0.75)
				spin_box_y.value_changed.connect(update_drawing_area.unbind(1))
				options.add_child(spin_box_y)
			TYPE_COLOR:
				var label: Label = Label.new()
				label.text = argument.name.capitalize() + ":"
				options.add_child(label)
				var color_picker_button: ColorPickerButton = ColorPickerButton.new()
				color_picker_button.custom_minimum_size = Vector2(60, 0)
				color_picker_button.size_flags_vertical = Control.SIZE_EXPAND_FILL
				color_picker_button.color_changed.connect(update_drawing_area.unbind(1))
				options.add_child(color_picker_button)

	update_drawing_area()


func update_drawing_area() -> void:
	# Update parameters that are sent to the drawing area.
	print("Updating drawing area")
	drawing_area.method = Callable.create(CanvasItem, methods.get_item_text(methods.get_selected_items()[0]))
	drawing_area.args = []
	for node in options.get_children():
		# FIXME: Change to take node type into account (and find a way to distinguish and merge vector SpinBoxes together).
		for property in ["color", "value", "button_pressed"]:
			if node.get(property) != null:
				drawing_area.args.push_back(node.get(property))

	drawing_area.queue_redraw()
