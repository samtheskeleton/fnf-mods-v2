function onPause() return Function_Stop end

function onStartCountdown()
if not allowCountdown then
allowCountdown = true
pera()
return Function_Stop;
end
return Function_Continue;
end
local songShit = {'Welcome','Unsettled','Repentance','Manical','Welcome-old'}
local curSelected = 0
function changeItem(change)
playSound('menu/scroll')
curSelected = curSelected + change
if curSelected >= #songShit then
curSelected = 0
elseif curSelected < 0 then
curSelected = #songShit - 1
end
end

function pera()
--a
playMusic('freeplay_shit/Inst_manical', 99, true)
addHaxeLibrary('FlxTypedGroup', 'flixel.group')
addHaxeLibrary('Alphabet', 'objects')
--b
runHaxeCode([[
import flixel.FlxSprite;
import flixel.addons.display.FlxBackdrop;
var bubbBig:FlxBackdrop;
var bubbSmall:FlxBackdrop;
var bgBlue:FlxSprite;

bgBlue = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, 0xFF384ECC);
game.addBehindGF(bgBlue);

bubbBig = new FlxBackdrop(Paths.image('menus/titlescreen/bigBubbles')); game.addBehindGF(bubbBig);
bubbSmall = new FlxBackdrop(Paths.image('menus/titlescreen/smallBubbles')); game.addBehindGF(bubbSmall); 

setVar('bgBlue', bgBlue);
setVar('bubbBig', bubbBig);
setVar('bubbSmall', bubbSmall);

game.getLuaObject('bubbBig').velocity.y = 30;
game.getLuaObject('bubbSmall').velocity.y = 70;
for (t in [game.getLuaObject('bubbBig'), game.getLuaObject('bubbSmall')]) {
t.scale.set(0.55, 0.55);
t.screenCenter();
}
]])
makeLuaSprite('mickheads', 'menus/titlescreen/mickheads', 0, 0)
addLuaSprite('mickheads')
runHaxeCode([[FlxTween.tween(game.getLuaObject('mickheads'), {y: game.getLuaObject('mickheads').y + 20}, 7.7, {ease: FlxEase.quadInOut, type: FlxTween.PINGPONG}); game.getLuaObject('mickheads').scale.set(0.55, 0.55);game.getLuaObject('mickheads').screenCenter();]])

