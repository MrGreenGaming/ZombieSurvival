--[[
English is the standard language that you should base your ID's off of.
If something isn't found in your language file then it will fall back to English.

Valid languages (from gmod's menu): bg cs da de el en en-PT es-ES et fi fr ga-IE he hr hu it ja ko lt nl no pl pt-BR pt-PT ru sk sv-SE th tr uk vi zh-CN zh-TW
You MUST use one of the above when using translate.AddLanguage
]]

--[[
RULES FOR TRANSLATORS!!
* Only translate formally. Do not translate with slang, improper grammar, spelling, etc.
* Do not translate proper things. For example, do not translate Zombie Survival (the name of the game). Do translate "survive the zombies".
  For names of weapons, you would translate only the "Handgun" part of 'Peashooter' Handgun (and the quotes if your language doesn't use ' as quotes)
  For names of classes, you would translate Bloated Zombie to whatever the word for Bloated and Zombie are. But you wouldn't translate Pukepus or Bonemesh.
* Comment out things that you have not yet translated in your language file.
  It will then fall back to this file instead of potentially using out of date wording in yours.
]]

translate.AddLanguage("en", "English")

-- Various gamemode stuff
LANGUAGE.classmenu_version = "Version"
LANGUAGE.classmenu_spawn   = "Spawn"
LANGUAGE.classmenu_startequip = "Starter equipment: "
LANGUAGE.classmenu_unlockedat = "[UNLOCKED AT RANK "
LANGUAGE.classmenu_forums = "Forums"
LANGUAGE.classmenu_bperks = "[BASE PERKS]"
LANGUAGE.classmenu_bonuperks = "[BONUS PERKS]"
LANGUAGE.classmenu_gcammount = "GreenCoins: "
LANGUAGE.classmenu_rank = "Rank"
LANGUAGE.classmenu_xpleft = "XP Left"

-- Human classes

LANGUAGE.classhuman_medic = "Medic"
LANGUAGE.classhuman_commando = "Commando"
LANGUAGE.classhuman_support = "Support"
LANGUAGE.classhuman_berserker = "Berserker"
LANGUAGE.classhuman_engineer = "Engineer"
LANGUAGE.classhuman_sharpshooter = "Sharphooter"
LANGUAGE.classhuman_pyro = "Pyro"

LANGUAGE.classhuman_medic_equip = "Medkit, P228, Stun Stick"
LANGUAGE.classhuman_commando_equip = "Grenades, Five SeveN, Knife"
LANGUAGE.classhuman_support_equip = "Mobile Supplies, Ammo Pack, USP, Hammer, Blow torch"
LANGUAGE.classhuman_berserker_equip = "Desert Eagle, Plank"
LANGUAGE.classhuman_engineer_equip = "Turret, C4, Pistol, Frying Pan"
LANGUAGE.classhuman_sharpshooter_equip = "Beretta, Knife"
LANGUAGE.classhuman_pyro_equip = "Alyx Gun, Knife"

LANGUAGE.classhuman_medic_base_perks = " +1% Pistol damage \n +10% Medi damage\n +10% damage Resistance\n +3% Movement speed\n +10% Medical ammo received\n +10 Medical ammo on spawn"
LANGUAGE.classhuman_commando_base_perks = " +1% Assault rifle damage \n See undead health\n +10% Clip size \n +10 Health "
LANGUAGE.classhuman_support_base_perks = " +1% Shotgun damage \n +1% SMG damage \n +10% Ammo received"
LANGUAGE.classhuman_berserker_base_perks = " [RMB] Leap while holding a melee weapon.\n Cannot be dazed when hit\n +10% melee damage \n +5% melee damage to health\n +5 Health on melee kill\n +10% Damage resistance \n -10% Gun Damage\n +2% Movement Speed\n +5 Health"
LANGUAGE.classhuman_engineer_base_perks = " +1% Pulse Weapon Damage\n +5% C4 Damage\n +1 Turret Damage\n +0.01 Turret recharge rate"
LANGUAGE.classhuman_sharpshooter_base_perks = " +5% Sniper damage \n +8% Headshot damage\n +10% Accuracy"
LANGUAGE.classhuman_pyro_base_perks = " 12% Chance to burn target\n 6 Initial burn damage\n 10 Initial scorch damage\n +10% damage to burning targets"

-- Perks 
-- Names
-- Global 
LANGUAGE.perk_ammo = "Ammo"
LANGUAGE.perk_sp = "SP"
LANGUAGE.perk_none = "None"

-- Medic
LANGUAGE.perk_stun = "Stun"
LANGUAGE.perk_supplies = "Medical Supplies"
LANGUAGE.perk_medpistol = "Medic Pistol"
LANGUAGE.perk_transfusion = "Transfusion"
LANGUAGE.perk_overheal = "Overheal"
LANGUAGE.perk_reward = "Healthy Reward"
LANGUAGE.perk_flow = "Flow"
LANGUAGE.perk_tanker = "Tanker"
LANGUAGE.perk_immunity = "Natural Immunity"
LANGUAGE.perk_battlemedic = "Battle Medic"

-- Commando
LANGUAGE.perk_defender = "Defender"
LANGUAGE.perk_grenadlier = "Grenadier"
LANGUAGE.perk_viper = "Viper"
LANGUAGE.perk_bloodammo = "Blood Ammo"
LANGUAGE.perk_enforcer = "Enforcer"
LANGUAGE.perk_kevlar = "Kevlar"
LANGUAGE.perk_health = "Health"
LANGUAGE.perk_leadmarket = "Lead Market"

-- Support
LANGUAGE.perk_boardpack = "Board Pack"
LANGUAGE.perk_shothun = "Shotgun"
LANGUAGE.perk_mp5 = "MP5"
LANGUAGE.perk_repairs = "Repairs"
LANGUAGE.perk_medical = "Medical Station"
LANGUAGE.perk_regeneration = "Regeneration"
LANGUAGE.perk_bulk = "Bulk"

-- Berserker
LANGUAGE.perk_slinger = "Slinger"
LANGUAGE.perk_oppressor = "Oppressor"
LANGUAGE.perk_breakthrough = "Breakthrough"
LANGUAGE.perk_barbed = "Barbed Weaponry"
LANGUAGE.perk_executioner = "Executioner"
LANGUAGE.perk_maniac = "Maniac"
LANGUAGE.perk_headhunter = "Head Hunter"
LANGUAGE.perk_battlecharge = "Battle Charge"
LANGUAGE.perk_bloodmoney = "Blood Money"
LANGUAGE.perk_vampire = "Vampire"
LANGUAGE.perk_enrage = "Enrage"

-- Engineer
LANGUAGE.perk_bonusturret = "Lockdown"
LANGUAGE.perk_combatturret = "Combat Turret"
LANGUAGE.perk_pulsepistol = "Pulse Pistol"
LANGUAGE.perk_multimine = "Multi Mine"
LANGUAGE.perk_quadsentry = "Quad Sentry"
LANGUAGE.perk_turret = "Turret Overload"
LANGUAGE.perk_combustion = "Combustion"
LANGUAGE.perk_darkenergy = "Dark Energy"
LANGUAGE.perk_revenue = "Turret Revenue"
LANGUAGE.perk_blastproof = "Blast Proof"

-- Sharpshooter
LANGUAGE.perk_python = "Python"
LANGUAGE.perk_marksman = "Marksman"
LANGUAGE.perk_fragments = "Fragments"
LANGUAGE.perk_double = "Double Calibre"
LANGUAGE.perk_friction = "Friction Burn"
LANGUAGE.perk_skillshot = "Skill Shot"
LANGUAGE.perk_agility = "Agility"

-- Pyro
LANGUAGE.perk_backfire = "Backfire"
LANGUAGE.perk_glock1 = "Glock 1"
LANGUAGE.perk_burn = "Burn"
LANGUAGE.perk_flare = "Flare Bounce"
LANGUAGE.perk_hotpoints = "Hot Points"
LANGUAGE.perk_immolate = "Immolate"

-- Description's
-- Global 
LANGUAGE.perk_ammo_description = "Receive ammunition from kills instead of ammo drops\nGives ammo to holding weapon only"
LANGUAGE.perk_sp_description = "+200% SP from kills\n0 SP from inflicting damage"

-- Medic
LANGUAGE.perk_stun_description = "Disorientates undead on impact with stunstick\n+6 stunstick damage"
LANGUAGE.perk_supplies_description = "+100 medical charge for medical equipment"
LANGUAGE.perk_medpistol_description = "[TIER 0]\nSpawn with the medic pistol"
LANGUAGE.perk_transfusion_description = "PRIMARY with medkit to extract healing power equivalent health from an undead\n +50% of healing power towards medical supplies."
LANGUAGE.perk_overheal_description = "Heal humans +10% of their maximum health"
LANGUAGE.perk_reward_description = "+40% SP from healing\n+15% healing power"
LANGUAGE.perk_flow_description = "-95% medkit healing cooldown\n -90% medkit healing power"
LANGUAGE.perk_tanker_description = "+50 damage resistance for 3 seconds when hit"
LANGUAGE.perk_immunity_description = "Immune to poison damage inflicted over time"
LANGUAGE.perk_battlemedic_description = "30% damage resistance from props\n+5% undead damage resistance"

-- Commando
LANGUAGE.perk_defender_description = "[TIER 0]\nSpawn with the Defender rifle"
LANGUAGE.perk_grenadleir_description = "+3 grenades on spawn"
LANGUAGE.perk_viper_description = "Shoot 2 bullets at a time with assault rifles\n \nConsumes 2 bullets\n-15% damage\n -20% accuracy"
LANGUAGE.perk_bloodammo_description = "Receive 33% of damage done as assault rifle ammo from kills"
LANGUAGE.perk_enforcer_description = "+25 clip size"
LANGUAGE.perk_kevlar_description = "+16% damage resistance from the undead"
LANGUAGE.perk_health_description = "+40 maximum health"
LANGUAGE.perk_leadmarket_description = "+50% SP from kills"

-- Support
LANGUAGE.perk_boardpack_description = "Spawn with a pack of boards"
LANGUAGE.perk_shotgun_description = "[TIER 0]\nSpawn with a shotgun"
LANGUAGE.perk_mp5_description = "[TIER 0]\nSpawn with an MP5"
LANGUAGE.perk_ammos_description = "+40% ammo received"
LANGUAGE.perk_repairs_description = "+3 hammer repair points\n+10 nails on spawn"
LANGUAGE.perk_medical_description = "Mobile supplies gives 4 health to users and +1 SP for the owner"
LANGUAGE.perk_regeneration_description = "Regain 1 health every 6 seconds"
LANGUAGE.perk_bulk_description = "+15% movement speed"
LANGUAGE.perk_healths_description = "+50 maximum health"

-- Berserker
LANGUAGE.perk_slinger_description = "[TIER 0]\nSpawn with a hook"
LANGUAGE.perk_oppressor_description = "[TIER 0]\nSpawn with a lead pipe"
LANGUAGE.perk_breakthrough_description = "Leaps do 40% of melee damage and knocks target backwards"
LANGUAGE.perk_barbed_description =  "20% of damage done is applied every 2 seconds for 3 seconds"
LANGUAGE.perk_executioner_description = "+30% melee damage to targets under or at 30% health"
LANGUAGE.perk_maniac_description = "+25% health from melee kills\n+50% melee swing"
LANGUAGE.perk_headhunter_description = "+20% melee damage on heads\n Daze target when struck on the head"
LANGUAGE.perk_battlecharge_description = "Bonus damage received when falling, maximum +500% damage\nIncreased leap power"
LANGUAGE.perk_bloodmoney_description = "+9 SP from melee kills"
LANGUAGE.perk_vampire_description = "+6% of melee damage goes towards health"
LANGUAGE.perk_enrage_description = "250 movement speed while under 50% health"

-- Engineer
LANGUAGE.perk_bonusturret_description = "+1 Turret received on spawn"
LANGUAGE.perk_combatturret_description = "Spawn with a combat turret\nReceives all turret bonuses"
LANGUAGE.perk_pulsepistol_description = "[TIER 0]\nSpawn with a pulse pistol"
LANGUAGE.perk_multimine_description = "+5 C4 on spawn"
LANGUAGE.perk_quadsentry_description = "+3 turret shots fired\n-200% turret accuracy\nTurret consumes +3 ammo"
LANGUAGE.perk_turret_description = "+40 turret stats"
LANGUAGE.perk_combustion_description = "Targets caught in the explosion are ignited"
LANGUAGE.perk_darkenergy_description = "+10% pulse damage"
LANGUAGE.perk_revenue_description = "+5 SP from turret kills"
LANGUAGE.perk_blastproof_description = "+80% resistance to explosives"

-- Sharpshooter
LANGUAGE.perk_python_description = "[TIER 0]\nSpawn with the Python"
LANGUAGE.perk_marksman_description = "+60% accuracy"
LANGUAGE.perk_fragments_description = "25% chance a sharpshooter shot will explode in fragments.\n5-8 fragments\n40% of weapon damage per fragment\n-50% accuracy on fragment shot"
LANGUAGE.perk_double_description = "+2 Musket clip size\n+2 Python clip size"
LANGUAGE.perk_friction_description = "25% chance to ignite target with a headshot"
LANGUAGE.perk_skillshot_description = "+5 SP for headshot kills"
LANGUAGE.perk_agility_description = "+10% movement speed\n+40 jump power"

-- Pyro
LANGUAGE.perk_backfire_description = "6 pyro ammunition back when target has been ignited"
LANGUAGE.perk_glock1_description = "[TIER 0]\nSpawn with the Glock 1"
LANGUAGE.perk_burn_description = "+5% scorch chance\n+10 scorch damage"
LANGUAGE.perk_flare_description = "+10 flare damage\n75% chance flare doesn't explode on impact"
LANGUAGE.perk_hotpoints_description = "+3 SP when a target is burnt"
LANGUAGE.perk_immolate_description = "Burn the target that damages you\n+10% damage resistance"

-- Chat spawn message

LANGUAGE.chat_spawn_medic = "You are a Medic"
LANGUAGE.chat_spawn_support = "You are a Support"
LANGUAGE.chat_spawn_engineer = "You are an Engineer"
LANGUAGE.chat_spawn_commando = "You are a Commando"
LANGUAGE.chat_spawn_berserker = "You are a Berserker"
LANGUAGE.chat_spawn_sharpshooter = "You are a Sharpshooter"
LANGUAGE.chat_spawn_piro = "You are a Pyro"

-- Class names

-- Class descriptions

-- Class control schemes

-- Place any custom stuff below here...

--[[ Anything that has an \n means a new line: Example
Hello there.\nWelcome to the server will output as:

Hello there. 
Welcome to the server

So remember that when translating]]--