class_name Mazo extends Node
@export var carta_health = preload("res://scenes/Cartas/CartaHealth.tscn")
@export var carta_defensa = preload("res://scenes/Cartas/CartaDefensa.tscn")
@export var carta_ataque  = preload("res://scenes/Cartas/CartaAtaque.tscn")
@export var arquetipos: Node2D 

var hola = []

var mazo : Array = []


func _ready() -> void:
	hola = get_tree().get_nodes_in_group("hola")
	arquetipos.connect("arquetipo_seleccionado", _on_arquetipo_seleccionado)
	print(hola)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func crear_mazo(arquetipo): 
	var card
	if arquetipo == "GAUCHO":
		crear_mazo_gaucho();
		pass
	elif arquetipo == "CABRAL":
		crear_mazo_cabral()
		pass
		#card = carta_defensa.instantiate()
	elif arquetipo == "TAUMATURGO":
		pass
		#card = carta_health.instantiate()
	_ver_mazo(mazo)
	
func _ver_mazo(mazo):
	for cartas in mazo : 
		add_child(cartas)
		print(cartas)

func _on_arquetipo_seleccionado(arquetipo : String):
	crear_mazo(arquetipo)
	
func crear_mazo_gaucho() : 
	var card1 = crear_carta_ataque("Puñalada", "Puñalada hace daño base", 2, 10)
	var card2 = crear_carta_ataque("Golpe de puño", "Un golpe", 1, 5)
	var card3 = crear_carta_ataque("Golpe de puño", "Un golpe", 1, 5)
	var card4 = crear_carta_ataque("Golpe de puño", "Un golpe", 1, 5)
	var card5 = crear_carta_ataque("Golpe de puño", "Un golpe", 1, 5)
	var card6 = crear_carta_ataque("Golpe de puño", "Un golpe", 1, 5)
	var card7 = crear_carta_defense("Defensa", "aumenta la defensa", 1, 5)
	var card8 = crear_carta_cura("Posiòn", "Te cura", 5, 10)
	mazo.append(card1)
	mazo.append(card2)
	mazo.append(card3)
	mazo.append(card4)
	mazo.append(card5)
	mazo.append(card6)
	mazo.append(card7)
	mazo.append(card8)
	
	
	
	

func crear_mazo_cabral() : 
	pass

func crear_carta_ataque(nombre : String,  descripcion : String, costo : int, danio : int ) : 
	var card  = carta_ataque.instantiate()
	card.crear(nombre, descripcion, costo, 1)
	card.setup(danio)
	return card

func crear_carta_defense(nombre : String,  descripcion : String, costo : int, defensa : int ) : 
	var card  = carta_defensa.instantiate()
	card.crear(nombre, descripcion, costo, 1)
	card.setup(defensa)
	return card

func crear_carta_cura(nombre : String,  descripcion : String, costo : int, cura : int ) : 
	var card  = carta_health.instantiate()
	card.crear(nombre, descripcion, costo, 1)
	card.setup(cura)
	return card
