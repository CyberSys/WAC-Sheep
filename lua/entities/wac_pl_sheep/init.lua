include("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) then return end
	local ent=ents.Create(ClassName)
	ent:SetPos(tr.HitPos+tr.HitNormal*10)
	ent:Spawn()
	ent:Activate()
	ent:SetSkin(math.random(0,2))
	ent.Owner=ply	
	self.Sounds=table.Copy(sndt)
	for k,v in pairs(ent.wheels) do
		v:SetRenderMode(RENDERMODE_TRANSALPHA)
		//v:SetColor(Color(255,255,255,0))
	end
	return ent
end

ENT.Aerodynamics = {
	Rotation = {
		Front = Vector(0, -0.075, 0),
		Right = Vector(0, 0, 70), -- Rotate towards flying direction
		Top = Vector(0, 0, 0)
	},
	Lift = {
		Front = Vector(0, 0, 13.25), -- Go up when flying forward
		Right = Vector(0, 0, 0),
		Top = Vector(0, 0, -0.25)
	},
	Rail = Vector(1, 5, 20)
}