class_name AttackCard extends Node2D

@export var ataque_actual : int  
@onready var ataque: Label = $Ataque
@export var card : Card = preload("res://Components/Card.tscn").instantiate();

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#_set_ataque_actual()
	#ataque.set_text(str(self.ataque_actual))
# TODO : como hacemos para que una carta ataque

func crear(nombreCarta : String, descripcionCarta : String, costoCarta : int, tipoCarta : int) -> void:
	card.crearBase(nombreCarta, descripcionCarta, costoCarta, tipoCarta)

func _process(delta: float) -> void:
	ataque.text = str(ataque_actual)

func setup(danio : int ) : 
	ataque_actual = danio
	
