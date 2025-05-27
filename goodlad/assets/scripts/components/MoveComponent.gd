extends Node
class_name MoveComponent

@export var actor : CharacterBody2D
@export var speed : float = 100 
@export var velocity : Vector2

@export var can_move := true

func _process(delta: float) -> void:
	actor.velocity = velocity * speed * delta;

func _physics_process(delta):
	actor.move_and_slide()

func set_velocity(vel : Vector2):
	
	if can_move == false:
		actor.velocity = Vector2.ZERO
		return
		
	velocity = vel

func toggle_can_move(_can_move : bool):
	
	can_move = _can_move
	
	if can_move == false:
		actor.velocity = Vector2.ZERO
	
