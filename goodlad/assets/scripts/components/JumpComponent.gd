extends Node
class_name JumpComponent


@export var body : CharacterBody2D
@export var jump_height := 200.0

func _input(event):
	if event.is_action_pressed("ui_accept") and body.is_on_floor():
		body.velocity.y =- 9000 /5
