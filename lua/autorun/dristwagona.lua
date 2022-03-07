if SERVER then
	include("firewagon/sv_firewagon.lua")
	AddCSLuaFile("firewagon/cl_firewagon.lua")
end

if CLIENT then
	include("firewagon/cl_firewagon.lua")
end