extends Node


var showNavDebug = false;
var DoNavDemo = false;

var sfxPlayer = preload("res://SoundEmitter.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func PlaySound(sfx,location,distance):
	if distance < 0:
		distance = 10;
	var scale = 1.0/(520.0/distance)
	var instance = sfxPlayer.instance();
	instance.distance = distance;
	instance.sfx = sfx;
	instance.targetSize = scale;
	instance.position = location
	get_tree().get_root().get_node("Control/ViewportContainer/Viewport/World").add_child(instance);

