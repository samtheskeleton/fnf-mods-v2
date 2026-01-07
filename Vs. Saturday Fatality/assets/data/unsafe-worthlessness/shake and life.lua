function opponentNoteHit(id, direction, noteType, isSustainNote) 
   health = getProperty('health') 
      if curStep >= 704 then
         triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
if getProperty('health') > 0.21 then
   setProperty('health', health- 0.014);
	end
end
end