function onCreate()
    makeLuaSprite('bg','backgrounds/adrian',-2250, -2910);
    addLuaSprite('bg', false);

    makeLuaSprite('fence','backgrounds/pipi',-950, 770);
    addLuaSprite('fence', true);
    setLuaSpriteScrollFactor('fence', 0.9, 0.9);	
    scaleObject('fence', 0.45, 0.3);
end