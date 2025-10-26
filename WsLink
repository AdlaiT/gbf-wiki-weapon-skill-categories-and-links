local p = {}
local getArgs = require('Module:Arguments').getArgs
local wsCheck = require('Module:WsCheck')

function p.wsSuffixLinks()
	local links = {
		['Abandon'] = 'Weapon Skills#Abandon',
		['Aegis'] = 'Weapon Skills#Aegis',
		['Apotheosis'] = 'Weapon Skills#Apotheosis',
		['Arts'] = 'Weapon Skills#Arts',
		['Ascendancy'] = 'Weapon Skills#Ascendancy',
		['Athos'] = 'Weapon Skills#Athos',
		['Auspice'] = 'Weapon Skills#Auspice',
		['Beast Essence'] = 'Weapon Skills#Beast Essence',
		['Betrayal'] = 'Weapon Skills#Betrayal',
		['Bladeshield'] = 'Weapon Skills#Bladeshield',
		['Blessing'] = 'Weapon Skills#Blessing',
		['Bloodrage'] = 'Weapon Skills#Bloodrage',
		['Bloodshed'] = 'Weapon Skills#Bloodshed',
		['Blow'] = 'Weapon Skills#Blow',
		['Celere'] = 'Weapon Skills#Celere',
		['Chain Force'] = 'Weapon Skills#Chain Force',
		['Charge'] = 'Weapon Skills#Charge',
		['Clarity'] = 'Weapon Skills#Clarity',
		['Convergence'] = 'Weapon Skills#Convergence',
		['Craft'] = 'Weapon Skills#Craft',
		['Crux'] = 'Weapon Skills#Crux',
		['Deathstrike'] = 'Weapon Skills#Deathstrike',
		['Demolishment'] = 'Weapon Skills#Demolishment',
		['Devastation'] = 'Weapon Skills#Devastation',
		['Dual-Edge'] = 'Weapon Skills#Dual-Edge',
		['Encouragement'] = 'Weapon Skills#Encouragement',
		['Enforcement'] = 'Weapon Skills#Enforcement',
		['Enmity'] = 'Weapon Skills#Enmity',
		['Essence'] = 'Weapon Skills#Essence',
		['Excelsior'] = 'Weapon Skills#Excelsior',
		['Exertion'] = 'Weapon Skills#Exertion',
		['Fandango'] = 'Weapon Skills#Fandango',
		['Fortified'] = 'Weapon Skills#Fortified',
		['Fortitude'] = 'Weapon Skills#Fortitude',
		['Frailty'] = 'Weapon Skills#Frailty',
		['Garrison'] = 'Weapon Skills#Garrison',
		['Glory'] = 'Weapon Skills#Glory',
		['Godblade'] = 'Weapon Skills#Godblade',
		['Godshield'] = 'Weapon Skills#Godshield',
		['Grace'] = 'Weapon Skills#Grace',
		['Grand Epic'] = 'Weapon Skills#Grand Epic',
		['Haunt'] = 'Weapon Skills#Haunt',
		['Healing'] = 'Weapon Skills#Healing',
		['Heed'] = 'Weapon Skills#Heed',
		['Heroism'] = 'Weapon Skills#Heroism',
		['Impalement'] = 'Weapon Skills#Impalement',
		['Initiation'] = 'Weapon Skills#Initiation',
		['Insignia'] = 'Weapon Skills#Insignia',
		['Majesty'] = 'Weapon Skills#Majesty',
		['Maneuver'] = 'Weapon Skills#Maneuver',
		['Marvel'] = 'Weapon Skills#Marvel',
		['Might'] = 'Weapon Skills#Might',
		['Mystery'] = 'Weapon Skills#Mystery',
		['Omega Exalto'] = 'Weapon Skills#Omega Exalto',
		['Onslaught'] = 'Weapon Skills#Onslaught',
		['Optimus Exalto'] = 'Weapon Skills#Optimus Exalto',
		['Pact'] = 'Weapon Skills#Pact',
		['Persistence'] = 'Weapon Skills#Persistence',
		['Porthos'] = 'Weapon Skills#Porthos',
		['Precocity'] = 'Weapon Skills#Precocity',
		['Preemptive Barrier'] = 'Weapon Skills#Preemptive Barrier',
		['Preemptive Blade'] = 'Weapon Skills#Preemptive Blade',
		['Preemptive Wall'] = 'Weapon Skills#Preemptive Wall',
		['Primacy'] = 'Weapon Skills#Primacy',
		['Progression'] = 'Weapon Skills#Progression',
		['Prowess'] = 'Weapon Skills#Prowess',
		['Quenching'] = 'Weapon Skills#Quenching',
		['Quintessence'] = 'Weapon Skills#Quintessence',
		['Refuge'] = 'Weapon Skills#Refuge',
		['Resolve'] = 'Weapon Skills#Resolve',
		['Resonator'] = 'Weapon Skills#Resonator',
		['Restraint'] = 'Weapon Skills#Restraint',
		['Sapience'] = 'Weapon Skills#Sapience',
		['Sentence'] = 'Weapon Skills#Sentence',
		['Sephira Maxi'] = 'Weapon Skills#Sephira Maxi',
		['Sephira Soul'] = 'Weapon Skills#Sephira Soul',
		['Sephira Tek'] = 'Weapon Skills#Sephira Tek',
		['Sovereign'] = 'Weapon Skills#Sovereign',
		['Spearhead'] = 'Weapon Skills#Spearhead',
		['Spectacle'] = 'Weapon Skills#Spectacle',
		['Stamina'] = 'Weapon Skills#Stamina',
		['Stratagem'] = 'Weapon Skills#Stratagem',
		['Strike:'] = 'Weapon Skills#Strike',
		['Striking Art:'] = 'Weapon Skills#Striking Art',
		['Supremacy'] = 'Weapon Skills#Supremacy',
		['Surge'] = 'Weapon Skills#Surge',
		['Swashbuckler'] = 'Weapon Skills#Swashbuckler',
		['Sweep'] = 'Weapon Skills#Sweep',
		['Tempering'] = 'Weapon Skills#Tempering',
		['Trituration'] = 'Weapon Skills#Trituration',
		['Trium'] = 'Weapon Skills#Trium',
		['Truce'] = 'Weapon Skills#Truce',
		['True Supremacy'] = 'Weapon Skills#True Supremacy',
		['Tyranny'] = 'Weapon Skills#Tyranny',
		['Valuables'] = 'Weapon Skills#Valuables',
		['Verity'] = 'Weapon Skills#Verity',
		['Verve'] = 'Weapon Skills#Verve',
		['Vitality'] = 'Weapon Skills#Vitality',
		['Vivification'] = 'Weapon Skills#Vivification',
		['Voltage'] = 'Weapon Skills#Voltage',
		['Wrath'] = 'Weapon Skills#Wrath',
		['Zenith Art:'] = 'Weapon Skills#Zenith Art',
		['Zenith Strike:'] = 'Weapon Skills#Zenith Strike',
	}
	return links
