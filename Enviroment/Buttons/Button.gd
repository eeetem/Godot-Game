extends Node2D

class_name button
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _process(delta):#a tad bit inneficient, should me perhaps moved to player instead
	if Input.is_action_just_pressed("use") and position.distance_to(Player.position) < 25:
		_pressed();

func _pressed():
	print("ayo");
