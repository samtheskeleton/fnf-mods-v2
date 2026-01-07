function opponentNoteHit(id, direction, noteType, isSustainNote) 
   health = getProperty('health') 
	if curStep >= 0 and curStep < 432 then
      cameraShake('camHUD', 0.00, 0.000)
	end
      if curStep >= 432 then
            triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.014);
	end
      if curStep >= 944 then
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.021);
	end
      if curStep >= 1487 then
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.028);
	end
      if curStep >= 2015 then
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