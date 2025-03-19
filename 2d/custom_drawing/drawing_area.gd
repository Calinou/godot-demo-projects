extends Control

var method: Callable
var args: Array = []


func _draw() -> void:
	if method:
		printt(method, args)
		method.callv(args)
