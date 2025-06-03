extends Node
class_name GravityComponent

@export var body : CharacterBody2D

const GRAVITY = 200.0


func _physics_process(delta: float) -> void:
	
	if !body:
		return
		
	body.velocity.y += delta * GRAVITY
