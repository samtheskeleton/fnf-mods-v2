local bg = 'stages/disk-1/'
function onCreate()
makeLuaSprite('sky', bg..'sunset/sky', -200, 0)
Scale(3,'sky')
setScrollFactor('sky', 0.1, 0.1)
addLuaSprite('sky', false)

makeLuaSprite('mountains', bg..'mountains', -472, -991)
Scale(2,'mountains')
setScrollFactor('mountains', 0.4, 0.4)
addLuaSprite('mountains', false)

makeLuaSprite('clouds', bg..'sunset/clouds', 94, -600)
Scale(3.5,'clouds')
setScrollFactor('clouds', 0.2, 0.2)
addLuaSprite('clouds', false)

makeLuaSprite('trees', bg..'trees', -1360, -960)
setScrollFactor('trees', 0.7, 0.7)
addLuaSprite('trees', false)

makeLuaSprite('bg', bg..'background', 135, -737)
setScrollFactor('bg', 0.7, 0.7)
Scale(3.5,'bg')
addLuaSprite('bg', false)

makeLuaSprite('clubhouse', bg..'clubhouse', 94, -737)
Scale(3.5,'clubhouse')
addLuaSprite('clubhouse', false)

makeAnimatedLuaSprite('toodles', bg..'toodlesWorried', -520, -30)
addAnimationByPrefix('toodles', 'bora', 'Toodle-flying instance 1', 24, true)
Scale(0.85,'toodles')
playAnim('toodles', 'bora', true)
addLuaSprite('toodles', false)

makeLuaSprite('sign', bg..'sign', 1885.5, 573)
Scale(0.4,'sign')
addLuaSprite('sign', true)

makeLuaSprite('lights', bg..'sunset/lights', 94, -737)
Scale(3.5,'lights')
addLuaSprite('lights', true)
end
local blz = 'markus-coocoo'
function onCreatePost()
makeLuaSprite('overlay', 'stages/disk-1/foregrounds', 0, 0)
Scale(0.7,'overlay')
overlayCam('overlay', 'overlayCam')
screenCenter('overlay', 'XY')
addLuaSprite('overlay', false)
--shesh
createInstance('gff', 'objects.Character',{780,700,'gf-rook-scared'}) --600
setProperty('gff.alpha', 0.35)
setProperty('gff.flipY', true)
addInstance('gff', false)

createInstance('bff', 'objects.Character',{1250,830,'bf-rook'}) --600
setProperty('bff.alpha', 0.35)
setProperty('bff.flipX', getProperty('boyfriend.flipX'))
setProperty('bff.flipY', true)
addInstance('bff', false)

createInstance('dadf', 'objects.Character',{-20,600,'markus-coocoo'}) --600
setProperty('dadf.alpha', 0.35)
setProperty('dadf.flipY', true)
addInstance('dadf', false)

createInstance('dadf2', 'objects.Character',{0,700,'markus-crazy'}) --600
setProperty('dadf2.alpha', 0.35)
setProperty('dadf2.visible', false)
setProperty('dadf2.flipY', true)
addInstance('dadf2', false)
--a
runHaxeCode([[
for (i in [game.getLuaObject('bff'), game.getLuaObject('dadf'), game.getLuaObject('gff'),game.getLuaObject('dadf2')]) {
i.angle = 240 * (Math.PI / 180);
i.color = FlxColor.BLACK;
}
]])
end
function onEvent(n,v1,v2)
if n == 'Change Character' then
if v1 == 'dad' then
if v2 == 'markus-crazy' then
setProperty('dadf.visible', false)
setProperty('dadf2.visible', true)
end
end
end
if n == 'Play Animation' then
if v1 == 'sad' then
if v2 == 'GF' then
playAnim('gff','sad', true)
end
end
end
end
function onBeatHit()
if not stringStartsWith(getProperty('dadf2.animation.name'), 'sing') then
callMethod('dadf2.dance', {''})
end
if curBeat % 2 == 0 and not stringStartsWith(getProperty('bff.animation.name'), 'sing') then
callMethod('bff.dance', {''})
end
if curBeat % 2 == 0 and not stringStartsWith(getProperty('gff.animation.name'), 'sad') then
callMethod('gff.dance', {''})
end
if curBeat % 2 == 0 and not stringStartsWith(getProperty('dadf.animation.name'), 'sing') then
callMethod('dadf.dance', {''})
end
end
function opponentNoteHit(id,noteData,noteType,isSustainNote)
playAnim('dadf2', getProperty('singAnimations')[noteData+1], true)
setProperty('dadf2.holdTimer',0)
end
function goodNoteHit(id,noteData,noteType,isSustainNote)
playAnim('bff', getProperty('singAnimations')[noteData+1], true)
setProperty('bff.holdTimer',0)
end
--isso e muito random mais vai
function Scale(scale,name)
setProperty(name..'.scale.x', scale) 
setProperty(name..'.scale.y', scale) 
end