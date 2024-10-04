class_name HealthCards extends Card

var health : int = 0 
@onready var healthLabel: Label = $Health

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	on_ready_set();
	healthLabel.text = str(health)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setup(healthParam : int ) : 
	health = healthParam
