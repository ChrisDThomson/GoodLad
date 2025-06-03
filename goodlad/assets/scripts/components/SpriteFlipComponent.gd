extends Node
class_name SpriteFlipComponent

@export var actor : CharacterBody2D
@export var sprite : Sprite2D

var dir : Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	
	dir = actor.velocity.normalized()
	
	if dir != Vector2.ZERO:
		
		var x : int = sign(dir.x)
		
		var willFlipH = true if x == 1 else false
		sprite.flip_h = willFlipH
		
		
	
	
