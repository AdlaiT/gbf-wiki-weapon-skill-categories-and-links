local p = {}
local getArgs = require('Module:Arguments').getArgs
local wsCheck = require('Module:WsCheck')

---@param name string
---@return table
function p.generateCategories(name)
	local categories = {}

	p.insertGeneralCategories(categories, name)

  return categories
end

---@param categories table
---@param str_tbl table
---@return table
function p.insertPreemptiveCategories(categories, str_tbl)
	local p_elements = {
		["Fire"] = "Fire", 
		["Frost"] = "Water", 
		["Ice"] = "Water",
		["Azure"] = "Water",
		["Rock"] = "Earth",
		["Terra"] = "Earth", 
		["Amber"] = "Earth",
		["Cloud"] = "Wind",
		["Gale"] = "Wind", 
		["Light"] = "Light", 
		["Silver"] = "Light",
		["Shadow"] = "Dark"
	}

	local preemptive_element = p_elements[str_tbl[2]] or ""
	local preemptive_type = str_tbl[3] or ""

	table.insert(categories, "[[Category:Preemptive Skill Weapons]]")
	table.insert(categories, "[[Category:Preemptive " .. preemptive_type .. " Skill Weapons]]")
	table.insert(categories, "[[Category:" .. preemptive_element .. " Preemptive " .. preemptive_type .. " Skill Weapons]]")
	table.insert(categories, "[[Category:" .. preemptive_element .. " Preemptive Skill Weapons]]")

	return categories
end

