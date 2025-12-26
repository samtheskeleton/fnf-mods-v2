function onCreatePost()
--THE TOP BAR
if not curStage == 'titulo' or curStage == 'menu' or curStage == 'freeplay' then
--ata
else
makeLuaSprite('UpperBar', 'empty', 0, -260) -- 160
makeGraphic('UpperBar', 1280, 140, '000000')
staticCam('UpperBar', 'staticCam')
Scale(3.5,'UpperBar')
addLuaSprite('UpperBar', true)
--THE BOTTOM BAR
makeLuaSprite('LowerBar', 'empty', 0, 740) -- 510
makeGraphic('LowerBar', 1280, 140, '000000')
staticCam('LowerBar', 'staticCam')
Scale(2,'LowerBar')
addLuaSprite('LowerBar', true)
end
--a
makeLuaSprite('flash', '', 0, 0)
makeGraphic('flash', screenWidth, screenHeight, flash)
scaleObject('flash', 2.2, 2.2)
setObjectCamera("flash", "camGame")
setProperty('flash.alpha', 0)
setScrollFactor('flash', 0.1, 0.1)
screenCenter('flash', 'XY')
addLuaSprite('flash', true)
--a
setProperty('camZoomingMult', 0)
triggerEvent('camBop', '2','')
end
--isso e muito random mais vai
function Scale(scale,name)
setProperty(name..'.scale.y', scale) 
end
--aiiii
function onEvent(n,v1,v2)
if n == 'Set Cam Zoom' then
setProperty('defaultCamZoom', v1)
end
if n == 'speed' then
setProperty('songSpeed', v1)
end
if n == 'camera' then
if v1 == 'boyfriend' then
cameraSetTarget('boyfriend');
elseif v1 == 'dad' then
cameraSetTarget('dad');
elseif v1 == 'Gf' then
onGF = true;
triggerEvent('Camera Follow Pos',getMidpointX('gf')+getProperty('gf.cameraPosition[0]'),getMidpointY('gf')+getProperty('gf.cameraPosition[1]'));
end
end  
if n == 'flash' then
setProperty('flash.alpha', 1)
doTweenAlpha('blzzz', 'flash', 0, v1, 'linear')
end
if n == 'cinematics' then
doTweenY('Cinematics1', 'UpperBar', 160, 0.3, 'quadOut')
doTweenY('Cinematics2', 'LowerBar', 510, 0.3, 'quadOut')
doTweenAlpha('blz', 'Accuracy', 0, 0.3, 'quadOut')
doTweenAlpha('blz2', 'iconP1', 0, 0.3, 'quadInOut')
doTweenAlpha('blz3', 'iconP2', 0, 0.3, 'quadInOut')
end
if n == 'cine' then
doTweenY('Cinematics1', 'UpperBar', -210, 1.5, 'quadOut')
doTweenY('Cinematics2', 'LowerBar', 700, 1.5, 'quadOut')
doTweenAlpha('blz', 'Accuracy', 0, 1.5, 'quadInOut')
doTweenAlpha('blz2', 'iconP1', 0, 1.5, 'quadInOut')
doTweenAlpha('blz3', 'iconP2', 0, 1.5, 'quadInOut')
end
if n == 'cine-off' then
doTweenY('Cinematics1', 'UpperBar', -260, 1.5, 'quadOut')
doTweenY('Cinematics2', 'LowerBar', 740, 1.5, 'quadOut')
doTweenAlpha('blz', 'Accuracy', 1, 1.5, 'quadInOut')
doTweenAlpha('blz2', 'iconP1', 1, 1.5, 'quadInOut')
doTweenAlpha('blz3', 'iconP2', 1, 1.5, 'quadInOut')
end
if n == 'dueto' then
dueto = true
end
if n == 'dueto-off' then
dueto = false
end
if n == 'camBop' then
hm = v1
bora = v2
end
end
function onUpdatePost(elapsed)
if dueto == true then 
callMethod('camFollow.setPosition', {x, 350})
else
--dueto false lol
setProperty('camFollow.x', getProperty('camFollow.x'))
setProperty('camFollow.y', getProperty('camFollow.y'))
end
end
function onCreate()
if songName:lower() == 'manical' then
x = 730
flash = '000000'
else
x = 850
flash = 'FFFFFF'
end
end
local onGF = false; --ayo
function onSectionHit()
if onGF then
onGF = false
else
triggerEvent('Camera Follow Pos','','');
end
end
local bora = false;
function onBeatHit()
if bora then
if curBeat % hm == 0 then
triggerEvent('Add Camera Zoom', '','')
end
end
end
function opponentNoteHit()
bora = true
end