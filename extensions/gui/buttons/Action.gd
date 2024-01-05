extends "res://gui/buttons/Action.gd"


func updateGlyphs():
	match action:
		"dome_fire":
			match Level.loadout.domeId:
				"domeobel1sk":action = "dome3_fire"
		"dome_special":
			match Level.loadout.domeId:
				"domeobel1sk":action = "dome3_special"
	.updateGlyphs()
