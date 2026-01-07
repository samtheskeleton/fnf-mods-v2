function onCreate()
    makeLuaSprite('sky','backgrounds/hellhole/SKY',-1070, -320)
    scaleObject('sky', 1.9, 1.7);
    addLuaSprite('sky')

    makeLuaSprite('back','backgrounds/hellhole/Back',-1070, -320)
    scaleObject('back', 1.9, 1.7);
    addLuaSprite('back')

    makeLuaSprite('plat','backgrounds/hellhole/infernogroundp1',-1050, -320)
    scaleObject('plat', 1.9, 1.7);
    addLuaSprite('plat')

    makeLuaSprite('cartel','backgrounds/hellhole/carteles',-1050, -320)
    scaleObject('cartel', 1.9, 1.7);
    addLuaSprite('cartel', true);

    setObjectOrder('cartel', true)
    setObjectOrder('mandibula', true)
    setObjectOrder('boyfriendGroup', false)
    setObjectOrder('dadGroup', false)
    setObjectOrder('gfGroup', false)
    setObjectOrder('plat', false)
    setObjectOrder('back', false)
    setObjectOrder('sky', false)
end