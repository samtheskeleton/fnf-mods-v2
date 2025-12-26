local max = 4
function onUpdate()
local y = math.cos(curDecBeat / 2) * 10
local lol = math.random(1,2)
if dadName == 'markus-crazy' then
if (lol >= 1) then
doTweenAngle('tt', 'iconP2', -max, stepCrochet*0.000000090909, 'circOut')
end
if (lol >= 2) then
doTweenAngle('tt', 'iconP2', max, stepCrochet*0.000000090909, 'circOut')
end
end
end