end

function p.formatWsName(name)
	local str_tbl = p.splitStrToTable(name)
	local suffixes = p.wsSuffixLinks()
	local prefix = str_tbl[1]
	
	-- check standard prefixes
	if wsCheck.isOptimus(prefix) or wsCheck.isOmega(prefix) or wsCheck.isUnboostable(prefix) or wsCheck.isOmegaUnboostable(prefix) or wsCheck.isXeno(prefix) or wsCheck.isAncestral(prefix) or wsCheck.isAstral(prefix) or wsCheck.isDestroyer(prefix) then
		for i,str in ipairs(str_tbl) do
			local suffix_link = suffixes[str]
			
			if suffix_link ~= nil then -- default check
				str_tbl[i] = '[[' .. suffix_link .. '|' .. str .. ']]'
			end
		end
		
	-- check weapon group
	elseif wsCheck.isWeaponGroup(prefix) then
		for i,str in ipairs(str_tbl) do
			local suffix_link = suffixes[str]

			if suffix_link ~= nil then -- default check
				str_tbl[i] = '[[' .. suffix_link .. '|' .. str .. ']]'
			end
		end
	-- check Sephira
	elseif prefix == 'Sephira' then 
		if wsCheck.isSephiraMaxi(str_tbl[2])  then
			str_tbl = {'[[' .. suffixes['Sephira Maxi'] .. '|' .. name .. ']]'}
		elseif wsCheck.isSephiraTek(str_tbl[2]) then
			str_tbl = {'[[' .. suffixes['Sephira Tek'] .. '|' .. name .. ']]'}
		elseif wsCheck.isSephiraSoul(str_tbl[2]) then
			str_tbl = {'[[' .. suffixes['Sephira Soul'] .. '|' .. name .. ']]'}
		end
	else
		-- check for multi-word suffixes and other cases
		-- should probably make into separate function
		if string.find(name, 'Omega Exalto') then
			str_tbl = {'[[' .. suffixes['Omega Exalto'] .. '|' .. name .. ']]'}
			
		elseif string.find(name, 'Optimus Exalto') then
			str_tbl = {'[[' .. suffixes['Optimus Exalto'] .. '|' .. name .. ']]'}
			
		elseif string.find(name, 'Chain Force') then
			str_tbl = {'[[' .. suffixes['Chain Force'] .. '|' .. name .. ']]'}
			
		-- elseif prefix == 'Strike:' then -- Check for Strike
		-- 	str_tbl = {'[[' .. suffixes['Strike:'] .. '|' .. name .. ']]'}
			
		elseif prefix == 'True' then -- Check for True Xeno
			if wsCheck.isXeno(str_tbl[2]) and str_tbl[3] == 'Supremacy' then
				str_tbl = {'[[' .. suffixes['True Supremacy'] .. '|' .. name .. ']]'}
			end

		elseif string.find(name, 'Zenith Art:') then
			str_tbl = {'[[' .. suffixes['Zenith Art:'] .. '|' .. 'Zenith Art:' .. ']] ' .. str_tbl[3]}

		elseif string.find(name, 'Zenith Strike:') then
			str_tbl = {'[[' .. suffixes['Zenith Strike:'] .. '|' .. 'Zenith Strike:' .. ']] ' .. str_tbl[3]}

		elseif string.find(name, 'Striking Art:') then
			str_tbl = {'[[' .. suffixes['Striking Art:'] .. '|' .. 'Striking Art:' .. ']] ' .. str_tbl[3]}

		elseif str_tbl[1] == 'Strike:' then
			str_tbl = {'[[' .. suffixes['Strike:'] .. '|' .. 'Strike:' .. ']] ' .. str_tbl[2]}
			
		end
	end
	
	return str_tbl
