extends Control

@onready var item_list: ItemList = $ItemList
@export var mazo : Node
var cartasArray : Array 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_cartas();
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_cartas():
	item_list.add_item("Carta")
