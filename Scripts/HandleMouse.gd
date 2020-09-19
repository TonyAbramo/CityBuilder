extends StaticBody

# Marker case
var marker
var positionCreatedBuilding = Vector3()
var compensateCenterGrid = 20 # Compenser la pos(0, 0) de la grille qui est au centre


# Récupération du marker
func _ready():
	marker = get_node("/root/Game/Marker")

# Si événement input
func _on_StaticBody_input_event(camera, event, click_position, click_normal, shape_idx):
	# Récupération pos x et y sur la grille
	var posX = round(click_position.x) + 0.5
	var posY = round(click_position.z) + 0.5
	# On place le marker sur la bonne case (survol souris)
	marker.transform.origin = Vector3(posX, 0, posY)

	# Calcul de la case cliquée
	var vec = Vector2(round(click_position.x) + compensateCenterGrid, round(click_position.z) + compensateCenterGrid)
	var posTab = vec.x + (vec.y * 40)
	print(posTab)

	# Détecter le clic gauche
	if Input.is_action_just_pressed("clic_gauche"):
		# Créer le batiment
		positionCreatedBuilding = Vector3(posX, 0.5, posY)
		CreateBuildingManager.CreateBuilding(positionCreatedBuilding)
