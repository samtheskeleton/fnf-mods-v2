curSection = 0
stepDev = 0

function onCreate()
    makeLuaSprite('black')
    makeGraphic('black', screenWidth, screenHeight, '000000')
    setObjectCamera('black', 'other')
    setProperty('black.alpha', 0)
    addLuaSprite('black', true)
	
    makeLuaSprite('cinematicBarsTop')
    makeGraphic('cinematicBarsTop', screenWidth, screenHeight / 12, '000000')
	screenCenter('cinematicBarsTop', 'x')
    setObjectCamera('cinematicBarsTop', 'other')
    setProperty('cinematicBarsTop.y', 0 - getProperty('cinematicBarsTop.height'))
    addLuaSprite('cinematicBarsTop', true)

    makeLuaSprite('cinematicBarsBottom')
    makeGraphic('cinematicBarsBottom', screenWidth, screenHeight / 12, '000000')
	screenCenter('cinematicBarsBottom', 'x')
    setObjectCamera('cinematicBarsBottom', 'other')
    setProperty('cinematicBarsBottom.y', screenHeight)
    addLuaSprite('cinematicBarsBottom', true)

    makeLuaText('cutsceneText', "", 0, 0, 400)
    setTextAlignment('cutsceneText', 'center')
    setTextSize('cutsceneText', 32)
    setTextColor('cutsceneText', 'ffffff')
    setObjectCamera('cutsceneText', 'other')
	setProperty('cutsceneText.visible', false)
    addLuaText('cutsceneText', true)
end

function onCreatePost()
    setProperty('timeBar.color', getColorFromHex('535552'))
	if difficulty == 1 then
		for i = 0, 6 do
			setPropertyFromGroup('opponentStrums', i, 'x', getPropertyFromGroup('opponentStrums', i, 'x') - i * 6 - 3)
			setPropertyFromGroup('playerStrums', i, 'x', getPropertyFromGroup('playerStrums', i, 'x') - i * 6 - 3)
		end
	end

	makeAnimatedLuaSprite('oswaldicon2', 'icons/oswald-suicide', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('oswaldicon2', 'idle', 'idle', 24, true)
	luaSpriteAddAnimationByPrefix('oswaldicon2', 'losing', 'angryish', 24, true)

	setObjectCamera('oswaldicon2', 'hud')
	addLuaSprite('oswaldicon2', true)
	setObjectOrder('oswaldicon2', getObjectOrder('iconP2') + 1)
	setProperty('oswaldicon2.alpha', 0)
	objectPlayAnimation('oswaldicon2', 'idle', true)
end

function onUpdate()
	setProperty('oswaldicon2.x', getProperty('iconP2.x') + 15)
	setProperty('oswaldicon2.y', getProperty('iconP2.y') + 5)
	setProperty('oswaldicon2.angle', getProperty('iconP2.angle'))
	scaleObject('oswaldicon2', getProperty('iconP2.scale.x'), getProperty('iconP2.scale.y'))
	if getProperty('healthBar.percent') > 80 then
		if getProperty('oswaldicon2.animation.curAnim.name') ~= 'losing' then
			objectPlayAnimation('oswaldicon2', 'losing', true)
		end
	else
		objectPlayAnimation('oswaldicon2', 'idle', true)
	end
	
	xx = getProperty('dad.x') + getProperty('dad.width') * 0.5 + 100 + dadCamX
	yy = getProperty('dad.y') + getProperty('dad.height') * 0.5 - 100 + dadCamY
	xx2 = getProperty('boyfriend.x') + getProperty('boyfriend.width') * 0.5 - 100
	yy2 = getProperty('boyfriend.y') + getProperty('boyfriend.height') * 0.5 - 200 + 100
	if camFollowDad then
		triggerEvent('Camera Follow Pos', getProperty('dad.x') + getProperty('dad.frameWidth') * 0.5 + dadCamX, getProperty('dad.y') + getProperty('dad.frameHeight') * 0.5 + dadCamY)
	else
		if mustHitSection == false then
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx-ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx+ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx,yy-ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx,yy+ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx,yy)
			end
		else
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx2,yy2)
			end
		end
	end
end

function onUpdatePost()
	if difficulty == 1 then
		for i = 0, getProperty('notes.length'), 1 do
			setPropertyFromGroup('notes', i, 'x', getPropertyFromGroup('notes', i, 'x') + 4)
		end
	end
end

function onEvent(name, value1, value2)
	if name == "camHud & camera Off" then
		setProperty('black.alpha', 1)
	end
	if name == "camHud & camera On" then
		setProperty('black.alpha', 0)
	end
