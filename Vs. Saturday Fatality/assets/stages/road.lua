function onCreate()
    makeLuaSprite('bg','backgrounds/bg_Yakko',-780, -80)
    scaleObject('bg', 1.35, 1.35);
    addLuaSprite('bg')
end

function onUpdate()
    if mustHitSection == false then
        setProperty('defaultCamZoom',0.57)
    else
        setProperty('defaultCamZoom',0.72)
    end
end