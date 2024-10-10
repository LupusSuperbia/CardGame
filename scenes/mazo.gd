class_name Mazo extends Node2D

enum CARD_TYPE {ATTACK, DEFENSE, HEALTH}

@export var health_card = preload("res://scenes/Cartas/HealthCard.tscn")
@export var defense_card = preload("res://scenes/Cartas/DefenseCard.tscn")
@export var attack_card  = preload("res://scenes/Cartas/AttackCard.tscn")
@export var arquetipos: Node2D 
@onready var inventario_mazo: Control = $"../InventarioMazo"
@onready var h_box_container: HBoxContainer = $"../BattleUi/Control/HBoxContainer"

var hola = []
var deckArray : Array = []


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
		#card = defense_card.instantiate()
	elif arquetipo == "TAUMATURGO":
		pass
		#card = health_card.instantiate()
	_ver_mazoPrint(deckArray)
	_agregar_mano(deckArray)
func _ver_mazoPrint(deckArray):
	for i in range(deckArray.size()) : 
		inventario_mazo.item_list.add_item(deckArray[i].card.nombre)
func _agregar_mano(deckArray):
	for i in range(4):
		h_box_container.add_child(deckArray[i])
		var spacer = Control.new()
		spacer._set_anchor(spacer.anchor_right, 10.0)# Ajusta el tamaño según el espacio que desees

		# Agregar el espaciador al h_box_container
		h_box_container.add_child(spacer)
func _on_arquetipo_seleccionado(arquetipo : String):
	crear_mazo(arquetipo)
	
func crear_mazo_gaucho() : 
	var cartas_inicio : Array = [["Puñalada", "Puñalada hace daño base", 2, 10, CARD_TYPE.ATTACK], 
	["Golpe de puño", "Un golpe", 1, 5, CARD_TYPE.ATTACK], 
	["Golpe de puño", "Un golpe", 1, 5, CARD_TYPE.ATTACK],
	["Golpe de puño", "Un golpe", 1, 5, CARD_TYPE.ATTACK],
	["Golpe de puño", "Un golpe", 1, 5, CARD_TYPE.ATTACK], 
	["Golpe de puño", "Un golpe", 1, 5, CARD_TYPE.ATTACK], 
	["Defensa", "aumenta la defensa", 1, 5, CARD_TYPE.DEFENSE],
	["Posión", "Te cura", 5, 10, CARD_TYPE.HEALTH]
	]
	for card in cartas_inicio : 
		crear_carta(card[0], card[1], card[2], card[3], card[4])

	
	
# TODO : terminar el mazo de cabral y hacer el mazo de TAUMATURGO
func crear_mazo_cabral() : 
	pass


func crear_carta(card_name : String,  description : String, cost : int, value : int, type_card : CARD_TYPE ) :
	var card
	if type_card == CARD_TYPE.ATTACK :
		card  = attack_card.instantiate()
		card.crear(card_name, description, cost, 1)
		card.setup(value)
	elif type_card == CARD_TYPE.DEFENSE:
		card  = defense_card.instantiate()
		card.crear(card_name, description, cost, 1)
		card.setup(value)
	elif type_card == CARD_TYPE.HEALTH:
		card  = health_card.instantiate()
		card.crear(card_name, description, cost, 1)
		card.setup(value)
	deckArray.append(card)
