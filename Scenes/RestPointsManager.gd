extends Node2D

var rest_points = []
var actual_rest_point

func _ready():
	rest_points = get_tree().get_nodes_in_group("RestPoints")
	print(rest_points)

func _process(delta):
	for node in rest_points:
		if global_position.distance_to(node.global_position) < 50:
			actual_rest_point = node
			actual_rest_point.select()
	
