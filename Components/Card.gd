class_name Card extends Node
enum TipoCarta {COMÚN, RARO, EPICA};

@export var nombre : String = "" 
@export var descripcion : String = "" 
@export var rareza : TipoCarta;
@export var costo : int = 0 
@export var valorHabilidad : int 
@onready var valor : Label = $Valor
@onready var mana: Label = $MANA
@onready var descripcionLabel: Label = $Descripcion
@onready var nombreLabel: Label = $Nombre
#descripcionCarta : String, tipoCarta : TipoCarta, costoCarta : int
func crear(nombreCarta : String, descripcionCarta : String, costoCarta : int, tipoCarta : TipoCarta) -> void:
	nombre = nombreCarta
	descripcion = descripcionCarta
	rareza = tipoCarta
	costo = costoCarta

func _ready() -> void:
	on_ready_set();
	pass
	
func on_ready_set():
	if mana:
		mana.text = str(costo)
	if descripcionLabel:
		descripcionLabel.text = descripcion
	if nombreLabel:
		nombreLabel.text = nombre
	if valor : 
		valor.text = str(valor)

	
	
