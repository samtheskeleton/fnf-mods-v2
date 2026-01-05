function onCreate()

makeLuaSprite('bg', 'Sonic4', -2840, -2090)
scaleObject('bg', 5, 5)
addLuaSprite('bg', 'false')

end

function onStepHit()

    if curStep == 528 then
        setProperty('defaultCamZoom', 1.05)
    end

    if curStep == 784 then
        setProperty('defaultCamZoom', 0.8)    
    end

end