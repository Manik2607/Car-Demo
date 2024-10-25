extends Node

@onready var car : BaseCar = %car
var init_position : Vector3
var init_transform : Transform3D

func init():
	init_transform = car.transform
	print("init transform %s " % init_transform)

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		
		# wtf is this, Godot???
		PhysicsServer3D.body_set_state(
			car.get_rid(),
			PhysicsServer3D.BODY_STATE_TRANSFORM,
			init_transform)
			
		car.linear_velocity = Vector3.ZERO
		car.angular_velocity = Vector3.ZERO
