extends "res://content/gadgets/repellent/Repellent.gd"


const MYMODNAME_LOG = "Snek-Phosphorescence"
const MYMODNAME_MOD_DIR = "Snek-Phosphorescence/"

func _ready():
	ModLoaderLog.info("Init", MYMODNAME_LOG)
	var dir = ModLoaderMod.get_unpacked_dir() + MYMODNAME_MOD_DIR
	var ovr_dir = dir + "overwrites/"
	
	$Sprite.frames.add_animation("filling_domeobel1sk")
	var tex_path = ovr_dir + "content/dome/domeobel1sk/dome/"
	for i in range(23):
		var path = str(tex_path, "phosphorescence_repellantfill", i, ".png")
		$Sprite.frames.add_frame("filling_domeobel1sk", load(path), i)
	
	match domeId:
		"domeobel1sk":
			$Filling.texture = preload("res://content/gadgets/repellent/dome1/fluid.png")
			$Filling.position = Vector2(0, - 13)
			$Spinner.position = Vector2(0, - 25)
			$Cloud.position = Vector2(0, - 25)
			$Overcharge.position = Vector2( - 1, - 12)
			position += Vector2(-5, -13)
	
	._ready()
	
