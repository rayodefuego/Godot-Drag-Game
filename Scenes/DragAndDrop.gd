extends Sprite

var selected = false

onready var rest_points_manager = $RestPointsManager

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if(selected == true):
		rest_points_manager.actual_rest_point = null
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
	elif(rest_points_manager.actual_rest_point != null):
		var rest_point = rest_points_manager.actual_rest_point
		global_position = lerp(global_position, rest_point.global_position, 25 * delta)


func _on_Area2D_input_event(viewport, event, shape_idx):
	if (Input.is_action_just_pressed("click")):
		selected = true
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false
