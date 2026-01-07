function opponentNoteHit(id, direction, noteType, isSustainNote) 
   health = getProperty('health') 
	if curStep >= 0 and curStep < 432 then
      cameraShake('hud', 0.00, 0.000)
	end
      if curStep >= 400 then
         triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.018);
	end
      if curStep >= 777 then
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.021); 
      end
      if curStep >= 1325 then
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.028);
      end
      if curStep >= 1851 then
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.021); 
      end
end
end
end
end
end

function onUpdate()

		if get == 1 then

			setTextString("botplayTxt", "BOTPLAY")


	end

end