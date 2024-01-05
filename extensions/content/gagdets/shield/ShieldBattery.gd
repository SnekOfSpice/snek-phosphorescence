extends "res://content/gadgets/shield/ShieldBattery.gd"


func setStage(stage:int):
	stage = clamp(int(stage), 1, 3)
	_ready()
	.setStage(stage)
	match domeId:
		"domeobel1sk":
			match stage:
				1:
					$Background / Filling.position = Vector2( - 5, 1)
					position = Vector2(-4, -8)
				2:
					$Background / Filling.position = Vector2( - 6, -8)
					position = Vector2(-4, -7)
				3:
					$Background / Filling.position = Vector2( - 5, -14)
					position = Vector2(-4, -6)

func _ready():
	
	match domeId:
		"domeobel1sk":
			$Background.texture = preload("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/gadgets/shield/phosphorescence_batterie_obel1sk_sheet.png")
			batteryTextureNamePrefix = "phosphorescence_batterie-obel1sk-load"
	
