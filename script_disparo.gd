extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var velocidade = 3
var mov = Vector2.ZERO
func _process(delta):
	mov.y = 0
	mov.x = velocidade
	translate(mov)

