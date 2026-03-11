function onStepHit()
	if curStep == 630 then
removeLuaSprite('newpipe', true);

makeLuaSprite('tuberia', 'tuberia', -1200, 800)
setScrollFactor('tuberia', 1.1, 1.1)
scaleObject('tuberia', 1, 1)
addLuaSprite('tuberia', true);

end
end