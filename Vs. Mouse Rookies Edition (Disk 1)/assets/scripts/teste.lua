function onCreatePost()
makeLuaSprite('hBarP2', 'game/hBar', -550, 160) --opponent
setObjectCamera('hBarP2', 'camHUD')
setProperty('hBarP2.flipX', true)
addLuaSprite('hBarP2')

makeLuaSprite('hBarP1', 'game/hBar', 405, 160) --bf
setObjectCamera('hBarP1', 'camHUD')
addLuaSprite('hBarP1')
--scale
Scale(0.19,'hBarP1')
Scale(0.19,'hBarP2')
--puta que pariu namoral isso parece muita burrice mais fds
setObjectOrder('hBarP1',getObjectOrder('noteGroup')+1)
setObjectOrder('hBarP2',getObjectOrder('noteGroup')+1)
setObjectOrder('iconP1',getObjectOrder('hBarP1')+1)
setObjectOrder('iconP2',getObjectOrder('hBarP2')+1)
--blz
if downscroll then
setProperty('hBarP1.y', -300)
setProperty('hBarP2.y', -300)
end
end
function onUpdatePost()
--shig
runHaxeCode([[
game.getLuaObject('hBarP1').alpha = game.iconP1.alpha;
game.getLuaObject('hBarP2').alpha = game.iconP1.alpha;
]])
--icons
setProperty('iconP1.x', 1110)
setProperty('iconP2.x', 5)
--scale
setProperty('iconP1.scale.x', 0.8)
setProperty('iconP1.scale.y', 0.8)

setProperty('iconP2.scale.x', 0.8)
setProperty('iconP2.scale.y', 0.8)
--depois
if not downscroll then
setProperty('iconP1.y', 520)
setProperty('iconP2.y', 520)
else
setProperty('iconP1.y', 60)
setProperty('iconP2.y', 60)
end
end
--isso e muito random mais vai
function Scale(scale,name)
setProperty(name..'.scale.x', scale) 
setProperty(name..'.scale.y', scale) 
end