end

function p.addCategories(str_tbl, str)
		

    return str_tbl
end

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

function p._main(args)
	local name = args[1]
	if name == nil then
		return ''
	end
		
	local output = {}

	output = p.formatWsName(name)
	
	return table.concat(output, ' ')
end

function p.main(frame)
	local args = getArgs(frame)
	return p._main(args)
end

function p.test1()
	return mw.log(p._main({[1] = "Mistfall's Might"}))
end

function p.test2()
	local t = p.splitStrToTable("Mistfall's Might")
	mw.log(t[1])
	mw.log(t[2])
	return t
end

function p.test3()
	local t = p.formatWsName('Omega Exalto Aeros')
	mw.log(table.concat(t, ' '))
	return t
end

function p.test4()
	return mw.log(p._main({"Light's Dual-Edge"}))
end

function p.test5()
	return mw.log(p._main({"This is not a weapon skill name"}))
end

function p.test6()
	mw.log(p._main({"Dreadflame's Supremacy"}))
	return mw.log(p._main({"True Dreadflame's Supremacy"}))
end

function p.test7()
	return mw.log(p._main({'Bow Voltage II'}))
end

function p.test8()
	mw.log(p._main({'Sephira Maxi-Dark'}))
	mw.log(p._main({'Sephira Earth-Tek'}))
	return mw.log(p._main({'Sephira Windsoul'}))
end

return p
