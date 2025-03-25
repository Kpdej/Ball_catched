extends Area2D

var score
var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect().size
	

func _process(delta: float) -> void:
	global_position.x = clamp(global_position.x, 0, screen_size.x)

func _on_body_entered(body: Node2D) -> void:
	#print("bodys", body.name)
	body.queue_free()
	get_parent().increase_score()
	$ccatch_sound.play()
	
	
	
func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		if event.index == 0:
			var touch_to_move = event.position
			global_position.x = touch_to_move.x
		
	elif  event is InputEventScreenDrag:
		if event.index ==0:
			var posi = event.position
			if event.relative.x >0:
				global_position.x = posi.x
			elif event.relative.x <0:
				global_position.x = posi.x
		else:
			position = Vector2(608,2079)
	
