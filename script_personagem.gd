extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocidade = 200
var mov = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mov.x = 0
	mov.y = 0
	
	if (Input.is_action_pressed("ui_up")):
		mov.x = velocidade
	if (Input.is_action_pressed("ui_down")):
		mov.x = -velocidade
	
	if (Input.is_action_just_pressed("atirar")):
		var cena_disparo = preload("res://cena_disparo.tscn")
		var objeto_disparo = cena_disparo.instance()
		objeto_disparo.rotation = rotation
		objeto_disparo.global_position = $Position2D.global_position
		get_tree().root.add_child(objeto_disparo)
		
	look_at(get_global_mouse_position())
	
	mov = mov.rotated(rotation)	
	mov = move_and_slide(mov)
	
	
