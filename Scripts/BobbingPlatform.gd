extends AnimatableBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var wait_time = randf_range(0,2.5)
	await get_tree().create_timer(wait_time)
	var tween = create_tween().set_loops().set_trans(Tween.TRANS_SINE)
	tween.tween_property(self, "position:y", 0.7, 2).set_delay(wait_time)
	tween.tween_property(self, "position:y", -0.4, 2)
