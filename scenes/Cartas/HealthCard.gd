class_name HealthCard extends Card

var health : int = 0 
@onready var healthLabel: Label = $Health

# IMPORTANTE SI CREAMOS UNA CARTA DEL TIPO QUE SEA NECESITAMOS INICIALIZARLA YA QUE ESTO VA A SER QUE PODAMOS 
# Y USARLA COMO COMPONENET YA QUE ESTO NOS VA A PERMITIR PODER MODIFICAR LA CARTA COMO QUERAMOS, ESTO ES LO BUENO 
# DE USAR COMPOSICIÒN EN ESTE CASO AUNQUE TENGAMOS QUE CREAR VARIAS FUNCIONES COMO CREAR PARA QUE 
@export var card : Card = preload("res://Components/Card.tscn").instantiate();
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func crear(nombreCarta : String, descripcionCarta : String, costoCarta : int, tipoCarta : int) -> void:
	card.crearBase(nombreCarta, descripcionCarta, costoCarta, tipoCarta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	healthLabel.text = str(health)
	pass

func setup(healthParam : int ) : 
	health = healthParam
