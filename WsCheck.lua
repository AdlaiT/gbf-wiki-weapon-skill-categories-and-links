local p = {}

local TableTools = require('Module:TableTools')

function p.isOmega(str)
	local prefixes = {"Ironflame's", "Oceansoul's", "Lifetree's", "Stormwyrm's", "Knightcode's", "Mistfall's"}
	return TableTools.inArray(prefixes, str)
end

function p.isOptimus(str)
	local prefixes = {"Fire's", "Hellfire's", "Inferno's", 
		"Water's", "Tsunami's", "Hoarfrost's", 
		"Earth's", "Mountain's", "Terra's", 
		"Wind's", "Whirlwind's", "Ventosus's", 
		"Light's", "Thunder's", "Zion's", 
		"Dark's", "Hatred's", "Oblivion's"}
	return TableTools.inArray(prefixes, str)
end

function p.isXeno(str)
	local prefixes = {"Dreadflame's", "Glacial", "Adjudicator's", "Horseman's", "Solaris's", "Phantom's"}
	return TableTools.inArray(prefixes, str)
end

function p.isAncestral(str)
	local prefixes = {"Firestorm's", "Flood's", "Landslide's", "Gale's", "Authority's", "Eclipse's"}
	return TableTools.inArray(prefixes, str)
end

function p.isAstral(str)
	local prefixes = {"Heliacal", "Verglas", "Evergreen", "Verdant", "Radiant", "Slaughterous"}
	return TableTools.inArray(prefixes, str)
end

function p.isBlessing(str)
	local prefixes = {"Michael's","Gabriel's", "Uriel's", "Raphael's", "Teachers'", "Debauchery's"}
	return TableTools.inArray(prefixes, str)
end

function p.isSephiraMaxi(str)
	local prefixes = {"Maxi-Fire", "Maxi-Water", "Maxi-Earth", "Maxi-Wind", "Maxi-Light", "Maxi-Dark"}
	return TableTools.inArray(prefixes, str)
end

function p.isSephiraTek(str)
	local prefixes = {"Fire-Tek", "Water-Tek", "Earth-Tek", "Wind-Tek", "Light-Tek", "Dark-Tek"}
	return TableTools.inArray(prefixes, str)
end

function p.isSephiraSoul(str)
	local prefixes = {"Firesoul", "Watersoul", "Earthsoul", "Windsoul", "Lightsoul", "Darksoul"}
	return TableTools.inArray(prefixes, str)
end

function p.isDestroyer(str)
	local prefixes = {"Destruction's", "Rebirth's"}
	return TableTools.inArray(prefixes, str)
end

function p.isUnboostable(str)
	local prefixes = {"Blaze's", "Snowfall's", "Ridge's", "Tranquility's", "Glimmer's", "Purgatory's", 
		"Scarlet", "Cobalt", "Amber", "Jade", "Golden", "Graphite",
		"Arsus", "Aquae", "Terrae", "Coeli", "Luminis", "Caliginis",
		"Heliacal", "Verglas", "Evergreen", "Verdant", "Radiant", "Slaughterous"
	}
	return TableTools.inArray(prefixes, str)
end

function p.isOmegaUnboostable(str)
	local prefixes = {"Iron's", "Ocean's", "Life's", "Storm's", "Knight's", "Mist's"}
	return TableTools.inArray(prefixes, str)
end

function p.isWeaponGroup(str)
	local prefixes = {"Sword", "Axe", "Spear", "Harp", "Bow", "Gun", "Dagger", "Gauntlet", "Staff", "Blade", 
					  "Sword's", "Axe's", "Spear's", "Harp's", "Bow's", "Gun's", "Dagger's", "Gauntlet's", "Staff's", "Blade's"}
	return TableTools.inArray(prefixes, str)
end

function p.isFireSkill(str)
	local prefixes = {"Ironflame's", "Fire's", "Hellfire's", "Inferno's", "Dreadflame's", "Maxi-Fire", "Fire-Tek", "Firesoul", "Blaze's", "Scarlet", "Scarlet", "Arsus", "Iron's", "Michael's", "Ardendi", "Firestorm's", "Heliacal"}
	
	return TableTools.inArray(prefixes, str)
end

function p.isWaterSkill(str)
	local prefixes = {"Oceansoul's", "Water's", "Tsunami's", "Hoarfrost's", "Glacial", "Maxi-Water", "Water-Tek", "Watersoul", "Snowfall's", "Cobalt", "Aquae", "Ocean's","Gabriel's", "Flood's", "Verglas"}
	
	return TableTools.inArray(prefixes, str)
end

function p.isEarthSkill(str)
	local prefixes = {"Lifetree's", "Earth's", "Mountain's", "Terra's", "Adjudicator's", "Maxi-Earth", "Earth-Tek", "Earthsoul", "Ridge's", "Amber", "Terrae", "Life's", "Uriel's", "Landslide's", "Evergreen"}
	
	return TableTools.inArray(prefixes, str)
end

function p.isWindSkill(str)
	local prefixes = {"Stormwyrm's", "Wind's", "Whirlwind's", "Ventosus's", "Horseman's", "Maxi-Wind", "Wind-Tek", "Windsoul", "Tranquility's", "Jade", "Coeli", "Storm's", "Raphael's", "Aeros", "Gale's", "Verdant"}
	
	return TableTools.inArray(prefixes, str)
end

function p.isLightSkill(str)
	local prefixes = {"Knightcode's", "Light's", "Thunder's", "Zion's", "Solaris's", "Maxi-Light",  "Light-Tek", "Lightsoul", "Glimmer's", "Golden", "Luminis", "Knight's", "Teachers'", "Authority's", "Radiant"}
	
	return TableTools.inArray(prefixes, str)
end

function p.isDarkSkill(str)
	local prefixes = {"Mistfall's", "Dark's", "Hatred's", "Oblivion's", "Phantom's", "Maxi-Dark", "Dark-Tek", "Darksoul", "Purgatory's", "Graphite", "Caliginis", "Mist's", "Debauchery's", "Eclipse's", "Slaughterous"}
	
	return TableTools.inArray(prefixes, str)
end

function p.isOptimusExalto(name)
	-- local full_names = {'Optimus Exalto Ardendi', 'Optimus Exalto Aquae', 'Optimus Exalto Terrae', 'Optimus Exalto Aeros', 'Optimus Exalto Luminis', 'Optimus Exalto Caliginis',}
	if string.find(name, "Optimus Exalto") then
		return true
	else
		return false
	end
end

function p.isOmegaExalto(name)
	-- local full_names = {'Omega Exalto Ardendi', 'Omega Exalto Aquae', 'Omega Exalto Terrae', 'Omega Exalto Aeros', 'Omega Exalto Luminis', 'Omega Exalto Caliginis'}

	if string.find(name, "Omega Exalto") then
		return true
	else
		return false
	end
end

return p
