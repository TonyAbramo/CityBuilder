extends StaticBody

# Marker case
var marker
var pos = Vector3()

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
