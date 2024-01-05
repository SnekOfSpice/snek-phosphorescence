extends Node

const MYMODNAME_LOG = "Snek-Phosphorescence"
const MYMODNAME_MOD_DIR = "Snek-Phosphorescence/"

var dir = ""
var ext_dir = ""
var trans_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", MYMODNAME_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + MYMODNAME_MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"
	
	# Add extensions
	#ModLoaderMod.install_script_extension(ext_dir + "game/GameWorld.gd")
	ModLoaderMod.install_script_extension(ext_dir + "stages/level/LevelStage.gd")
	ModLoaderMod.install_script_extension(ext_dir + "content/gagdets/shield/ShieldBattery.gd")
	ModLoaderMod.install_script_extension(ext_dir + "content/gagdets/repellent/Repellent.gd")
	ModLoaderMod.install_script_extension(ext_dir + "content/gagdets/orchard/Orchard.gd")
	ModLoaderMod.install_script_extension(ext_dir + "content/monster/Monster.gd")
	ModLoaderMod.install_script_extension(ext_dir + "content/monster/scarab/Scarab.gd")
	ModLoaderMod.install_script_extension(ext_dir + "gui/buttons/Action.gd")
	
	ModLoaderMod.install_script_extension(ext_dir + "systems/options/KeyBindingsPanel.gd")
	ModLoaderMod.install_script_extension(ext_dir + "systems/options/Options.gd")
	
	ModLoaderMod.add_translation(trans_dir + "phosphorescence_text.en.translation")

func _ready():
	ModLoaderLog.info("Done", MYMODNAME_LOG)
	add_to_group("mod_init")
	
	InputMap.add_action("domeobel1sk_fire")
	InputMap.add_action("domeobel1sk_special")
	for action in InputMap.get_action_list("dome1_fire"):
		InputMap.action_add_event("domeobel1sk_fire", action)
		
	for action in InputMap.get_action_list("dome1_special"):
		InputMap.action_add_event("domeobel1sk_special", action)


func modInit():
	Data.registerDome("domeobel1sk")
	GameWorld.unlockElement("domeobel1sk")
	
	var pathToModYaml : String = ModLoaderMod.get_unpacked_dir() + MYMODNAME_MOD_DIR + "yaml/"
	Data.parseUpgradesYaml(pathToModYaml + "upgrades.yaml")
	




