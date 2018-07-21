-- ###################################
--
--        C   O   N   F   I   G
--
-- ###################################
--ORIGINAL by Deli > V2 version by C.H.A.O.S
--edited by Santa(gegen)



-- change the color (eg. r=red, p=purple)
	COLOR = 'r'


-- turn on and off (true, false)
	CARHUD = true


-- Move the entire UI
local UI = {
	x =  0.000 ,	-- Base Screen Coords 	+ 	 x
	y = -0.001 ,	-- Base Screen Coords 	+ 	-y
}



-- ###################################
--
--             C   O   D   E
--
-- ###################################



Citizen.CreateThread(function()
	while true do Citizen.Wait(1)


		local MyPed = GetPlayerPed(-1)

		if(IsPedInAnyVehicle(MyPed, false))then

			local MyPedVeh = GetVehiclePedIsIn(GetPlayerPed(-1),false)
			local PlateVeh = GetVehicleNumberPlateText(MyPedVeh)
			local VehStopped = IsVehicleStopped(MyPedVeh)
			local Gear = GetVehicleCurrentGear(MyPedVeh)
            local RPM = GetVehicleCurrentRpm(MyPedVeh)
			local Speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 2.236936

			if RPM > 0.99 then
				RPM = RPM*100
				RPM = RPM+math.random(-2,2)
				RPM = RPM/100
			end
			if carspeed == nil and cruisecolor == true then
				carspeed = Speed
			end

			if CARHUD then
				if VehStopped and (Speed == 0) then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ P", 255, 255, 255, 255)
				elseif Gear < 1 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ R", 255, 255, 255, 255)
				elseif Gear == 1 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 1", 255, 255, 255, 255)
				elseif Gear == 2 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 2", 255, 255, 255, 255)
				elseif Gear == 3 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 3", 255, 255, 255, 255)
				elseif Gear == 4 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 4", 255, 255, 255, 255)
				elseif Gear == 5 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 5", 255, 255, 255, 255)
				elseif Gear == 6 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 6", 255, 255, 255, 255)
				elseif Gear == 7 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 7", 255, 255, 255, 255)
				elseif Gear == 8 then
					drawTxt(UI.x + 0.675, UI.y + 1.39, 1.0,1.0,0.45, "~"..COLOR.."~PLATE~w~ ".. PlateVeh .." | ~"..COLOR.."~RPM~w~ ".. math.ceil(round(RPM, 2)*10) .. "x | ~"..COLOR.."~Speed~w~ " .. math.ceil(Speed).. " | ~"..COLOR.."~Gear~w~ 8", 255, 255, 255, 255)
				end
			end


		end
	end
end)

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

function drawTxt(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
