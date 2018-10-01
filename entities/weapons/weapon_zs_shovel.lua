AddCSLuaFile()

SWEP.Base = "weapon_zs_melee_base"

if CLIENT then
	SWEP.PrintName = "Shovel"
	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	killicon.AddFont( "weapon_zs_shovel", "HL2MPTypeDeath", "6", Color(255, 255, 255, 255 ) )
end

SWEP.VElements = {
	["shovel"] = { type = "Model", model = "models/props_junk/shovel01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.665, 1.911, -10.257), angle = Angle(-6.478, -180, 2.078), size = Vector(1.146, 1.146, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["shovel"] = { type = "Model", model = "models/props_junk/shovel01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.842, 0.824, -8.353), angle = Angle(-15.356, -180, -0.5), size = Vector(0.88, 0.88, 0.88), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {}

SWEP.Slot = 0

SWEP.HoldType = "melee2"

SWEP.DamageType = DMG_CLUB

SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.UseHands = true
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"

SWEP.MeleeDamage = 60
SWEP.MeleeRange = 70
SWEP.MeleeSize = 1.5
SWEP.HumanClass = "berserker"
SWEP.Primary.Delay = 1.25

SWEP.Weight = 2
SWEP.Type = "Melee"

SWEP.SwingRotation = Angle(0, -90, -60)
SWEP.SwingOffset = Vector(0, 30, -40)
SWEP.SwingTime = 0.8
SWEP.SwingHoldType = "melee"

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(65, 70))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/shovel/shovel_hit-0"..math.random(1, 4)..".wav")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end
