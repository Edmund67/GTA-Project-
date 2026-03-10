extends Area2D

@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _on_body_entered(body):
	print("You Died Cuh!")
	Engine.time_scale = 0.5
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_timer_timeout():
	Engine.time_scale = 0.5
	get_tree().reload_current_scene()
	
	
