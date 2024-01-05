extends "res://content/gadgets/repellent/Repellent.gd"


const MYMODNAME_LOG = "Snek-Phosphorescence"
const MYMODNAME_MOD_DIR = "Snek-Phosphorescence/"

func _ready():
	ModLoaderLog.info("Init", MYMODNAME_LOG)
	var dir = ModLoaderMod.get_unpacked_dir() + MYMODNAME_MOD_DIR
	var ovr_dir = dir + "overwrites/"
	
	$Sprite.frames.add_animation("empty_domeobel1sk")
	$Sprite.frames.set_animation_speed("empty_domeobel1sk", 1)
	$Sprite.frames.set_animation_loop("empty_domeobel1sk", false)
	$Sprite.frames.add_frame("full_domeobel1sk", load("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/dome/domeobel1sk/dome/phosphorescence_repellantfill0.png"), 0)
	
	$Sprite.frames.add_animation("spray_domeobel1sk")
	$Sprite.frames.set_animation_speed("spray_domeobel1sk", 10)
	$Sprite.frames.set_animation_loop("spray_domeobel1sk", false)
	var tex_path = ovr_dir + "content/dome/domeobel1sk/dome/"
	for i in range(22, -1, -1):
		var path = str(tex_path, "phosphorescence_repellantfill", i, ".png")
		$Sprite.frames.add_frame("spray_domeobel1sk", load(path), i)
	
	$Sprite.frames.add_animation("full_domeobel1sk")
	$Sprite.frames.set_animation_speed("full_domeobel1sk", 1)
	$Sprite.frames.set_animation_loop("full_domeobel1sk", false)
	$Sprite.frames.add_frame("full_domeobel1sk", load("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/dome/domeobel1sk/dome/phosphorescence_repellantfill22.png"), 0)
	
	$Sprite.frames.add_animation("filling_domeobel1sk")
	$Sprite.frames.set_animation_speed("filling_domeobel1sk", 0)
	$Sprite.frames.set_animation_loop("filling_domeobel1sk", false)
	for i in range(23):
		var path = str(tex_path, "phosphorescence_repellantfill", i, ".png")
		$Sprite.frames.add_frame("filling_domeobel1sk", load(path), i)
	
	
	match domeId:
		"domeobel1sk":
			$Filling.texture = preload("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/gadgets/repellent/domeobel1sk/phosphorescence_fluid_domeobel1sk.png")
			$Filling.position = Vector2(0, - 13)
			$Spinner.position = Vector2(0, - 25)
			$Cloud.position = Vector2(0, - 25)
			$Overcharge.position = Vector2( - 1, - 12)
			position += Vector2(-5, -13)
	
	._ready()
	
	
