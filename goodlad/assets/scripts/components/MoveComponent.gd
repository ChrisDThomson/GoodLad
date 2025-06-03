extends Node
class_name MoveComponent

@export var actor : CharacterBody2D
@export var speed : float = 600 
@export var velocity : Vector2
@export var direction : Vector2

@export var can_move := true
@export var hasGravity := true

const GRAVITY := 9000.0

func _physics_process(delta):
	
	velocity = actor.velocity;
	
	if can_move:
		velocity.x = (direction.x * speed)
	else:
		velocity.x = 0
	
	
	if hasGravity:
		velocity.y += delta * GRAVITY
	
	actor.velocity = velocity
	
	
	
	
	actor.move_and_slide()
	
func set_direction(vel: Vector2):
	direction = vel
	
func toggle_can_move(_can_move : bool):
	
	can_move = _can_move
	
	if can_move == false:
		actor.velocity = Vector2.ZERO
	