setObjectCamera('bgBlue', 'camOther')
setObjectCamera('bubbBig', 'camOther')
setObjectCamera('bubbSmall', 'camOther')
setObjectCamera('mickheads', 'camOther')
--tinha jeito mais fácil? tinha mais bruh
runHaxeCode([[
var textGroup:FlxTypedGroup = new FlxTypedGroup();
game.addBehindGF(textGroup);
setVar('textGroup', textGroup);

var textGroup2:FlxTypedGroup = new FlxTypedGroup();
game.addBehindGF(textGroup2);
setVar('textGroup2', textGroup2);

var textGroup3:FlxTypedGroup = new FlxTypedGroup();
game.addBehindGF(textGroup3);
setVar('textGroup3', textGroup3);

var textGroup4:FlxTypedGroup = new FlxTypedGroup();
game.addBehindGF(textGroup4);
setVar('textGroup4', textGroup4);

var textGroup5:FlxTypedGroup = new FlxTypedGroup();
game.addBehindGF(textGroup5);
setVar('textGroup5', textGroup5);
]])
runHaxeCode([[
function createCoolText(textArray:Array<String>) {
for (i in 0...textArray.length) {
var money:Alphabet = new Alphabet(420, (i * 70) + 400, textArray[i], true, false);
money.camera = game.camOther;
getVar('textGroup').add(money);
setVar('money', money);
}
}
]])
runHaxeCode([[
function createCoolText2(textArray:Array<String>) {
for (i in 0...textArray.length) {
var money2:Alphabet = new Alphabet(400, (i * 70) + 550, textArray[i], true, false);
money2.camera = game.camOther;
getVar('textGroup2').add(money2);
setVar('money2', money2);
}
}
]])
runHaxeCode([[
function createCoolText3(textArray:Array<String>) {
for (i in 0...textArray.length) {
var money3:Alphabet = new Alphabet(380, (i * 70) + 690, textArray[i], true, false);
money3.camera = game.camOther;
getVar('textGroup3').add(money3);
setVar('money3', money3);
}
}
]])
runHaxeCode([[
function createCoolText4(textArray:Array<String>) {
for (i in 0...textArray.length) {
var money4:Alphabet = new Alphabet(430, (i * 70) + 810, textArray[i], true, false);
money4.camera = game.camOther;
getVar('textGroup4').add(money4);
setVar('money4', money4);
}
}
]])
runHaxeCode([[
function createCoolText5(textArray:Array<String>) {
for (i in 0...textArray.length) {
var money5:Alphabet = new Alphabet(350, (i * 70) + 930, textArray[i], true, false);
money5.camera = game.camOther;
getVar('textGroup5').add(money5);
setVar('money5', money5);
}
}
]])
--ta
runHaxeFunction('createCoolText', {{'Welcome'}})
runHaxeFunction('createCoolText2', {{'Unsettled'}})
runHaxeFunction('createCoolText3', {{'repentance'}})
runHaxeFunction('createCoolText4', {{'Manical'}})
runHaxeFunction('createCoolText5', {{'Welcome-old'}})
--pre coisas
setProperty('money.alpha', 1)
setProperty('money2.alpha', 0.5)
setProperty('money3.alpha', 0.5)
setProperty('money4.alpha', 0.5)
setProperty('money5.alpha', 0.5)
--icons
makeAnimatedLuaSprite('markus', nil, 780, 360)
loadGraphic('markus', 'icons/markus', 150, 150)
addAnimation('markus', 'neutral', {0}, 0, true)
setObjectCamera('markus', 'other')
playAnim('markus', 'neutral')
addLuaSprite('markus')

makeAnimatedLuaSprite('markusMad', nil, 820, 530)
loadGraphic('markusMad', 'icons/markus-mad', 150, 150)
addAnimation('markusMad', 'neutral', {0}, 0, true)
setObjectCamera('markusMad', 'other')
playAnim('markusMad', 'neutral')
addLuaSprite('markusMad')

makeAnimatedLuaSprite('markusCrazy', nil, 860, 280)
loadGraphic('markusCrazy', 'icons/markus-crazy', 150, 150)
addAnimation('markusCrazy', 'neutral', {0}, 0, true)
setObjectCamera('markusCrazy', 'other')
playAnim('markusCrazy', 'neutral')
addLuaSprite('markusCrazy')

makeAnimatedLuaSprite('markinhos', nil, 790, 260)
loadGraphic('markinhos', 'icons/marko', 150, 150)
addAnimation('markinhos', 'neutral', {0}, 0, true)
setObjectCamera('markinhos', 'other')
playAnim('markinhos', 'neutral')
addLuaSprite('markinhos')

makeAnimatedLuaSprite('martha', nil, 790, 260)
loadGraphic('martha', 'icons/martha', 150, 150)
addAnimation('martha', 'neutral', {0}, 0, true)
setObjectCamera('martha', 'other')
playAnim('martha', 'neutral')
addLuaSprite('martha')

makeAnimatedLuaSprite('markus-meme', nil, 910, 250)
loadGraphic('markus-meme', 'icons/awesome-fucking-markus', 150, 150)
addAnimation('markus-meme', 'neutral', {0}, 0, true)
setObjectCamera('markus-meme', 'other')
playAnim('markus-meme', 'neutral')
addLuaSprite('markus-meme')
-- Barras pretas
makeLuaSprite('barTop', '', -1280, 0)
makeGraphic('barTop', screenWidth, 50, '000000')
setObjectCamera('barTop', 'camOther')
addLuaSprite('barTop')

