extends Node2D
signal arquetipo_seleccionado(arquetipo)

var Arquetipos = {"GAUCHO" : {
	"descripcion" : "",
	"cartas" : "cartas",
}, "CABRAL" : {
	"descripcion" : "",
	"cartas" : "cartas",
}, "TAUMATURGO" : {
	"descripcion" : "",
	"cartas" : "cartas",
}}

var arquetipo 
@onready var item_list: ItemList = $ItemList

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	item_list.add_item("GAUCHO");
	item_list.add_item("CABRAL");
	item_list.add_item("TAUMATURGO");
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func elegir_arquetipo(seleccionado : String)->void:
	if Arquetipos.has(seleccionado):
		arquetipo = seleccionado
		emit_signal("arquetipo_seleccionado", arquetipo)
		pass



func _on_item_list_item_clicked(index: int, at_position: Vector2, mouse_button_index: int) -> void:
	var seleccionado = item_list.get_item_text(index)
	elegir_arquetipo(seleccionado)
