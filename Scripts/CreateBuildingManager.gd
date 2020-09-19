extends Node

# Liste des buildings
var building1 = "Buildings/Building.tscn"
var buildingInfo = "Buildings/BuildingInfo.tscn"

# Tbaleau représentant les 1600 cases de la grille de jeu
var gridData = [] # 40*40

func _ready():
	for i in range (1600):
		gridData.append(0) # Créé un tableau de 1600 0, case vide

func CreateBuilding(pos):
	# Building sélectionné
	var building_res = load(buildingInfo)
	var building = building_res.instance()
	building.set_translation(pos)
	get_tree().get_root().add_child(building)
