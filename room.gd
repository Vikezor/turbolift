extends Area2D

var pressed = false
var mouseOffset = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed and not pressed:
			mouseOffset = get_local_mouse_position()
			pressed = true
		else:
			pressed = false
	elif event is InputEventMouseMotion and pressed:
		position = get_global_mouse_position() - mouseOffset
