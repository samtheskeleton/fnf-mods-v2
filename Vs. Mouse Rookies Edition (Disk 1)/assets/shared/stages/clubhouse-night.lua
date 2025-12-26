local bg = 'stages/disk-1/'
function onCreate()
makeLuaSprite('sky', bg..'night/sky', -200, 0)
setScrollFactor('sky', 0.1, 0.1)
Scale(3,'sky')
addLuaSprite('sky', false)

makeLuaSprite('stars', bg..'night/stars', -200, 0)
setScrollFactor('stars', 0.12, 0.12)
Scale(3,'stars')
addLuaSprite('stars', false)

makeLuaSprite('moon', bg..'night/moon', -200, 0)
setScrollFactor('moon', 0.14, 0.14)
Scale(3,'moon')
addLuaSprite('moon', false)

makeLuaSprite('mountains', bg..'mountains', -472, -991)
setScrollFactor('mountains', 0.4, 0.4)
Scale(2,'mountains')
addLuaSprite('mountains', false)

makeLuaSprite('clouds', bg..'night/clouds', 94, -600)
setScrollFactor('clouds', 0.2, 0.2)
Scale(3.5,'clouds')
addLuaSprite('clouds', false)

makeLuaSprite('trees', bg..'trees', -1360, -960)
setScrollFactor('trees', 0.7, 0.7)
addLuaSprite('trees', false)

makeLuaSprite('bg', bg..'night/background', 135, -737)
setScrollFactor('bg', 0.7, 0.7)
Scale(3.5,'bg')
addLuaSprite('bg', false)

makeLuaSprite('clubhouse', bg..'night/clubhouse', 94, -737)
Scale(3.5,'clubhouse')
addLuaSprite('clubhouse', false)

makeAnimatedLuaSprite('toodles', bg..'toodlesWorried', -750, -110)
addAnimationByPrefix('toodles', 'bora', 'Toodle-flying instance 1', 24, true)
Scale(0.85,'toodles')
playAnim('toodles', 'bora', true)
addLuaSprite('toodles', false)
--martha
createInstance('martha', 'objects.Character',{-380,200,'martha'}) --600
addInstance('martha', true)
--ta
makeLuaSprite('lights', bg..'night/lights', 94, -737)
Scale(3.5,'lights')
addLuaSprite('lights', true)

makeLuaSprite('sign', bg..'sign', 1885.5, 573)
Scale(0.4,'sign')
addLuaSprite('sign', true)
--a
runHaxeCode([[
import flixel.FlxSprite;
var blu:FlxSprite;

blu = new FlxSprite().makeGraphic(1280, 720, FlxColor.BLUE);
blu.scrollFactor.set(0, 0);
blu.alpha = 0.25;
add(blu);

setVar('blu', blu);
]])
setBlendMode('blu', 'multiply') --obrigado chafGPT
overlayCam('blu', 'overlayCam')

makeLuaSprite('overlay', bg..'foregrounds', 320, -165)
Scale(0.7,'overlay')
addLuaSprite('overlay', false)
overlayCam('overlay', 'overlayCam')
screenCenter('overlay', 'XY')
addLuaSprite('overlay', false)
end
function opponentNoteHit(id,noteData,noteType,isSustainNote)
if noteType == 'martha' then
playAnim('martha', getProperty('singAnimations')[noteData+1], true)
setProperty('martha.holdTimer',0)
end
end
function onEvent(n,v1,v2)
if n == 'martha' and not stringStartsWith(getProperty('martha.animation.name'), 'sing') then
playAnim('martha', v1, true)
end
end
--isso e muito random mais vai
function Scale(scale,name)
setProperty(name..'.scale.x', scale) 
setProperty(name..'.scale.y', scale) 
end