---@param categories table
---@param name string
---@return table
function p.insertGeneralCategories(categories, name)
	local str_tbl = p.splitStrToTable(name)
	local prefix = str_tbl[1]
	local element = p.getSkillElement(prefix)

	for _,str in ipairs(str_tbl) do
			
		if wsCheck.isOmega(str) then
			table.insert(categories, "[[Category:Omega Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Omega Skill Weapons]]")
			if str_tbl[2] then
				table.insert(categories, "[[Category:" .. str_tbl[2] .. " Skill Weapons]]")
				table.insert(categories, "[[Category:" .. element .. " " .. str_tbl[2] .. " Skill Weapons]]")
			end

		elseif wsCheck.isOptimus(str) then
			if str_tbl[1] ~= "Divine" then -- Avoid Dark Rapture Zero keys
				table.insert(categories, "[[Category:Normal Skill Weapons]]")
				table.insert(categories, "[[Category:" .. element .. " Normal Skill Weapons]]")
				if str_tbl[2] then
					table.insert(categories, "[[Category:" .. str_tbl[2] .. " Skill Weapons]]")
					table.insert(categories, "[[Category:" .. element .. " " .. str_tbl[2] .. " Skill Weapons]]")
				end
			end

		elseif (wsCheck.isUnboostable(str) or wsCheck.isOmegaUnboostable(str)) and str_tbl[1] ~= "Preemptive" then
			if str_tbl[2] then
				table.insert(categories, "[[Category:" .. str_tbl[2] .. " Skill Weapons]]")
				table.insert(categories, "[[Category:" .. element .. " " .. str_tbl[2] .. " Skill Weapons]]")
			end

		elseif wsCheck.isWeaponGroup(str) and str_tbl[1] ~= "Preemptive"  then
			if str_tbl[2] then
				local trimmed_str = string.gsub(str_tbl[1], "'s", "")
				local weapon_group = p.getWeaponGroupName(trimmed_str)
				-- mw.log(str_tbl[1])
				-- mw.log(trimmed_str)
				table.insert(categories, "[[Category:" .. str_tbl[2] .. " Skill Weapons]]")
				table.insert(categories, "[[Category:" .. weapon_group .. " " .. str_tbl[2] .. " Skill Weapons]]")
			end

		elseif wsCheck.isXeno(str) then
			local element = p.getSkillElement(str_tbl[2])
			if str_tbl[1] == "True" then
				table.insert(categories, "[[Category:True Supremacy Skill Weapons]]")
				table.insert(categories, "[[Category:" .. element .. " True Supremacy Skill Weapons]]")
			else
				table.insert(categories, "[[Category:Supremacy Skill Weapons]]")
				table.insert(categories, "[[Category:" .. element .. " Supremacy Skill Weapons]]")
			end

		elseif wsCheck.isSephiraMaxi(str) then
			local element = p.getSkillElement(str_tbl[2])
			table.insert(categories, "[[Category:Sephira Maxi Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Sephira Maxi Skill Weapons]]")

		elseif wsCheck.isSephiraTek(str) then
			local element = p.getSkillElement(str_tbl[2])
			table.insert(categories, "[[Category:Sephira Tek Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Sephira Tek Skill Weapons]]")

		elseif wsCheck.isSephiraSoul(str) then
			local element = p.getSkillElement(str_tbl[2])
			table.insert(categories, "[[Category:Sephira Soul Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Sephira Soul Skill Weapons]]")

		elseif wsCheck.isBlessing(str) then
			table.insert(categories, "[[Category:Blessing Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Blessing Skill Weapons]]")

		elseif wsCheck.isAstral(str) then
			table.insert(categories, "[[Category:Sovereign Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Sovereign Skill Weapons]]")
			
		elseif wsCheck.isDestroyer(prefix) then
			table.insert(categories, "[[Category:Godblade Skill Weapons]]")
			table.insert(categories, "[[Category:Godshield Skill Weapons]]")
			
		elseif str == "Blow" then
			local blow_element = {
				["Blood"] = "Fire",
				["Ocean"] = "Water",
				["Desert"] = "Earth",
				["Gale"] = "Wind",
				["Radiant"] = "Light",
				["Royal"] = "Dark"
			}
			if blow_element[str_tbl[1]] then
				table.insert(categories, "[[Category:Blow Skill Weapons]]")
				table.insert(categories, "[[Category:" .. blow_element[str_tbl[1]] .. " Blow Skill Weapons]]")
			end

		-- elseif str == "Strike:" then
		-- 	table.insert(categories, "[[Category:Strike Skill Weapons]]")
		-- 	table.insert(categories, "[[Category:" .. str_tbl[2] .. " Strike Skill Weapons]]")

		-- check Exalto skills
		elseif wsCheck.isOmegaExalto(name) then
			element = p.getSkillElement(str_tbl[3])
			table.insert(categories, "[[Category:Omega Exalto Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Omega Exalto Skill Weapons]]")

		elseif wsCheck.isOptimusExalto(name) then
			element = p.getSkillElement(str_tbl[3])
			table.insert(categories, "[[Category:Optimus Exalto Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " Optimus Exalto Skill Weapons]]")

		end
	end

	-- check for Preemptive skills
	if prefix == "Preemptive" then
		p.insertPreemptiveCategories(categories, str_tbl)

	elseif str_tbl[1] == 'Divine' and wsCheck.isOptimus(str_tbl[2]) then
		element = p.getSkillElement(str_tbl[2])
		if str_tbl[3] then
			table.insert(categories, "[[Category:" .. str_tbl[3] .. " Skill Weapons]]")
			table.insert(categories, "[[Category:" .. element .. " " .. str_tbl[3] .. " Skill Weapons]]")
		end

	elseif string.find(name, 'Zenith Art:') then
		element = str_tbl[3]
		table.insert(categories, "[[Category:Zenith Art Skill Weapons]]")
		table.insert(categories, "[[Category:" .. element .. " Zenith Art Skill Weapons]]")

	elseif string.find(name, 'Zenith Strike:') then
		element = str_tbl[3]
		table.insert(categories, "[[Category:Zenith Strike Skill Weapons]]")
		table.insert(categories, "[[Category:" .. element .. " Zenith Strike Skill Weapons]]")
		
	elseif string.find(name, 'Striking Art:') then
		element = str_tbl[3]
		table.insert(categories, "[[Category:Striking Art Skill Weapons]]")
		table.insert(categories, "[[Category:" .. element .. " Striking Art Skill Weapons]]")
	end

	return categories
