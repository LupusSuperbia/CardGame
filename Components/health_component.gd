class_name HealthComponent extends Node


var vida_actual = 0;
var vida_maxima = 100;


# Called when the node enters the scene tree for the first time.
func init(vida_maximo) -> void:
	self.vida_actual = vida_maximo
	self.vida_maxima = vida_maximo


func on_damage_adquired(cantidad) -> bool: 
		if vida_actual >= cantidad : 
			vida_actual -= cantidad;
			return true 
		else : 
			return false 
func recuperar_vida(cantidad):
	vida_actual += cantidad
	if vida_actual > vida_maxima:
		vida_actual = vida_maxima

func get_vida_actual():
	return vida_actual

func get_vida_maxima():
	return vida_maxima
