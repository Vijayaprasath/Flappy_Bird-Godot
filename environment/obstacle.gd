extends Node2D

signal score;

const SPEED = 215

func _physics_process(delta):
	position.x += -SPEED * delta
	if global_position.x <= -200:
		queue_free()
		#global_position.x = 500


func _on_pipe_body_entered(body):
	if body is Player:
		#print("Hitted")
		if body.has_method("die"):
			body.die()


func _on_score_area_body_exited(body):
	if body is Player:
		#print("Player scored")
		emit_signal("score")
