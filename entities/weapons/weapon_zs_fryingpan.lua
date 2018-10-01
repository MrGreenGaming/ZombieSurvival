-- © Limetric Studios ( www.limetricstudios.com ) -- All rights reserved.
-- See LICENSE.txt for license information

AddCSLuaFile()

-- Melee base
SWEP.Base = "weapon_zs_melee_base"

if CLIENT then
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false

	killicon.AddFont( "weapon_zs_fryingpan", "ZSKillicons", "b", Color(255, 255, 255, 255 ) ) 
end

SWEP.VElements = {
	["pan"] = { type = "Model", model = "models/props_c17/metalPot002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.19, 1.572, -7.736), angle = Angle(-95.058, -180, 0), size = Vector(0.901, 0.901, 0.901), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["pan"] = { type = "Model", model = "models/props_c17/metalPot002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.43, 1.74, -10.311), angle = Angle(-85.32, 55.214, -5.046), size = Vector(1.011, 1.011, 1.011), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

-- Model paths
SWEP.Author = "Deluvas"
SWEP.ViewModel = Model ( "models/weapons/c_crowbar.mdl" )
SWEP.UseHands = true
SWEP.WorldModel = Model ( "models/weapons/w_knife_t.mdl" )

-- Name
SWEP.PrintName = "Frying Pan"
SWEP.Type = "Melee"
SWEP.Slot = 0
SWEP.Weight = 1

SWEP.Primary.Delay = 1
SWEP.DamageType = DMG_CLUB
SWEP.MeleeDamage = 40
SWEP.MeleeRange = 54
SWEP.MeleeSize = 1.0

SWEP.SwingRotation = Angle(30, -30, -30)
SWEP.SwingTime = 0.65
SWEP.SwingHoldType = "grenade"

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/frying_pan/pan_hit-0"..math.random(1,4)..".wav")
end
