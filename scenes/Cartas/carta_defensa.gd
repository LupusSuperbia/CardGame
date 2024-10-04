class_name DefenseCard extends Card

@onready var defense : int = 0 
@onready var defenseLabel: Label = $Defense

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	on_ready_set()
	defenseLabel.text = str(defense)
	defenseLabel.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setup(defenseParam : int ) : 
	defense = defenseParam
