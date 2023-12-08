extends Node

const MOD_DOME_PATH := "res://mods-unpacked/Snek-Phosphorescence/overwrites/content/dome/"
const GAME_DOME_PATH := "res://content/dome/"
const MOD_ICON_PATH := "res://mods-unpacked/Snek-Phosphorescence/overwrites/content/icons/"
const GAME_ICON_PATH := "res://content/icons/"
const MOD_PETS_PATH := "res://mods-unpacked/Snek-Phosphorescence/overwrites/content/pets/"
const GAME_PETS_PATH := "res://content/pets/"

var upgrade_icons := [
	"phosphorescence_ammokill.png",
	"phosphorescence_burst1.png",
	"phosphorescence_burst2.png",
	"phosphorescence_damage1.png",
	"phosphorescence_damage2.png",
	"phosphorescence_deathcandles.png",
	"phosphorescence_default1.png",
	"phosphorescence_default2.png",
	"phosphorescence_nukes1.png",
	"phosphorescence_nukes2.png",
	"phosphorescence_slowdamage.png",
	"phosphorescence_sniper1.png",
	"phosphorescence_sniper2.png",
	"phosphorescence_sniper3.png",
	"phosphorescence_sniperautoaim.png",
	"phosphorescence_speed1.png",
	"phosphorescence_speed2.png",
	"phosphorescence_spooling1.png",
	"phosphorescence_storedamage.png",
	"phosphorescence_stunarea.png",
]

var upgrade_icons_dome := [
	"phosphorescence_health1.png",
	"phosphorescence_adaptation.png",
	"phosphorescence_adaptationduration.png",
	"phosphorescence_ironrepair.png",
	"phosphorescence_maxrestore.png",
]
var icons := [
	"phosphorescence_loadout_domeobel1sk.png",
	"phosphorescence_domeobel1sk.png",
	"phosphorescence_obel1sk.png",
]

var vanilla_icons = [
	"healthmeter.png",
	"wavemeter.png",
	"resourcecounters.png",
	"wavecount.png"
]

var iconTextures := []

var petPositions := []

var otherOverwrites := []

func _init():
	var rt = "sdf"
	rt
	
	for icon in icons:
		var overwrite = load(MOD_ICON_PATH+icon)
		iconTextures.append(overwrite)
		overwrite.take_over_path(GAME_ICON_PATH+ icon.trim_prefix("phosphorescence_"))
		
	for icon in upgrade_icons:
		var overwrite = load(MOD_ICON_PATH+icon)
		iconTextures.append(overwrite)
		overwrite.take_over_path(GAME_ICON_PATH+"obel1sk"+icon.trim_prefix("phosphorescence_"))
		
	for icon in upgrade_icons_dome:
		var overwrite = load(MOD_ICON_PATH+"phosphorescence_domeobel1sk"+icon.trim_prefix("phosphorescence_"))
		iconTextures.append(overwrite)
		overwrite.take_over_path(GAME_ICON_PATH+"domeobel1sk"+icon.trim_prefix("phosphorescence_"))
	
	for icon in vanilla_icons:
		var overwrite = load(GAME_ICON_PATH+"dome"+icon)
		iconTextures.append(overwrite)
		overwrite.take_over_path(GAME_ICON_PATH+"domeobel1sk"+icon.trim_prefix("phosphorescence_"))
	
	for i in range(6):
		var id = i + 1
		var a = str(MOD_PETS_PATH, "pet", id, "/PositionsDomeobel1sk.tscn")
		var overwrite = load(a)
		petPositions.append(overwrite)
		overwrite.take_over_path(str(GAME_PETS_PATH, "pet", id, "/PositionsDomeobel1sk.tscn"))
	
	var ow1 = load("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/dome/domeobel1sk/Domeobel1sk.tscn")
	otherOverwrites.append(ow1)
	ow1.take_over_path(GAME_DOME_PATH + "domeobel1sk/Domeobel1sk.tscn")
	
	var ow2 = load("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/weapons/obelisk/Obelisk.tscn")
	otherOverwrites.append(ow2)
	ow2.take_over_path("res://content/weapons/obel1sk/Obel1sk.tscn")
	
	var primaryWeapon = "obel1sk"
	#var ow3 = load(str("res://content/weapons/" + primaryWeapon + "/" + startCaptialized(primaryWeapon) + ".tscn"))
	var ow3 = preload("res://mods-unpacked/Snek-Phosphorescence/overwrites/content/weapons/obelisk/Obelisk.tscn")
	ow3.take_over_path(str("res://content/weapons/" + primaryWeapon + "/" + primaryWeapon.capitalize() + ".tscn"))
	
	

# so what the fuck is this? well .capitalize() also screws with numbers (i.e. obel1sk becomes Obel 1 sk, not Obel1sk.)
# Data would have this function but by the time this gets _init() called, Data doesn't exist yet, so this is the copy-pasted function straight from Data

func startCaptialized(s:String):
	return s.substr(0, 1).to_upper() + s.substr(1, s.length() - 1)
