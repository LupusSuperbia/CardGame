class_name Mana extends Node



var mana_actual = 0;
var mana_maximo = 10;


# Called when the node enters the scene tree for the first time.
func init() -> void:
	self.mana_maximo = mana_maximo
	self.mana_actual = mana_maximo

func gastar_mana(cantidad) -> bool: 
		if mana_actual >= cantidad : 
			mana_actual -= cantidad;
			return true 
		else : 
			return false 
func recuperar_mana(cantidad):
	mana_actual += cantidad
	if mana_actual > mana_maximo:
		mana_actual = mana_maximo

func get_mana_actual():
	return mana_actual

func get_mana_maximo():
	return mana_maximo
