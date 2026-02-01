function onCreate()
	
	makeLuaSprite('BlackOAlgo', '', 0, 0)
    makeGraphic('BlackOAlgo', screenWidth, screenHeight,'000000')
    setObjectCamera('BlackOAlgo', 'other')
    setProperty('BlackOAlgo.alpha', 0)
    addLuaSprite('BlackOAlgo', true)
    scaleObject('BlackOAlgo', 4,4);

	makeLuaSprite('gradient','dmori/gradient',-400,-980)
    addLuaSprite('gradient',false)
    scaleObject('gradient' ,2,1)

	makeLuaSprite('white','dmori/white',-700,-700)
    addLuaSprite('white',false)
    scaleObject('white' ,10000,10000)

	makeLuaSprite('carpet','dmori/carpet',-700,365)
    addLuaSprite('carpet',false)
    scaleObject('carpet' ,1,1.2)

	makeAnimatedLuaSprite('mewo', 'dmori/mewo', 600, 500)
    addAnimationByPrefix('mewo', 'dance', 'mewo', 24, true)
	objectPlayAnimation('mewo', 'dance', true)
	addLuaSprite('mewo', false)

	makeAnimatedLuaSprite('liught', 'dmori/liught', 600, -500)
	addAnimationByPrefix('liught', 'dance', 'liught', 24, true)
	objectPlayAnimation('liught', 'dance', true)
	addLuaSprite('liught', false)

    makeLuaSprite('door','dmori/door',0,0)
    addLuaSprite('door',false)
    scaleObject('door' ,1,1)
end

function onStepHit()

	if curStep == 888 then
        doTweenAlpha('BlackOAlgo', 'BlackOAlgo', 1, 0.0001, 'linear');
	end
    if curStep == 896 then
        doTweenAlpha('BlackOAlgo', 'BlackOAlgo', 0, 0.0001, 'linear')
	end
    if curStep == 1392 then
        doTweenAlpha('BlackOAlgo', 'BlackOAlgo', 1, 2, 'linear');
	end
    if curStep == 1429 then
        doTweenAlpha('BlackOAlgo', 'BlackOAlgo', 0, 0.0001, 'linear')
	end

	
	if curStep == 889 then
        doTweenAlpha('stageGone', 'liught', 0, 0.0001, 'linear');
	end
    if curStep == 1427 then
        doTweenAlpha('stageAppear', 'liught', 1, 0.0001, 'linear');
	end

	
	if curStep == 890 then
        doTweenAlpha('stageAppear', 'gradient', 1, 0.0001, 'linear');
		doTweenAlpha('stageGone', 'white', 0, 0.0001, 'linear');
	end
    if curStep == 1428 then
        doTweenAlpha('stageAppear', 'white', 1, 0.0001, 'linear');
		doTweenAlpha('stageGone', 'gradient', 0, 0.0001, 'linear');
	end

    if curStep == 2076 then
        doTweenAlpha('BlackOAlgo', 'BlackOAlgo', 1, 0.0001, 'linear')
	end
end