end

---@param name string
---@param str string
---@return string
function p.getSkillElement(str)
	if wsCheck.isFireSkill(str) then
		return "Fire"
	elseif wsCheck.isWaterSkill(str) then
		return "Water"
	elseif wsCheck.isEarthSkill(str) then
		return "Earth"
	elseif wsCheck.isWindSkill(str) then
		return "Wind"
	elseif wsCheck.isLightSkill(str) then
		return "Light"
	elseif wsCheck.isDarkSkill(str) then
		return "Dark"
	end

	return ""
end

---@param weapon_group string
function p.getWeaponGroupName(weapon_group)
	local output = weapon_group
	if weapon_group == "Sword" then
		output = "Sabre"
	elseif weapon_group == "Gauntlet" then 
		output = "Melee"
	elseif weapon_group == "Blade" then
		output = "Katana"
	end

	return output
end

---@param str string
---@param sep? string
---@return string[]
function p.splitStrToTable(str, sep)
	local t	= {}
	
	if sep == nil then
		sep = "%s"
	end
	
	for str in string.gmatch(str, "([^"..sep.."]+)") do
		table.insert(t, str)
	end

	return t
end

-- main_
---@param args table
---@return table
function p._main(args)
	local name = args[1] or args["name"]
	if name == nil then
		return ''
	end
		
	local output = {}

	output = p.generateCategories(name)
	
	return table.concat(output, '')
end

---@param frame frame
function p.main(frame)
	local args = getArgs(frame)
	return p._main(args)
end

function p.test1()
	return mw.log(p._main({[1] = "Mistfall's Might"}))
end

function p.test2()
	mw.log(p._main({[1] = "Horseman's Supremacy"}))
	return mw.log(p._main({[1] = "True Horseman's Supremacy"}))
end

function p.test3()
	return mw.log(p._main({[1] = "Dark's Tyranny"}))
end

function p.test4()
	return mw.log(p._main({[1] = "Debauchery's Sway III"}))
end

function p.test5()
	mw.log(p._main({[1] = "Preemptive Fire Blade"}))
	mw.log(p._main({[1] = "Preemptive Amber Barrier"}))
	return mw.log(p._main({[1] = "Preemptive Rock Wall"}))
end

function p.test6()
	mw.log(p._main({[1] = "Omega Exalto Ardendi"}))
	mw.log(p._main({[1] = "Omega Exalto Aeros"}))
	mw.log(p._main({[1] = "Optimus Exalto Luminis"}))
	return mw.log(p._main({[1] = "Optimus Exalto Aeros"}))
end

function p.test7()
	return mw.log(p._main({[1] = "this is not a weapon skill name"}))
end

function p.test8()
	mw.log(p._main({[1] = "Sephira Windsoul"}))
	mw.log(p._main({[1] = "Sephira Maxi-Earth"}))
	return mw.log(p._main({[1] = "Sephira Water-Tek"}))
end

function p.test9()
	mw.log(p._main({[1] = "Royal Purple Blow"}))
	mw.log(p._main({[1] = "Ocean Blue Blow"}))
	return mw.log(p._main({[1] = "Gale Green Blow"}))
end

function p.test10()
	mw.log(p._main({[1] = "Blade's Wrath"}))
	mw.log(p._main({[1] = "Blade Wrath"}))
	return mw.log(p._main({[1] = "Gun Voltage"}))
end

function p.testall()
	p.test1()
	p.test2()
	p.test3()
	p.test4()
	p.test5()
	p.test6()
	p.test7()
	p.test8()
	p.test10()
	return p.test9()
end

return p
