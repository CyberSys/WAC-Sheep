if not wac then return end
if SERVER then AddCSLuaFile('shared.lua') end
ENT.Base 				= "wac_pl_base"
ENT.Type 				= "anim"
ENT.Category			= wac.aircraft.spawnCategoryC
ENT.PrintName			= "AH-57 Sheep"
ENT.Author				= "SentryGunMan"

ENT.Spawnable			= true
ENT.AdminSpawnable		= true

ENT.Model            = "models/drmatt/sheep/body.mdl"
ENT.RotorPhModel        = "models/props_junk/sawblade001a.mdl"

ENT.rotorPos        = Vector(0,0,74)
ENT.TopRotorDir        = 1.0
ENT.EngineForce        = 300
ENT.Weight            = 23120
ENT.SeatSwitcherPos	= Vector(0,0,0)
ENT.AngBrakeMul	= 0.02
ENT.SmokePos        = Vector(-330,21,85)
ENT.FirePos            = Vector(-330,21,85)

ENT.Wheels={
	{
		mdl="models/sentry/fa18bl.mdl",
		pos=Vector(-50,-64.5,10),
		friction=70,
		mass=1200,
	},
	{
		mdl="models/sentry/fa18bl.mdl",
		pos=Vector(-50,64.5,10),
		friction=70,
		mass=1200,
	},
	{
		mdl="models/sentry/fa18bl.mdl",
		pos=Vector(100,0,10),
		friction=70,
		mass=1200,
	},
}

ENT.Seats = {
	{
		pos=Vector(5.51,1.17,40),
		exit=Vector(170,100,30),
	},
}

ENT.Sounds = {
	Start="WAC/FA18/Start.wav",
	Blades="FA18.External",
	Engine="FA18.Internal",
	MissileAlert="",
	MissileShoot="",
	MinorAlarm="",
	LowHealth="",
	CrashAlarm="",
}

function ENT:DrawPilotHud() end
function ENT:DrawWeaponSelection() end