function onCreate()
	makeLuaSprite('house','caton/house',-350,-150)
    addLuaSprite('house',false)
	scaleObject('house' ,0.85,0.85)

	makeAnimatedLuaSprite('explosion', 'caton/explosion', -570, -50)
    addAnimationByPrefix('explosion', 'dance', 'Explosion', 24, true)
	objectPlayAnimation('explosion', 'dance', true)
	scaleObject('explosion' ,2,2)
	addLuaSprite('explosion', false)

    makeLuaSprite('houseUnbroken','caton/houseUnbroken',-350,-150)
    addLuaSprite('houseUnbroken',false)
    scaleObject('houseUnbroken' ,0.85,0.85)
end

function onStepHit()
	if curStep == 820 then
		stage1 = 'house';
        doTweenAlpha('stageAppear', 'house', 1, 0.0001, 'linear');
		stage2 = 'houseUnbroken';
		doTweenAlpha('stageGone', 'houseUnbroken', 0, 0.0001, 'linear');
	end

	if curStep == 822 then
		stage1 = 'house';
        doTweenAlpha('stageAppear', 'house', 1, 0.0001, 'linear');
		stage2 = 'explosion';
		doTweenAlpha('stageGone', 'explosion', 0, 0.0001, 'linear');
	end
end