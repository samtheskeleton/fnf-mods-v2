function onStepHit()
	if curStep == 620 then

setObjectOrder('gfGroup', 4)

makeAnimatedLuaSprite('newpipe', 'tuberia1', -1300, -400)
addAnimationByPrefix('newpipe', 'dance', 'tuberia', 28, true)
objectPlayAnimation('newpipe', 'dance', false)
setScrollFactor('newpipe', 1.1, 1.1)
scaleObject('newpipe', 1, 1)
addLuaSprite('newpipe', true)
end
end