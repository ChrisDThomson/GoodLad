extends Node
class_name MoveInputComponent

@export var move_component : MoveComponent

var input_vec : Vector2

func _process(delta):
	input_vec = Vector2(Input.get_axis("ui_left","ui_right"), Input.get_axis("ui_up","ui_down"))
	input_vec = input_vec.normalized()
	
	move_component.set_direction(input_vec)
	
