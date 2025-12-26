local bg = 'stages/disk-1/'
function onCreate()
makeLuaSprite('sky', bg..'sky', -200, 0)
setScrollFactor('sky', 0.1, 0.1)
Scale(3,'sky')
addLuaSprite('sky', false)

makeLuaSprite('mountains', bg..'mountains', -472, -991)
setScrollFactor('mountains', 0.4, 0.4)
Scale(2,'mountains')
addLuaSprite('mountains', false)

makeLuaSprite('clouds', bg..'Cloud', 94, -600)
setScrollFactor('clouds', 0.2, 0.2)
Scale(3.5,'clouds')
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

makeAnimatedLuaSprite('minnie', bg..'Minnie_assets', 546, 20)
addAnimationByPrefix('minnie', 'danceLeft', 'Minnie_left_Dance0', 24, false)
addAnimationByPrefix('minnie', 'danceRight', 'Minnie_right_Dance0', 24, false)
Scale(0.85,'minnie')
addLuaSprite('minnie', false)

makeAnimatedLuaSprite('donald', bg..'Donald_assets', -599, 261)
addAnimationByPrefix('donald', 'bop', 'Donald_idle', 24, false)
Scale(1.2,'donald')
addLuaSprite('donald', false)

makeAnimatedLuaSprite('goofy', bg..'Goofy_assets', 1858, 67)
addAnimationByPrefix('goofy', 'bop', 'Goofy_idle', 24, false)
Scale(1.4,'goofy')
addLuaSprite('goofy', false)

makeLuaSprite('sign', bg..'sign', 1885.5, 573)
Scale(0.4,'sign')
addLuaSprite('sign', false)
end
function onCreatePost()
makeLuaSprite('overlay', 'stages/disk-1/foregrounds', 0, 0)
Scale(0.7,'overlay')
overlayCam('overlay', 'overlayCam')
screenCenter('overlay', 'XY')
addLuaSprite('overlay', false)
end
--isso e muito random mais vai
function Scale(scale,name)
setProperty(name..'.scale.x', scale) 
setProperty(name..'.scale.y', scale) 
end
function onEvent(n,v1,v2)
if n == 'minnie' then
if v1 == 'Right' then
playAnim('minnie', 'danceRight', true)
setProperty('minnie.x', 546)
setProperty('minnie.y', 20)
end
if v1 == 'Left' then
playAnim('minnie', 'danceLeft', true)
setProperty('minnie.x', 536)
setProperty('minnie.y', 16)
end
end
end