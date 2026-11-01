@tool
extends AnimatableBody3D

@export var spin_speed: = 0.7

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	transform = transform.orthonormalized()
	rotate_y(spin_speed*delta)
	
