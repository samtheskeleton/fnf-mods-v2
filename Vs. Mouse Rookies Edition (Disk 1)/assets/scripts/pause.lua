addHaxeLibrary('CustomSubstate', 'psychlua')
addHaxeLibrary('OptionsState', 'options')
addHaxeLibrary('MusicBeatState', 'backend')

local curSelected = 0
local menuList = {'Resume', 'Restart', 'Options', 'Exit Song'}
local isPenHere = false

luaDebugMode = true

function onPause()
openCustomSubstate('mickey_pause', true)
if buildTarget ~= 'windows' then
setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
end
return Function_Stop
end

function composer()
if songName:lower() == 'welcome' then
setTextString('credits', 'Nexsus')
elseif songName:lower() == 'unsettled' then
setTextString('credits', 'MAUREE SHEKKAI')
elseif songName:lower() == 'repentance' then
setTextString('credits', 'Saihed')
elseif songName:lower() == 'manical' then
setTextString('credits', 'ForFurtherNotice')
elseif songName:lower() == 'welcome-old' then
setTextString('credits', 'CrisNonsenseXd')
end
end

function onCreatePost()
makeLuaSprite('blackBG', nil)
makeGraphic('blackBG', screenWidth, screenHeight, '000000')
setProperty('blackBG.antialiasing', false)
setObjectCamera('blackBG', 'other');
setProperty('blackBG.alpha', 0.0001)
addLuaSprite('blackBG');
runHaxeCode([[
import flixel.FlxSprite;
var menuBar:FlxSprite;
var creditsBar:FlxSprite;
var selectThing:FlxSprite;

menuBar = new FlxSprite(-FlxG.width).loadGraphic(Paths.image('menus/pause/menuBar'));
creditsBar = new FlxSprite(FlxG.width * 2).loadGraphic(Paths.image('menus/pause/creditsBar'));
    
selectThing = new FlxSprite(-190, 50).loadGraphic(Paths.image('menus/mainmenu/Bar'));
selectThing.scale.set(0.5, 0.5);
selectThing.visible = false;

setVar('menuBar', menuBar);
setVar('creditsBar', creditsBar);
setVar('selectThing', selectThing);
//a
game.addBehindGF(menuBar);
game.addBehindGF(creditsBar);
game.addBehindGF(selectThing);
]])
setObjectCamera('menuBar', 'camOther')
setObjectCamera('creditsBar', 'camOther')
setObjectCamera('selectThing', 'camOther')
--uh
makeLuaText('continue', 'Resume', 360,0, 135)
setTextFont('continue', 'dokdo.ttf')
setObjectCamera('continue', 'other');
setTextColor('continue','FFFFFF')
addLuaText('continue')
setTextSize('continue', 64)

makeLuaText('reinicia', 'Restart', 440, 0, 260)
setTextAlignment('reinicia', 'Center')
setTextFont('reinicia', 'dokdo.ttf')
setObjectCamera('reinicia', 'other');
setTextColor('reinicia','FFFFFF')
addLuaText('reinicia')
setTextSize('reinicia', 64)

makeLuaText('Options', 'Options', 530, 0, 385)
setTextAlignment('Options', 'Center')
setTextFont('Options', 'dokdo.ttf')
setObjectCamera('Options', 'other');
setTextColor('Options','FFFFFF')
addLuaText('Options')
setTextSize('Options', 64)

