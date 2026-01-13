function onCreate()
	makeAnimatedLuaSprite('Dad2', 'characters/MM_AD3', 1000, 150);
	addAnimationByPrefix('Dad2', 'idle', 'Mom Idle', 24, false);
    addAnimationByPrefix('Dad2', '0', 'Mom Left Pose', 24, false);
    addAnimationByPrefix('Dad2', '1', 'MOM DOWN POSE', 24, false);
    addAnimationByPrefix('Dad2', '2', 'Mom Up Pose', 24, false);
    addAnimationByPrefix('Dad2', '3', 'Mom Pose Left', 24, false);
	objectPlayAnimation('Dad2', 'idle'); 
	setProperty('Dad2.flipX', true);
	addLuaSprite('Dad2', true);
end
function onBeatHit()

	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad2', 'idle');
	end
end

lastNote = {0, ""}

function goodNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "No Animation" then
	objectPlayAnimation('Dad2', lastNote[1]);
    end
end