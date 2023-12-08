extends "res://content/gadgets/shield/ShieldBattery.gd"


func setStage(stage:int):
	stage = clamp(int(stage), 1, 3)
	_ready()
	.setStage(stage)

func _ready():
	
	match domeId:
		"domeobel1sk":
			$Background.texture = preload("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/gadgets/shield/phosphorescence_shieldpropertiesobel1sk_sheet.png")
			batteryTextureNamePrefix = "batterie-obel1sk-load"
			position += Vector2( - 4, 1)
	
	._ready()
