extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autowrap_mode = get_line_count()
	print(autowrap_mode)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
