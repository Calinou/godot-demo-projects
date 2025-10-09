extends Button

func _pressed() -> void:
	push_error("`_pressed()` method on disabled button (this should not appear).")


func _on_pressed() -> void:
	push_error("`pressed` signal on disabled button (this should not appear).")


func _on_toggled(toggled_on: bool) -> void:
	push_error("`toggled` signal on disabled button (this should not appear):	  ", toggled_on)
