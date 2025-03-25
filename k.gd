@tool
extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print("sprite local position ",$Sprite2D.position)
	print("sprite global position ", $Sprite2D.global_position)
	print("node2d position", position, "global position ", global_position)
	print("sprite position ", position+$Sprite2D.position)
