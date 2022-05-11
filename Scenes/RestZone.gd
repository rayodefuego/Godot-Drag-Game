extends Position2D

export var snap_radio: float = 20

func _draw():
	draw_circle(Vector2.ZERO, snap_radio, Color.aqua)

func select():
	modulate = Color.blue

func deselect():
	modulate = Color.aqua

func _ready():
	pass # Replace with function body.

