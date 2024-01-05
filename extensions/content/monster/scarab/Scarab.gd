extends "res://content/monster/scarab/Scarab.gd"


func subProcess(delta):
	.subProcess(delta)
	set("monsterFollowerImmunity", phase == Phase.PROTECTED)
	
	
