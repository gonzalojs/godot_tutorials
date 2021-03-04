extends TextureRect

func get_drag_data(position: Vector2):
	var data = {}
	var drag_texture
	set_drag_preview(drag_texture)

	return data

func can_drop_data(position: Vector2, data) -> bool:
	return true
	return false


func drop_data(position: Vector2, data) -> void:
	pass
