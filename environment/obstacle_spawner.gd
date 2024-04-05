extends Node2D

@onready var timer = $Timer

var Obstacle = preload("res://environment/obstacle.tscn")

func _ready():
	randomize()
	
func _on_timer_timeout():
	spawn_obstacle()
	
func spawn_obstacle():
	var obstacle = Obstacle.instantiate()
	add_child(obstacle)
	obstacle.position.y = randi()%400 + 150


func start():
	timer.start()
	
func stop():
	timer.stop()
