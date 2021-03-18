--------------------[[ ... ]]-------------------------

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING
local resolvefilepath = GLOBAL.resolvefilepath
local TheInput = GLOBAL.TheInput
local ThePlayer = GLOBAL.ThePlayer
local Widget = require("widgets/widget")
local Image = require("widgets/image")
local Text = require("widgets/text")
local PlayerBadge = require("widgets/playerbadge")
local Badge = require("widgets/badge")
local IsServer = GLOBAL.TheNet:GetIsServer()

modimport("scripts/widgets/simple_status_display.lua")

PrefabFiles = { 




}


Assets = {



}


AddPlayerPostInit(function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst:DoTaskInTime( 0, function() 
	local controls = inst.HUD.controls
	local SimpleStatusDisplay = require "widgets/simple_status_display"
			controls.StatusBadge = controls:AddChild(SimpleStatusDisplay(inst))
			controls.StatusBadge:SetPosition(0, 0, 0)
		end)	
	end
end)