makeLuaSprite('barBot', '', screenWidth, 670)
makeGraphic('barBot', screenWidth, 50, '000000')
setObjectCamera('barBot', 'camOther')
addLuaSprite('barBot')

doTweenX('barTopIn', 'barTop', 0, 0.5, 'quartOut')
doTweenX('barBotIn', 'barBot', 0, 0.5, 'quartOut')
--ta
runHaxeCode([[
import flixel.FlxSprite;
var gradient:FlxSprite;

gradient = new FlxSprite().loadGraphic(Paths.image('menus/freeplay/gradient'));
game.addBehindGF(gradient);
gradient.y += 360;

setVar('gradient', gradient);
]])
setObjectCamera('gradient', 'camOther')
--android shit
makeAnimatedLuaSprite('upButton', 'androidPad', 0, 505)
addAnimationByPrefix('upButton', 'idle', 'up0', 24, false)
addAnimationByPrefix('upButton', 'press', 'up2', 24, false)
playAnim('upButton', 'idle', true)
setProperty('upButton.color', getColorFromHex('77FF00'))
scaleObject('upButton', 0.85, 0.85)
setObjectCamera('upButton', 'other')
addLuaSprite('upButton')

makeAnimatedLuaSprite('downButton', 'androidPad', 0, 610)
addAnimationByPrefix('downButton', 'idle', 'down0', 24, false)
addAnimationByPrefix('downButton', 'press', 'down2', 24, false)
playAnim('downButton', 'idle', true)
setProperty('downButton.color', getColorFromHex('FFB300'))
scaleObject('downButton', 0.85, 0.85)
setObjectCamera('downButton', 'other')
addLuaSprite('downButton')

makeAnimatedLuaSprite('BackButton', 'androidPad', 1060, 610)
addAnimationByPrefix('BackButton', 'idle', 'b', 24, false)
addAnimationByPrefix('BackButton', 'press', 'b2', 24, false)
playAnim('BackButton', 'idle', true)
setProperty('BackButton.color', getColorFromHex('FFB300'))
scaleObject('BackButton', 0.85, 0.85)
setObjectCamera('BackButton', 'other')
addLuaSprite('BackButton')

makeAnimatedLuaSprite('aButton', 'androidPad', 1170, 610)
addAnimationByPrefix('aButton', 'idle', 'a0', 24, false)
addAnimationByPrefix('aButton', 'press', 'a2', 24, false)
playAnim('aButton', 'idle')
setProperty('aButton.color', getColorFromHex('8400FF'))
setObjectCamera('aButton', 'other')
addLuaSprite('aButton')
scaleObject('aButton', 0.85, 0.85)

