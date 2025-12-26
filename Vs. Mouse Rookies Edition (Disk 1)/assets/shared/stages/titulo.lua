function onPause() return Function_Stop end

function onCreate()
addHaxeLibrary('FlxTypedGroup', 'flixel.group')
addHaxeLibrary('Alphabet', 'objects')
setProperty('skipCountdown', true)
--title
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
]])
setObjectCamera('bgBlue', 'camOther')
setObjectCamera('bubbBig', 'camOther')
setObjectCamera('bubbSmall', 'camOther')
--ok
makeLuaSprite('mickheads', 'menus/titlescreen/mickheads', 0, 0)
setObjectCamera('mickheads', 'camOther')
addLuaSprite('mickheads')

makeLuaSprite('logo', 'menus/titlescreen/logoo', 0, 0)
setObjectCamera('logo', 'camOther')
addLuaSprite('logo')

makeLuaSprite('start', 'menus/titlescreen/start', 0, 0)
setObjectCamera('start', 'camOther')
addLuaSprite('start')

makeLuaSprite('borders', 'menus/titlescreen/borders', 0, 0)
setObjectCamera('borders', 'camOther')
addLuaSprite('borders')
--newGrounds
runHaxeCode([[
import flixel.FlxSprite;
var ngSpr:FlxSprite;

ngSpr = new FlxSprite(0, FlxG.height * 0.52).loadGraphic(Paths.image('menus/titlescreen/newgrounds_logo'));
add(ngSpr);
ngSpr.visible = false;
ngSpr.setGraphicSize(Std.int(ngSpr.width * 0.8));
ngSpr.updateHitbox();
ngSpr.screenCenter(0x01);
ngSpr.antialiasing = true;

setVar('ngSpr', ngSpr);
]])
setObjectCamera('ngSpr', 'camOther')
runHaxeCode([[
for (t in [game.getLuaObject('bubbBig'), game.getLuaObject('bubbSmall'),game.getLuaObject('mickheads'), game.getLuaObject('logo'), game.getLuaObject('start'), game.getLuaObject('borders')]) {
        t.scale.set(0.55, 0.55);
        t.screenCenter();
    }

    game.getLuaObject('bubbBig').velocity.y = 30;
    game.getLuaObject('bubbSmall').velocity.y = 70;
    
    game.getLuaObject('start').x -= 11; game.getLuaObject('start').y += 30;
]])
--android shit
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
   scaleObject('aButton', 0.85, 0.85)
   setObjectCamera('aButton', 'other')
   addLuaSprite('aButton')
--a
if initalized then skipIntro() else initalized = true end

    runHaxeCode([[
	var textGroup:FlxTypedGroup = new FlxTypedGroup();
	add(textGroup);
	setVar('textGroup', textGroup);
    ]])

    runHaxeCode([[
	function createCoolText(textArray:Array<String>) {
    	    for (i in 0...textArray.length) {
			var money:Alphabet = new Alphabet(0, (i * 60) + 200, textArray[i], true);
			money.camera = game.camOther;
			money.screenCenter(0x01);
			getVar('textGroup').add(money);
    		}
	}

	function addMoreText(text:String) {
    	    var coolText:Alphabet = new Alphabet(0, (getVar('textGroup').length * 60) + 200, text, true);
    	    coolText.camera = game.camOther;
    	    coolText.screenCenter(0x01);
    	    getVar('textGroup').add(coolText);
	}

	function deleteCoolText() {
    	    while (getVar('textGroup').members.length > 0 ) {
		getVar('textGroup').remove(getVar('textGroup').members[0], true);
    	    }
	}
]])
if buildTarget == 'windows' then
setProperty('aButton.alpha', 0)
setProperty('BackButton.alpha', 0)
end
end
function onSongStart()
runHaxeCode([[
FlxTween.tween(game.getLuaObject('mickheads'), {y: game.getLuaObject('mickheads').y + 20}, 1.7, {ease: FlxEase.quadInOut, type: FlxTween.PINGPONG});
]])
end
function flw()
pressedEnter = true transitioning = true
cameraFlash('camOther', 'FFFFFF', 1)
playAnim('aButton', 'press')
--cancelTween('mickheads')
--shi
runHaxeCode([[
import flixel.effects.FlxFlicker;
var tweenSpeed = 1.2;
    game.getLuaObject('mickheads').screenCenter();
    
    FlxFlicker.flicker(game.getLuaObject('start'), 2, 0.06);

    FlxG.camera.flash(FlxColor.WHITE, 1, null, true);
    FlxG.sound.play(Paths.sound('menu/confirm'), 1);

    FlxTween.tween(game.getLuaObject('borders').scale, {x: 0.8, y: 0.8}, tweenSpeed + 0.5, {ease: FlxEase.quartOut});

    FlxTween.tween(game.getLuaObject('logo'), {y: game.getLuaObject('logo').y - 700}, tweenSpeed, {ease: FlxEase.quartIn});
    FlxTween.tween(game.getLuaObject('start'), {y: game.getLuaObject('start').y - 700}, tweenSpeed, {ease: FlxEase.quartIn});
    FlxTween.tween(game.getLuaObject('mickheads'), {y: game.getLuaObject('mickheads').y -700}, tweenSpeed, {ease: FlxEase.quartIn});
]])
--ok
runTimer('a', 1)
runTimer('endieSong', 1.25)
end
function onUpdate(elapsed)
if getProperty('controls.BACK') or getMouseX('camOther') > getProperty('BackButton.x') and getMouseY('camOther') > getProperty('BackButton.y') and getMouseX('camOther') < getProperty('BackButton.x') + getProperty('BackButton.width') and getMouseY('camOther') < getProperty('BackButton.y') + getProperty('BackButton.height') and mouseReleased() then
exitSong()
elseif getProperty('controls.ACCEPT') or getMouseX('camOther') > getProperty('aButton.x') and getMouseY('camOther') > getProperty('aButton.y') and getMouseX('camOther') < getProperty('aButton.x') + getProperty('aButton.width') and getMouseY('camOther') < getProperty('aButton.y') + getProperty('aButton.height') and mouseReleased() and not skippedIntro then
skipIntro()
playAnim('aButton', 'press')
runTimer('a', 1)
runTimer('bora', 1)
elseif getProperty('controls.ACCEPT') or getMouseX('camOther') > getProperty('aButton.x') and getMouseY('camOther') > getProperty('aButton.y') and getMouseX('camOther') < getProperty('aButton.x') + getProperty('aButton.width') and getMouseY('camOther') < getProperty('aButton.y') + getProperty('aButton.height') and mouseReleased() and skippedIntro and not pressedEnter then
flw()
end
end
function onUpdatePost()
if bora == true then
if getProperty('controls.ACCEPT') or getMouseX('camOther') > getProperty('aButton.x') and getMouseY('camOther') > getProperty('aButton.y') and getMouseX('camOther') < getProperty('aButton.x') + getProperty('aButton.width') and getMouseY('camOther') < getProperty('aButton.y') + getProperty('aButton.height') and mouseReleased() and transitioning then
flw()
end
end
end
function onTimerCompleted(tag) 
if tag == 'endieSong' then 
loadSong('menu')
    elseif tag == 'a' then
     playAnim('aButton', 'idle')
     elseif tag == 'bora' then
     bora = true
    end
