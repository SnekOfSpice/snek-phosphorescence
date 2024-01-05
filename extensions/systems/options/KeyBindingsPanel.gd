extends "res://systems/options/KeyBindingsPanel.gd"

func _ready():
	translations["domeobel1sk_fire"] = "level.station.battle.navbar.shoot"
	translations["domeobel1sk"] = "upgrades.domeobel1sk.title"
	#._ready()


func buildBindingUi():
	translations["domeobel1sk_fire"] = "level.station.battle.navbar.shoot"
	translations["domeobel1sk"] = "upgrades.domeobel1sk.title"
	.buildBindingUi()
