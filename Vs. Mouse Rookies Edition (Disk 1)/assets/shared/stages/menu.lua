-- mods/scripts/customMainMenu.lua
local optionShit = {'Story','Extras','Options','Credits'}
local menuItems = {}
local menuBar
local render
local logo
local curSelected = 0
local canSelect = false
local menuY = 0
local barY = 0
local selectY = 186 --146
local menuBars = {}

function onPause() return Function_Stop end

function onStartCountdown()
if not allowCountdown then
allowCountdown = true
pera()
return Function_Stop;
end
return Function_Continue;
end

function changeItem(change)
playSound('menu/scroll')
curSelected = curSelected + change
if curSelected >= #optionShit then
curSelected = 0
elseif curSelected < 0 then
curSelected = #optionShit - 1
end
end
function onCreate()
addLuaScript('scripts/endSong')
runTimer('bop', 0.6)
end
function pera()
--musiquinha
runTimer('enableSelection', 1)
playMusic('freakyMenu', 1, true);
addHaxeLibrary('OptionsState', 'options')
addHaxeLibrary('CreditsState', 'states')
addHaxeLibrary('MusicBeatState', 'backend')
--blz
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
for (t in [game.getLuaObject('bubbBig'), game.getLuaObject('bubbSmall'),game.getLuaObject('logo')]) {
t.scale.set(0.55, 0.55);
t.screenCenter();
}
]])
setObjectCamera('bgBlue', 'camOther')
setObjectCamera('bubbBig', 'camOther')
setObjectCamera('bubbSmall', 'camOther')
    -- Cria render
    runHaxeCode([[
    import flixel.FlxSprite;
var render:FlxSprite;
    render = new FlxSprite().loadGraphic(Paths.image('menus/mainmenu/Render'));
    render.scale.set(0.25, 0.25);
    render.setPosition(-FlxG.width, -800);
    render.antialiasing = true;
    render.alpha = 0;
    FlxTween.tween(render, {x: -880, alpha: 1}, 1, {ease: FlxEase.quartOut});
    add(render);
    setVar('render', render);
]])
    setObjectCamera('render', 'camOther')
-- Cria barra de seleção
    makeLuaSprite('menuBar', 'menus/mainmenu/Bar', 1120, selectY)
    scaleObject('menuBar', 0.5, 0.5)
    addLuaSprite('menuBar')
    setObjectCamera('menuBar', 'camOther')
    startTween('menuBarTween', 'menuBar', {x = getProperty('menuBar.x') - 300}, 1, {ease = 'quartOut'})

-- Cria os itens do menu
makeLuaSprite('menuItemStory', 'menus/mainmenu/Story', 525, 223)
setProperty('menuItemStory.x', getProperty('menuItemStory.x') + 350)
setObjectCamera('menuItemStory', 'camOther')
scaleObject('menuItemStory', 0.5, 0.5)
setProperty('menuItemStory.x', getProperty('menuItemStory.x') + 500)
startTween('menuStoryTweem', 'menuItemStory', {x = getProperty('menuItemStory.x') - 500}, 1, {ease = 'quartOut'})
addLuaSprite('menuItemStory')

makeLuaSprite('menuItemExtras', 'menus/mainmenu/Extras', 580, 313)
setProperty('menuItemExtras.x', getProperty('menuItemExtras.x') + 350)
setObjectCamera('menuItemExtras', 'camOther')
scaleObject('menuItemExtras', 0.5, 0.5)
setProperty('menuItemExtras.x', getProperty('menuItemExtras.x') + 500)
startTween('menuExtrasTweem', 'menuItemExtras', {x = getProperty('menuItemExtras.x') - 500}, 1, {ease = 'quartOut'})
addLuaSprite('menuItemExtras')

makeLuaSprite('menuItemOptions', 'menus/mainmenu/Options', 575, 413)
setProperty('menuItemOptions.x', getProperty('menuItemOptions.x') + 350)
setObjectCamera('menuItemOptions', 'camOther')
scaleObject('menuItemOptions', 0.5, 0.5)
setProperty('menuItemOptions.x', getProperty('menuItemOptions.x') + 500)
startTween('menuOptionsTweem', 'menuItemOptions', {x = getProperty('menuItemOptions.x') - 500}, 1, {ease = 'quartOut'})
addLuaSprite('menuItemOptions')

makeLuaSprite('menuItemCredits', 'menus/mainmenu/Credits', 565, 513)
setProperty('menuItemCredits.x', getProperty('menuItemCredits.x') + 350)
setObjectCamera('menuItemCredits', 'camOther')
scaleObject('menuItemCredits', 0.5, 0.5)
setProperty('menuItemCredits.x', getProperty('menuItemCredits.x') + 500)
startTween('menuCreditsTweem', 'menuItemCredits', {x = getProperty('menuItemCredits.x') - 500}, 1, {ease = 'quartOut'})
addLuaSprite('menuItemCredits')