end
function onBeatHit()
runHaxeCode([[
var logoTween:FlxTween;
game.getLuaObject('logo').scale.x += 0.02; game.getLuaObject('logo').scale.y += 0.02;
logoTween = FlxTween.tween(game.getLuaObject('logo').scale, {x: 0.55, y: 0.55}, 0.4, {ease: FlxEase.sineOut, onComplete: function(twn:FlxTween) {logoTween = null;}});
]])
    if skippedIntro then return end
    if curBeat == 1 then runHaxeFunction('createCoolText', {{'forfurthernotice', 'hallmonitor'}})
    elseif curBeat == 3 then runHaxeFunction('addMoreText', {'present'})
    elseif curBeat == 4 then runHaxeFunction('deleteCoolText')
    elseif curBeat == 5 then runHaxeFunction('createCoolText', {{'Not in association','with'}})
    elseif curBeat == 7 then runHaxeFunction('addMoreText', {'Newgrounds'}) setProperty('ngSpr.visible', true) --coisa da newGrounds
    elseif curBeat == 8 then runHaxeFunction('deleteCoolText') setProperty('ngSpr.visible', false) --xau newgrounds
    elseif curBeat == 9 then runHaxeFunction('createCoolText', {{'Cant add ndlls'}})
    elseif curBeat == 11 then runHaxeFunction('addMoreText', {'Or can i'})
    elseif curBeat == 12 then runHaxeFunction('deleteCoolText')
    elseif curBeat == 13 then runHaxeFunction('addMoreText', {'Vs'})
    elseif curBeat == 14 then runHaxeFunction('addMoreText', {'Mouse'})
    elseif curBeat == 15 then
	runHaxeFunction('addMoreText', {'Rookies Edition'})
    elseif curBeat == 16 then
	skipIntro()
    end
end
function onCreatePost()
setProperty('camHUD.alpha', 0)
setProperty('dad.alpha', 0)
setProperty('gf.alpha', 0)
setProperty('boyfriend.alpha', 0)
runHaxeCode([[
for (i in [game.getLuaObject('bgBlue'),game.getLuaObject('bubbBig'), game.getLuaObject('bubbSmall'),game.getLuaObject('mickheads'), game.getLuaObject('logo'), game.getLuaObject('start'), game.getLuaObject('borders')]) {
i.alpha = 0;
}
]])
end
function skipIntro()
if not skippedIntro then
cameraFlash('camOther', 'FFFFFF', 1)
runHaxeCode("remove(getVar('textGroup'));")
setProperty('ngSpr.visible', false) --some coisa da newGrounds
runHaxeCode([[
for (b in [game.getLuaObject('bgBlue'),game.getLuaObject('bubbBig'), game.getLuaObject('bubbSmall'),game.getLuaObject('mickheads'), game.getLuaObject('logo'), game.getLuaObject('start'), game.getLuaObject('borders')]) {
b.alpha = 1;
}
]])
skippedIntro = true
end
end