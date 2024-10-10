class_name DefenseCard extends Card

@onready var defense : int = 0 
@onready var defenseLabel: Label = $Defense
@export var card : Card = preload("res://Components/Card.tscn").instantiate();
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

func crear(nombreCarta : String, descripcionCarta : String, costoCarta : int, tipoCarta : int) -> void:
	card.crearBase(nombreCarta, descripcionCarta, costoCarta, tipoCarta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	defenseLabel.text = str(defense)
	pass

func setup(defenseParam : int ) : 
	defense = defenseParam
