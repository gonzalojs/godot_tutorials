extends Control

var template_inv_slot = preload("res://characterpanel/scenes/UI/InventorySlot/Inv1.tscn")

onready var gridcontainer = $Background/M/V/ScrollContainer/GridContainer

func _ready() -> void:
	for i in PlayerData.inv_data.keys():
		var inv_slot_new = template_inv_slot.instance()
		if PlayerData.inv_data[i]["Item"] != null:
			var item_name = GameData.item_data[str(PlayerData.inv_data[i]["Item"])]["Name"]
			var icon_texture = load(direccion + item_name + '.png') #aqui van los assets de íconos
		gridcontainer.add_child(inv_slot_new, true)