end

function onStepHit()
	if curStep % 16 == 0 then
		curSection = math.floor(curStep / 16)
	end
	
	stepDev = math.floor(curStep % 16) + 1
	
	if curStep == 1 then
		setProperty('cutsceneText.alpha', 0)
		setProperty('cutsceneText.visible', true)
		setTextSize('cutsceneText', 32)
		setTextWidth('cutsceneText', 1000)
		setProperty('cutsceneText.x', 170)
		setProperty('cutsceneText.y', 600)
	end
	if curStep == 32 then
		triggerEvent('camHud & camera On', '', '')
		doTweenAlpha('hud0', 'camHUD', 0, 1)
	end
	if curStep == 112 then
        doTweenZoom('zoom0','camGame', 1.2, 3.62)
		doTweenAlpha('cutt0', 'cutsceneText', 1, 0.5)
		setTextString('cutsceneText', 'Alright, Alright')
            setTextFont('cutsceneText', "wi.ttf")
		dadCamX = 70
		camFollowDad = true
	end
	if curStep == 137 then
		setTextString('cutsceneText', "Let's get this over with.")
            setTextFont('cutsceneText', "wi.ttf")
		setTextColor('cutsceneText', 'd62020')
	end
	
	if curStep == 144 then
		doTweenAlpha('hud10', 'camHUD', 1, 1)
	end
	
	if curStep == 160 then
		setProperty('defaultCamZoom', 0.8)
		doTweenAlpha('cutt1', 'cutsceneText', 0, 0.5)
		dadCamX = -50
		camFollowDad = false
        doTweenY('cbtr0','cinematicBarsTop', 0 - getProperty('cinematicBarsTop.height'), 0.5, 'circinout')
        doTweenY('cbbr0','cinematicBarsBottom', screenHeight, 0.5, 'circinout')
	end
	
	if curStep == 696 then
        triggerEvent('Add Camera Zoom', '0.075', '0.03')
		setProperty('defaultCamZoom', 1.3)
	end
	
	if curStep == 952 then
		setProperty('camZooming', false)
		doTweenAlpha('hud1', 'camHUD', 0, 0.3)
        doTweenY('cbta0','cinematicBarsTop', 0, 0.5, 'circinout')
        doTweenY('cbba0','cinematicBarsBottom', screenHeight - getProperty('cinematicBarsBottom.height'), 0.5, 'circinout')
        doTweenZoom('zoom1','camGame', 1.1, 2)
		dadCamX = 0
		camFollowDad = true
		doTweenAlpha('cutt2', 'cutsceneText', 1, 0.2)
		setTextString('cutsceneText', 'In the end, we all..')
            setTextFont('cutsceneText', "wi.ttf")
	end
	
	if curStep == 976 then
		setProperty('camZooming', false)
		setTextSize('cutsceneText', 36)
		setTextColor('cutsceneText', 'd62020')
		setTextString('cutsceneText', "DIE.")
            setTextFont('cutsceneText', "wi.ttf")
		cancelTween('zoom1')
        doTweenZoom('zoom2','camGame', 1.3, 0.2)
	end
	
	if curStep == 984 then
		setTextSize('cutsceneText', 32)
		setTextColor('cutsceneText', 'ffffff')
		setTextString('cutsceneText', "Why should I, even try.")
            setTextFont('cutsceneText', "wi.ttf")
		dadCamX = 150
	end
	
	if curStep == 1014 then
		setTextString('cutsceneText', "Gun in hand, my life shall end..")
            setTextFont('cutsceneText', "wi.ttf")
		dadCamX = 0
	end
	
	if curStep == 1044 then
		setTextColor('cutsceneText', 'd62020')
		setTextString('cutsceneText', "MY SUFFERING SHALL BE KNOWN, FRIEND!")
            setTextFont('cutsceneText', "wi.ttf")
		dadCamX = 150
		dadCamY = -50
	end
	
	if curStep == 1072 then
		doTweenAlpha('cutt1', 'cutsceneText', 0, 0.5)
		dadCamX = -50
		dadCamY = -50
		camFollowDad = false
		setProperty('camZooming', true)
		doTweenAlpha('hud2', 'camHUD', 1, 1)
		setProperty('healthBar.alpha', 0)
		setProperty('healthBarBG.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
		setProperty('timeBarBG.alpha', 0)
		setProperty('timeBar.alpha', 0)
		setProperty('timeTxt.alpha', 0)
	end
	
	if curStep == 1080 then
		setTextString('cutsceneText', '')
	end
	
	if curStep == 1174 then
		setProperty('camZooming', false)
		dadCamX = 70
		camFollowDad = true
	end
	
	if curStep == 1201 then
		setTextSize('cutsceneText', 46)
		setTextColor('cutsceneText', 'd62020')
		setProperty('cutsceneText.alpha', 1)
		setTextString('cutsceneText', "RAAAH!")
            setTextFont('cutsceneText', "wi.ttf")
	end
	
	if curStep == 1208 then
		setTextSize('cutsceneText', 32)
		setTextColor('cutsceneText', 'ffffff')
		setTextString('cutsceneText', "")
		setProperty('healthBar.alpha', 1)
		setProperty('healthBarBG.alpha', 1)
		setProperty('iconP1.alpha', 1)
		setProperty('oswaldicon2.alpha', 1)
		setProperty('scoreTxt.alpha', 1)
		setProperty('timeBarBG.alpha', 1)
		setProperty('timeBar.alpha', 1)
		setProperty('timeTxt.alpha', 1)
            doTweenY('cbtr1','cinematicBarsTop', 0 - getProperty('cinematicBarsTop.height'), 0.5, 'circinout')
            doTweenY('cbbr1','cinematicBarsBottom', screenHeight, 0.5, 'circinout')
		dadCamX = -50
		camFollowDad = false
		setProperty('camZooming', true)
	end
	
	if curStep == 1208 or curStep == 1212 then
		triggerEvent('Add Camera Zoom', '0.1', '0.035')
	end
	
	if curStep == 1208 or curStep == 2232 then
		setProperty('defaultCamZoom', 0.8)
	end
	
	if curStep == 1712 then
		setProperty('camZooming', false)
		dadCamX = 70
		camFollowDad = true
	end
	
	if curStep == 1720 then
		dadCamX = -50
		camFollowDad = false
		setProperty('camZooming', true)
	end
	
	if curStep == 1976 then
		setProperty('defaultCamZoom', 1)
	end

	if curStep == 2232 then
		for i = 0, 13 do
			noteTweenAlpha('tweennote'..i, i, 0, 1.5)
		end
		doTweenAlpha('hud3', 'healthBar', 0, 1.5)
		doTweenAlpha('hud4', 'healthBarBG', 0, 1.5)
		doTweenAlpha('hud5', 'iconP1', 0, 1.5)
		doTweenAlpha('hud6', 'oswaldicon2', 0, 1.5)
		doTweenAlpha('hud7', 'timeBarBG', 0, 1.5)
		doTweenAlpha('hud8', 'timeBar', 0, 1.5)
		doTweenAlpha('hud9', 'timeTxt', 0, 1.5)
		doTweenAlpha('hud10', 'Time', 0, 1.5)
		doTweenAlpha('hud11', 'camHUD', 0, 1)
	end
	if flashingLights and curSection == 1 and stepDev > 8 then
		if curStep % 2 == 1 then
			triggerEvent('camHud & camera Off', '', '')
		else
			triggerEvent('camHud & camera On', '', '')
		end
	end
	
	if curSection >= 18 and curSection <= 25 then
		if stepDev == 1 or stepDev == 7 then
			triggerEvent('Add Camera Zoom', '0.075', '0.03')
		end
		if stepDev == 13 or stepDev == 15 then
			triggerEvent('Add Camera Zoom', '0.1', '0.035')
		end
	end
	
	if (curSection >= 27 and curSection <= 42 or curSection >= 76 and curSection <= 138) and curStep % 4 == 0 then
		triggerEvent('Add Camera Zoom', '0.1', '0.035')
	end
	
	if curSection >= 43 and curSection <= 58 and curStep % 8 == 0 then
        triggerEvent('Add Camera Zoom', '0.075', '0.03')
	end
end

function onTweenCompleted(name)
	if name == 'cutt1' then
		setTextString('cutsceneText', '')
		setTextColor('cutsceneText', 'ffffff')
	end
	if name == 'zoom2' then
		setProperty('camGame.zoom', 1.3)
		runTimer('timer0', 0.25)
	end
	if name == 'zoom3' then
        doTweenZoom('zoom4','camGame', 1.2, 7)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timer0' then
        doTweenZoom('zoom3','camGame', 1.1, 0.2, 'quadinout')
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    hp = getProperty('health')
	if dadName == 'oswald-suicide' then
		triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
		if hp > 0.5 then
			if isSustainNote then
				setProperty('health', hp - 0.028 / 3)
			else
				setProperty('health', hp - 0.028)
			end
		end
	end
end