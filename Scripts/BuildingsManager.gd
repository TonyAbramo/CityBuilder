extends Node

# Liste des buildings
var building1 = "Buildings/Building.tscn"


func CreateBuilding(pos):
	# Building sélectionné
	var building_res = load(building1)
	var building = building_res.instance()
	building.set_translation(pos)
	get_tree().get_root().add_child(building)
