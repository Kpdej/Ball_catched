extends Control


var api= "https://fastly.picsum.photos/id/970/200/300.jpg?hmac=8mPwdPFtAKcn0NQrEIClW3IlOWsKgskAikm_8YQj-qM"
var http_request:HTTPRequest 


func _ready():
	http_request = $HTTPRequest
	http_request.request(api)
	OS.shell_open("https://Google.com")


func _on_http_request_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	if response_code ==200:
		var img = Image.new()
		var error = img.load_jpg_from_buffer(body)
		if error != OK:
			push_error("img firmate dos not suppoted..", str(error))
		
		var texture_img= ImageTexture.create_from_image(img)
		$TextureRect.texture= texture_img
	
	
