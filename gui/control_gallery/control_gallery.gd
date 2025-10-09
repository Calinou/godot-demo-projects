extends Control

func _ready() -> void:
	%Button.grab_focus.call_deferred()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed(&"grab_focus"):
		%Button.grab_focus()
