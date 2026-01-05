function onCreate()
	-- background shit

	makeAnimatedLuaSprite('bg', 'waterfall', -50, 120)
	addAnimationByPrefix('bg', 'waterfall', 'waterfall', 24, true)
	playAnim('waterfall', 'waterfall', false, false, 0)

	addLuaSprite('bg', false);
	--setScrollFactor('dadGroup', 1.3, 1)
	setScrollFactor('gfGroup', 0.9, 1)
	setObjectOrder('boyfriendGroup', 3)
	setObjectOrder('gfGroup', 1)
	
end


function onCreatePost()

	setProperty('gf.visible',false)

	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
		end
	end

function onBeatHit()
	if curBeat == 4 then
		doTweenY('milesgetout', 'gf', -1000, 1, 'quartOut')
	end
	if curBeat == 10 then
		setProperty('gf.visible',true)
	end
	if curBeat == 71 then
		doTweenY('milesmove', 'gf', 370, 4, 'quartOut')
		playSound('hover', 0.7)
		end
	end

function onMoveCamera(c)
        if c == 'dad' then
            setProperty('defaultCamZoom',1.23)
	end
	if c == 'gf' then
            setProperty('defaultCamZoom',1.3)
end
	if c == 'boyfriend' then
            setProperty('defaultCamZoom',1.2)	
end
end