menuY = menuY + 90
    -- Logo
    makeLuaSprite('logo', 'menus/mainmenu/Logo', 700, 5)
    scaleObject('logo', 0.5, 0.5)
    addLuaSprite('logo')
    setObjectCamera('logo', 'camOther')
    setProperty('logo.y', getProperty('logo.y') - 300)
    startTween('logoTween', 'logo', {y = getProperty('logo.y') + 350}, 1, {ease = 'quartOut'})

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
loadSong('vs-mouse-rookies-team')
elseif getProperty('controls.ACCEPT') or getMouseX('camOther') > getProperty('aButton.x') and getMouseY('camOther') > getProperty('aButton.y') and getMouseX('camOther') < getProperty('aButton.x') + getProperty('aButton.width') and getMouseY('camOther') < getProperty('aButton.y') + getProperty('aButton.height') and mouseReleased() then
playSound('confirmMenu', 1);
runHaxeCode([[
//FlxTween.tween(game.getLuaObject('menuBar'), {y: FlxG.height / 2 - game.getLuaObject('menuBar').height / 2}, 0.6, {ease: FlxEase.circOut});
FlxTween.tween(game.getLuaObject('menuBar').scale, {x: 0.6, y: 0.6}, 0.6, {ease: FlxEase.circOut});
FlxTween.tween(game.getLuaObject('render'), {x: -FlxG.width, alpha: 0}, 1, {ease: FlxEase.quartOut});
new FlxTimer().start(0.5, function(_) {
FlxG.camera.fade(FlxColor.BLACK, 0.4, false, null);
});
]])
runTimer(nome, 0.9)
runTimer('rapaliga', 0.1)
if curSelected == 0 then
--pisca
runHaxeCode([[
import flixel.effects.FlxFlicker;
FlxFlicker.flicker(game.getLuaObject('menuItemStory'), 0.06, 0.15);
//ups
FlxTween.tween(game.getLuaObject('menuItemStory').scale, {x: 0.6, y: 0.6}, 0.6, {ease: FlxEase.circOut});        
//some
FlxTween.tween(game.getLuaObject('menuItemExtras'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemOptions'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemCredits'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
]])
elseif curSelected == 1 then
runHaxeCode([[
import flixel.effects.FlxFlicker;
FlxFlicker.flicker(game.getLuaObject('menuItemExtras'), 0.06, 0.15);
//ups
FlxTween.tween(game.getLuaObject('menuItemExtras').scale, {x: 0.6, y: 0.6}, 0.6, {ease: FlxEase.circOut});        
//some
FlxTween.tween(game.getLuaObject('menuItemStory'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemOptions'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemCredits'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
]])
elseif curSelected == 2 then
runHaxeCode([[
import flixel.effects.FlxFlicker;
FlxFlicker.flicker(game.getLuaObject('menuItemOptions'), 0.06, 0.15);
//ups
FlxTween.tween(game.getLuaObject('menuItemOptions').scale, {x: 0.6, y: 0.6}, 0.6, {ease: FlxEase.circOut});        
//some
FlxTween.tween(game.getLuaObject('menuItemStory'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemExtras'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemCredits'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
//shit
MusicBeatState.switchState(new OptionsState());
FlxG.autoPause = false;
OptionsState.onPlayState = true;
]])
elseif curSelected == 3 then
debugPrint('this will reset the menu so open this shit again bye')
--o merda
runHaxeCode([[
import flixel.effects.FlxFlicker;
FlxFlicker.flicker(game.getLuaObject('menuItemCredits'), 0.06, 0.15);
//ups
FlxTween.tween(game.getLuaObject('menuItemCredits').scale, {x: 0.6, y: 0.6}, 0.6, {ease: FlxEase.circOut});        
//some
FlxTween.tween(game.getLuaObject('menuItemStory'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemExtras'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
FlxTween.tween(game.getLuaObject('menuItemOptions'), {alpha: 0}, 0.3, {ease: FlxEase.cubeOut});
//shit
MusicBeatState.switchState(new CreditsState());
FlxG.autoPause = false;
CreditsState.onPlayState = true;
]])
end
end
if canSelect == true then
if curSelected == 0 then
nome = 'story mode'
setDataFromSave('Mano','Saveshit', true)
startTween('fds', 'menuBar', {y = 186}, 0.080, {ease = 'linear'})
elseif curSelected == 1 then
nome = 'freeplay'
setDataFromSave('Mano','Saveshit', false)
startTween('fds', 'menuBar', {y = 276}, 0.080, {ease = 'linear'})
elseif curSelected == 2 then
nome = 'options'
startTween('fds', 'menuBar', {y = 373}, 0.080, {ease = 'linear'})
elseif curSelected == 3 then
nome = 'credits'
startTween('fds', 'menuBar', {y = 473}, 0.080, {ease = 'linear'})
end
end
end
function onTimerCompleted(tag)
if tag == 'enableSelection' then
debugPrint('opa')
canSelect = true
elseif tag == 'rapaliga' then
canSelect = false
elseif tag == 'story mode' then
loadSong('welcome')
elseif tag == 'freeplay' then
loadSong('freeplay')
elseif tag == 'credits' then
debugPrint('aiii aiii aiiii aiiiiiiiii')
elseif tag == 'bop' then
runHaxeCode([[
var logoScTween:FlxTween;
game.getLuaObject('logo').scale.set(game.getLuaObject('logo').scale.x + 0.01, game.getLuaObject('logo').scale.y + 0.01);
logoScTween = FlxTween.tween(game.getLuaObject('logo').scale, {x: 0.5, y: 0.5}, 0.4, {ease: FlxEase.sineOut, onComplete: function(twn:FlxTween) {logoScTween = null;} });
]])
runTimer('bop1', 0.6)
elseif tag == 'bop1' then
runHaxeCode([[
var logoScTween:FlxTween;
game.getLuaObject('logo').scale.set(game.getLuaObject('logo').scale.x + 0.01, game.getLuaObject('logo').scale.y + 0.01);
logoScTween = FlxTween.tween(game.getLuaObject('logo').scale, {x: 0.5, y: 0.5}, 0.4, {ease: FlxEase.sineOut, onComplete: function(twn:FlxTween) {logoScTween = null;} });
]])
runTimer('bop', 0.6)
end
end