extends "res://systems/data/Data.gd"



func domeScene(domeId:String):
	var s = "res://mods-unpacked/Snek-Phosphorescence/extensions/content/dome/" + domeId + "/" + startCaptialized(domeId) + ".tscn"
	if ResourceLoader.exists(s):
		return load(s)
	return load("res://content/dome/" + domeId + "/" + startCaptialized(domeId) + ".tscn")
	