makeLuaText('xau', 'Exit Song', 700, 0, 500)
setTextAlignment('xau', 'Center')
setTextFont('xau', 'dokdo.ttf')
setObjectCamera('xau', 'other');
setTextColor('xau','FFFFFF')
addLuaText('xau')
setTextSize('xau', 64)
--bo
runHaxeCode([[
var tweenSpeed = 0.5;
//blz?
FlxTween.tween(game.getLuaObject('continue'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('reinicia'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('Options'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('xau'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
]])
--texto
setProperty('continue.alpha', 0)
setProperty('reinicia.alpha', 0)
setProperty('Options.alpha', 0)
setProperty('xau.alpha', 0)  
--coisa importante
makeLuaText('musica', tostring(songName), screenWidth * 2, 0, 0) --10
setTextAlignment('musica', 'Center')
setObjectCamera('musica', 'other');
setTextFont('musica', 'dokdo.ttf')
addLuaText('musica')
setTextSize('musica', 64)
--morri
makeLuaText('credits', 'put some composer here', screenWidth * 2, 0, 50) --40
setTextAlignment('credits', 'Center')
setObjectCamera('credits', 'other');
setTextFont('credits', 'dokdo.ttf')
setTextSize('credits', 44)
addLuaText('credits')
--opa bom dia
composer()
--some
setProperty('musica.alpha', 0)
setProperty('credits.alpha', 0)
end
function onResume()
--blz
runHaxeCode([[
var tweenSpeed = 0.5;
FlxTween.tween(game.getLuaObject('selectThing'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('menuBar'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('creditsBar'), {x: FlxG.width * 2}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('blackBG'), {alpha: 0}, tweenSpeed, {ease: FlxEase.expoIn});
//blz?
FlxTween.tween(game.getLuaObject('continue'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('reinicia'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('Options'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('xau'), {x: -FlxG.width}, tweenSpeed, {ease: FlxEase.expoIn});
//tung tung tung tung tung sahur
FlxTween.tween(game.getLuaObject('musica'), {x: 170}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('credits'), {x: 170}, tweenSpeed, {ease: FlxEase.expoIn});
]])
end
function onCustomSubstateCreate(name)
if name == 'mickey_pause' then
playSound('breakfast', 1, 'breakfast')
playSound('menu/scroll')
--ta
runHaxeCode([[
var tweenSpeed = 0.5;
FlxTween.tween(game.getLuaObject('menuBar'), {x: 0}, tweenSpeed, {ease: FlxEase.expoOut});
FlxTween.tween(game.getLuaObject('selectThing'), {x: -190}, tweenSpeed, {ease: FlxEase.expoOut});
FlxTween.tween(game.getLuaObject('creditsBar'), {x: FlxG.width - game.getLuaObject('creditsBar').width}, tweenSpeed, {ease: FlxEase.expoOut});
FlxTween.tween(game.getLuaObject('blackBG'), {alpha: 0.6}, tweenSpeed, {ease: FlxEase.expoInOut});
game.getLuaObject('selectThing').visible = true;
//blz?
FlxTween.tween(game.getLuaObject('continue'), {x: 0}, tweenSpeed, {ease: FlxEase.expoInOut});
FlxTween.tween(game.getLuaObject('reinicia'), {x: 5}, tweenSpeed, {ease: FlxEase.expoInOut});
FlxTween.tween(game.getLuaObject('Options'), {x: 10}, tweenSpeed, {ease: FlxEase.expoInOut});
FlxTween.tween(game.getLuaObject('xau'), {x: 5}, tweenSpeed, {ease: FlxEase.expoInOut});
//tung tung tung tung tung sahur
FlxTween.tween(game.getLuaObject('musica'), {x: -170}, tweenSpeed, {ease: FlxEase.expoIn});
FlxTween.tween(game.getLuaObject('credits'), {x: -170}, tweenSpeed, {ease: FlxEase.expoIn});
]])
--ave
setProperty('musica.alpha', 1)
setProperty('credits.alpha', 1)
--texto
setProperty('continue.alpha', 1)
setProperty('reinicia.alpha', 1)
setProperty('Options.alpha', 1)
setProperty('xau.alpha', 1)
--android
if buildTarget ~= 'windows' then
makeAnimatedLuaSprite('upButton', 'androidPad', 0, 505)
		addAnimationByPrefix('upButton', 'idle', 'up0', 24, false)
		addAnimationByPrefix('upButton', 'press', 'up2', 24, false)
		playAnim('upButton', 'idle', true)
		setProperty('upButton.color', getColorFromHex('B3FF5D'))
		scaleObject('upButton', 0.85, 0.85)
		insertToCustomSubstate('upButton')

		makeAnimatedLuaSprite('downButton', 'androidPad', 0, 610)
		addAnimationByPrefix('downButton', 'idle', 'down0', 24, false)
		addAnimationByPrefix('downButton', 'press', 'down2', 24, false)
		playAnim('downButton', 'idle', true)
		setProperty('downButton.color', getColorFromHex('D0D0FF'))
		scaleObject('downButton', 0.85, 0.85)
		insertToCustomSubstate('downButton')

		makeAnimatedLuaSprite('aButton', 'androidPad', 1170, 610)
		addAnimationByPrefix('aButton', 'idle', 'a0', 24, false)
		addAnimationByPrefix('aButton', 'press', 'a2', 24, false)
		playAnim('aButton', 'idle')
		setProperty('aButton.color', getColorFromHex('FFBFD4'))
		scaleObject('aButton', 0.85, 0.85)
		insertToCustomSubstate('aButton')
end
end
end
function onCustomSubstateUpdate(name)
if name == 'mickey_pause' then
if (buildTarget == 'windows' and keyJustPressed('up') or (getMouseX('camOther') > getProperty('upButton.x') and getMouseY('camOther') > getProperty('upButton.y') and getMouseX('camOther') < getProperty('upButton.x') + getProperty('upButton.width') and getMouseY('camOther') < getProperty('upButton.y') + getProperty('upButton.height'))) and mouseClicked() then
changeItem(-1)
playAnim('upButton', 'press')
elseif (buildTarget == 'windows' and keyJustPressed('down') or (getMouseX('camOther') > getProperty('downButton.x') and getMouseY('camOther') > getProperty('downButton.y') and getMouseX('camOther') < getProperty('downButton.x') + getProperty('downButton.width') and getMouseY('camOther') < getProperty('downButton.y') + getProperty('downButton.height') and mouseClicked())) then
playAnim('downButton', 'press')
changeItem(1)
end  
if (buildTarget == 'windows' and getProperty('controls.ACCEPT') or (getMouseX('camOther') > getProperty('aButton.x') and getMouseY('camOther') > getProperty('aButton.y') and getMouseX('camOther') < getProperty('aButton.x') + getProperty('aButton.width') and getMouseY('camOther') < getProperty('aButton.y') + getProperty('aButton.height') and mouseClicked())) then
if curSelected == 0 then
closeCustomSubstate()
elseif curSelected == 1 then
restartSong()
elseif curSelected == 2 then
runHaxeCode([[
//shit
MusicBeatState.switchState(new OptionsState());
FlxG.autoPause = false;
OptionsState.onPlayState = true;
]])
elseif curSelected == 3 then
loadSong('menu')
end 
playAnim('aButton', 'press')
end 
if curSelected == 0 then
setProperty('selectThing.x', -190)
setProperty('selectThing.y', 50)
elseif curSelected == 1 then
setProperty('selectThing.x', -150)
setProperty('selectThing.y', 175)
elseif curSelected == 2 then
setProperty('selectThing.x', -100)
setProperty('selectThing.y', 300)
elseif curSelected == 3 then
setProperty('selectThing.x', -25)
setProperty('selectThing.y', 415)
end
end
end

function changeItem(change)
playSound('menu/scroll')
curSelected = curSelected + change
if curSelected >= #menuList then
curSelected = 0
elseif curSelected < 0 then
curSelected = #menuList - 1
end
end

function onSoundFinished(tag)
if tag == 'breakfast' then
playSound('breakfast', 1, 'breakfast')
end
end

function onCustomSubstateDestroy(name)
if name == 'mickey_pause' then
stopSound('breakfast')
if not buildTarget == 'windows' then
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
end
end
end

function onDestroy()
if buildTarget ~= 'windows' then
setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
end
end