if buildTarget == 'windows' then
local items = {'upButton', 'downButton', 'aButton', 'BackButton'}
for i = 1,4 do setProperty(items[i]..'.visible', false)
end
end
end
function onUpdate(elapsed)
if keyJustPressed('up') or getMouseX('camOther') > getProperty('upButton.x') and getMouseY('camOther') > getProperty('upButton.y') and getMouseX('camOther') < getProperty('upButton.x') + getProperty('upButton.width') and getMouseY('camOther') < getProperty('upButton.y') + getProperty('upButton.height') and mouseReleased() then
changeItem(-1)
playAnim('upButton', 'press')
elseif keyJustPressed('down') or getMouseX('camOther') > getProperty('downButton.x') and getMouseY('camOther') > getProperty('downButton.y') and getMouseX('camOther') < getProperty('downButton.x') + getProperty('downButton.width') and getMouseY('camOther') < getProperty('downButton.y') + getProperty('downButton.height') and mouseReleased() then
playAnim('downButton', 'press')
changeItem(1)
end
if getProperty('controls.BACK') or getMouseX('camOther') > getProperty('BackButton.x') and getMouseY('camOther') > getProperty('BackButton.y') and getMouseX('camOther') < getProperty('BackButton.x') + getProperty('BackButton.width') and getMouseY('camOther') < getProperty('BackButton.y') + getProperty('BackButton.height') and mouseReleased() then
loadSong('menu')
elseif getProperty('controls.ACCEPT') or getMouseX('camOther') > getProperty('aButton.x') and getMouseY('camOther') > getProperty('aButton.y') and getMouseX('camOther') < getProperty('aButton.x') + getProperty('aButton.width') and getMouseY('camOther') < getProperty('aButton.y') + getProperty('aButton.height') and mouseReleased() then
if curSelected == 0 then
loadSong('welcome')
elseif curSelected == 1 then
loadSong('unsettled')
elseif curSelected == 2 then
loadSong('repentance')
elseif curSelected == 3 then
loadSong('manical')
elseif curSelected == 4 then
loadSong('welcome-old')
end
end
if curSelected == 0 then
setProperty('money.alpha', 1)
setProperty('money2.alpha', 0.5)
setProperty('money5.alpha', 0.5)
--icons
setProperty('markus.alpha', 1)
setProperty('markusMad.alpha', 0.5)
setProperty('markusCrazy.alpha', 0.5)
setProperty('markus-meme.alpha', 0.5)
--ta
startTween('ata', 'money', {y = 400}, 0.2, {ease = 'linear'})
startTween('ata2', 'money2', {y = 550}, 0.2, {ease = 'linear'})
startTween('ata3', 'money3', {y = 690}, 0.2, {ease = 'linear'})
startTween('ata4', 'money4', {y = 820}, 0.2, {ease = 'linear'})
startTween('ata5', 'money5', {y = 940}, 0.2, {ease = 'linear'})
--icon shit
startTween('fds', 'markus', {y = 360}, 0.2, {ease = 'linear'})
startTween('fds2', 'markusMad', {y = 530}, 0.2, {ease = 'linear'})
startTween('fds3', 'markusCrazy', {y = 680}, 0.2, {ease = 'linear'})
startTween('fds4', 'markinhos', {y = 790}, 0.2, {ease = 'linear'})
startTween('fds5', 'martha', {y = 790}, 0.2, {ease = 'linear'})
startTween('fds6', 'markus-meme', {y = 950}, 0.2, {ease = 'linear'})
elseif curSelected == 1 then
setProperty('money2.alpha', 1)
setProperty('money.alpha', 0.5)
setProperty('money3.alpha', 0.5)
--icons
setProperty('markus.alpha', 0.5)
setProperty('markusMad.alpha', 1)
setProperty('markusCrazy.alpha', 0.5)
--ta
startTween('ata', 'money', {y = 200}, 0.2, {ease = 'linear'})
startTween('ata2', 'money2', {y = 350}, 0.2, {ease = 'linear'})
startTween('ata3', 'money3', {y = 490}, 0.2, {ease = 'linear'})
startTween('ata4', 'money4', {y = 620}, 0.2, {ease = 'linear'})
startTween('ata5', 'money5', {y = 740}, 0.2, {ease = 'linear'})
--icon shit
startTween('fds', 'markus', {y = 160}, 0.2, {ease = 'linear'})
startTween('fds2', 'markusMad', {y = 330}, 0.2, {ease = 'linear'})
startTween('fds3', 'markusCrazy', {y = 480}, 0.2, {ease = 'linear'})
startTween('fds4', 'markinhos', {y = 590}, 0.2, {ease = 'linear'})
startTween('fds5', 'martha', {y = 590}, 0.2, {ease = 'linear'})
startTween('fds6', 'markus-meme', {y = 710}, 0.2, {ease = 'linear'})
elseif curSelected == 2 then
setProperty('money3.alpha', 1)
setProperty('money2.alpha', 0.5)
setProperty('money4.alpha', 0.5)
--icons
setProperty('markusMad.alpha', 0.5)
setProperty('markusCrazy.alpha', 1)
setProperty('markinhos.alpha', 0.5)
setProperty('martha.alpha', 0.5)
--ta
startTween('ata', 'money', {y = 10}, 0.2, {ease = 'linear'})
startTween('ata2', 'money2', {y = 160}, 0.2, {ease = 'linear'})
startTween('ata3', 'money3', {y = 300}, 0.2, {ease = 'linear'})
startTween('ata4', 'money4', {y = 430}, 0.2, {ease = 'linear'})
startTween('ata5', 'money5', {y = 550}, 0.2, {ease = 'linear'})
--icon shit
startTween('fds', 'markus', {y = -30}, 0.2, {ease = 'linear'})
startTween('fds2', 'markusMad', {y = 140}, 0.2, {ease = 'linear'})
startTween('fds3', 'markusCrazy', {y = 290}, 0.2, {ease = 'linear'})
startTween('fds4', 'markinhos', {y = 400}, 0.2, {ease = 'linear'})
startTween('fds5', 'martha', {y = 400}, 0.2, {ease = 'linear'})
startTween('fds6', 'markus-meme', {y = 530}, 0.2, {ease = 'linear'})
elseif curSelected == 3 then
setProperty('money4.alpha', 1)
setProperty('money3.alpha', 0.5)
setProperty('money5.alpha', 0.5)
--icons
setProperty('markusCrazy.alpha', 0.5)
setProperty('markinhos.alpha', 1)
setProperty('martha.alpha', 1)
setProperty('markus-meme.alpha', 0.5)
--ta
startTween('ata', 'money', {y = -150}, 0.2, {ease = 'linear'})
startTween('ata2', 'money2', {y = 20}, 0.2, {ease = 'linear'})
startTween('ata3', 'money3', {y = 160}, 0.2, {ease = 'linear'})
startTween('ata4', 'money4', {y = 290}, 0.2, {ease = 'linear'})
startTween('ata5', 'money5', {y = 410}, 0.2, {ease = 'linear'})
--icon shit
startTween('fds', 'markus', {y = -180}, 0.2, {ease = 'linear'})
startTween('fds2', 'markusMad', {y = 0}, 0.2, {ease = 'linear'})
startTween('fds3', 'markusCrazy', {y = 150}, 0.2, {ease = 'linear'})
startTween('fds4', 'markinhos', {y = 260}, 0.2, {ease = 'linear'})
startTween('fds5', 'martha', {y = 260}, 0.2, {ease = 'linear'})
startTween('fds6', 'markus-meme', {y = 390}, 0.2, {ease = 'linear'})
elseif curSelected == 4 then
setProperty('money5.alpha', 1)
setProperty('money4.alpha', 0.5)
setProperty('money.alpha', 0.5)
--icons
setProperty('markus.alpha', 0.5)
setProperty('markus-meme.alpha', 1)
setProperty('markinhos.alpha', 0.5)
setProperty('martha.alpha', 0.5)
--ta
startTween('ata', 'money', {y = -250}, 0.2, {ease = 'linear'})
startTween('ata2', 'money2', {y = -120}, 0.2, {ease = 'linear'})
startTween('ata3', 'money3', {y = 20}, 0.2, {ease = 'linear'})
startTween('ata4', 'money4', {y = 150}, 0.2, {ease = 'linear'})
startTween('ata5', 'money5', {y = 270}, 0.2, {ease = 'linear'})
--icon shit
startTween('fds', 'markus', {y = -280}, 0.2, {ease = 'linear'})
startTween('fds2', 'markusMad', {y = -130}, 0.2, {ease = 'linear'})
startTween('fds3', 'markusCrazy', {y = 10}, 0.2, {ease = 'linear'})
startTween('fds4', 'markinhos', {y = 120}, 0.2, {ease = 'linear'})
startTween('fds5', 'martha', {y = 120}, 0.2, {ease = 'linear'})
startTween('fds6', 'markus-meme', {y = 250}, 0.2, {ease = 'linear'})
end
end