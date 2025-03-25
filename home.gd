extends Control



func _on_button_pressed() -> void:
	play_click()
	get_tree().change_scene_to_file("res://laoding_screen.tscn")


func _on_button_2_pressed() -> void:
	$settings.show()
	play_click()

func _on_backbutton_pressed() -> void:
	$settings.hide()
	play_click()
	
	
	
func play_click():
	$AudioStreamPlayer2D.play()
