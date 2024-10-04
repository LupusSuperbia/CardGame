class_name AttackCard extends Card

var ataque_actual : int  
@onready var ataque: Label = $Ataque

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	on_ready_set();
	ataque.text = str(ataque_actual)
	print(ataque_actual)
	
	pass
	#_set_ataque_actual()
	#ataque.set_text(str(self.ataque_actual))
# TODO : como hacemos para que una carta ataque



func setup(danio : int ) : 
	ataque_actual = danio
	
