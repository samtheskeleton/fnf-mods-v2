var allowCountdown = false
var stops = 0
var resetHideHud = false
var comboGone = true
var dialogue = { 'ENOUGH.', 'whit', 'YOU THINK THIS IS FUCKING FUNNY? PUSHING ME TO MY ABSOLUTE GODDAMN LIMIT?!', 'whit', 'BEEP BOP. BIDOOP BA.', 'bf', 'I SEE HOW IT IS ){.', 'whit', 'YOU\'RE NOTHING BUT A MONSTER.', 'whit', 'A COLD, LIFELESS SHITHEEL WITHOUT SYMPATHY OR MORALS.', 'whit', 'I\'LL TAKE YOU OUT RIGHT WHERE YOU STAND.', 'whit', 'SAY YOUR PRAYERS, ASSHOLE.', 'whit', '' }
var canAdvance = false
var textScale = 2.3
var textX = 1280 / 2 - ((1280/2 - 70) / textScale)
var textY = 720 * 0.8

function onStartCountdown()
	-- Block the first countdown && start a timer of 0.8 seconds to play the dialogue

	if(!allowCountdown && isStoryMode && !seenCutscene ){
		
		triggerEvent('Change Character','bf','bf')
		triggerEvent('Change Character','dad','diet-whitty')
		setProperty('inCutscene', true);
		if(stops == 0 ){
			makeAnimatedLuaSprite('whit','hqr/cuttinDeezeBalls',-400,-100)
			addAnimationByPrefix('whit','crazy','Whitty Ballistic Cutscene',24,false)
			objectPlayAnimation('whit','crazy',true)
			addLuaSprite('whit',true)
			setProperty('dad.visible',false)
			setProperty('camGame.zoom',1.2)
			cameraShake('game',0.001,2)
			doTweenZoom('www','camGame',1.4,2,'linear')
			doTweenAngle('wwwrty','camGame',3,2,'linear')
			setProperty('camFollowPos.x',600)
			setProperty('camFollowPos.y',300)
			runTimer('kfin',10.1)
			runTimer('mthrow',87/24)
			runTimer('mslam',86/24)
			runTimer('yyy',80/24)
			runTimer('solja',128/24)
			runTimer('rumble',123/24)
			runTimer('stopfx',135/24)
			runTimer('23',155/24)
			runTimer('toe',158/24)
			runTimer('flashhh',2+(158/24))
			runTimer('mbreak',52/24)
			playSound('windLmao')
			objectPlayAnimation('stage','BallisticBackgroundStart',false);
		}
		if(stops == 1 ){
			setProperty('camGame._fxFadeAlpha', 0);
			cameraFlash('game','FFFFFF',0.8)
			objectPlayAnimation('stage','BallisticBackground',false);
			setProperty('dad.visible',true)
			setProperty('whit.visible',false)
			triggerEvent('Change Character','dad','whitbonkers-hqr')
			triggerEvent('Change Character','bf','bf-hqr')
			runTimer('startDialogue', 0.8);
			allowCountdown = true;
		}
		stops = stops + 1
		return Function_Stop;
	}
	soundFadeOut('rumb-hqr', 4);
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if(tag == 'startDialogue' ){ -- Timer completed, play dialogue

		startDialogue('dialogue','rumb');
	}
	if(tag == 'moveHead' ){
		onTweenCompleted('swapbfTowhit');
		setProperty('dialogueText.visible', false);
		setProperty('dialogueTextUpper.visible', false);
		setTextString('dialogueText', dialogue[1]);
		setProperty('dialogueText.y', calcTextY('dialogueText'));
		setTextString('dialogueTextUpper', dialogue[1]);
		setProperty('dialogueTextUpper.y', textY - 5);
		curDial = dialogue[2];
		table.remove(dialogue, 1);
		table.remove(dialogue, 1);
		runTimer('fakeDance', 0);
	}
	if(tag == 'fakeDance' ){
		characterDance('boyfriend');
		characterDance('dad');
		if(getProperty('inCutscene') ){
			runTimer('fakeDance', crochet / 1000);
		}
	}

	if(tag == 'kfin' ){
		startCountdown()
	}
	if(tag == '22' ){
	}
	if(tag == '23' ){
		doTweenZoom('www','camGame',1,0.1,'circIn')
		doTweenAngle('wwwrty','camGame',-3,0.1,'circIn')
	}
	if(tag == 'mthrow' ){
		playSound('micThrow-hqr')
	}
	if(tag == 'mslam' ){
		doTweenY('wwfwGG','camFollowPos',350,0.3,'circInOut')
		playSound('slammin')
	}
	if(tag == 'mbreak' ){
		playSound('micBreak')
		cameraShake('game',0.004,0.2)
		doTweenZoom('www','camGame',1.5,0.4,'circIn')
	}
	if(tag == 'yyy' ){
		doTweenAngle('wwwrgfgty','camGame',0,0.1,'circIn')
		doTweenY('wwwhGG','camFollowPos',250,0.3,'circInOut')
	}
	if(tag == 'solja' ){
    	objectPlayAnimation('stage','BallisticBackgroundGo',false);
		playSound('souljaboyCrank')
		cameraShake('game',0.01,0.2)
	}
	if(tag == 'rumble' ){
		doTweenY('wwwGG','camFollowPos',300,1.4,'circIn')
		playSound('rumb-hqr', 1, 'rumb-hqr')
	}
	if(tag == 'toe' ){
		playSound('ouchMyToe')
		cameraShake('game',0.05,3.5)
		doTweenZoom('wwwrr','camGame',0.9,3.5,'sineOut')
		doTweenAngle('wwwrgfgty','camGame',0,0.1,'circIn')
	}
	if(tag == 'flashhh' ){
		cameraFade('game','FFFFFF',1)
	}
end

var curDial = 'whit'
function calcTextY(tag)
	var th = getProperty(tag .. '.textField.textHeight');
	textY = screenHeight * 0.8 + (th + 4) / 2;
	return textY;
end

function proceedDialogue()
	-- lua arrays start at 1!
	setProperty('dialogueText.visible', false);
	setProperty('dialogueTextUpper.visible', false);
	if(dialogue[1] ~= '' ){ 
		setTextString('dialogueText', dialogue[1]);
		setProperty('dialogueText.y', calcTextY('dialogueText'));
		setTextString('dialogueTextUpper', dialogue[1]);
		setProperty('dialogueTextUpper.y', textY - 5);
		if(dialogue[2] ~= curDial ){
			var newDial = dialogue[2];
			doTweenX('gradP1move', 'gradP1', screenWidth, 0.3, 'linear');
			doTweenX('gradP2move', 'gradP2', screenWidth, 0.3, 'linear');
			doTweenX('swap' .. curDial .. 'ShadowTo' .. newDial, curDial .. 'HeadShadow', 888 + 488 + 5, 0.3, 'linear');
			doTweenX('swap' .. curDial .. 'To' .. newDial, curDial .. 'Head', 888 + 488, 0.3, 'linear');
			curDial = newDial;
			if(curDial == 'whit' ){
				doTweenX('focusCamX', 'camFollowPos', 600, 1.5, 'expoOut');
				doTweenY('focusCamY', 'camFollowPos', 300, 1.5, 'expoOut');
			else
				doTweenX('focusCamX', 'camFollowPos', 1200, 1.5, 'expoOut');
				doTweenY('focusCamY', 'camFollowPos', 600, 1.5, 'expoOut');
			}
		else
			setProperty('dialogueText.visible', true);
			setProperty('dialogueTextUpper.visible', true);
			setProperty('dialogueText.alpha', 0);
			setProperty('dialogueTextUpper.alpha', 0);
			doTweenAlpha('dialogueTextFade', 'dialogueText', 1, 10 / 60, 'linear');
			doTweenAlpha('dialogueTextUFade', 'dialogueTextUpper', 1, 10 / 60, 'linear');
			canAdvance = true;
		}
		table.remove(dialogue, 1);
		table.remove(dialogue, 1);
	else
		doTweenX('gradP1move', 'gradP1', screenWidth, 0.3, 'linear');
		doTweenX('gradP2move', 'gradP2', screenWidth, 0.3, 'linear');
		doTweenX('endDial', curDial .. 'Head', 888 + 488, 0.3, 'linear');
		doTweenX('endDialShadow', curDial .. 'HeadShadow', 888 + 488 + 5, 0.3, 'linear');
		doTweenY('topbarmove', 'topbar', -184.75, 0.3, 'linear');
		doTweenY('bottombarmove', 'bottombar', 716.625, 0.3, 'linear');
		-- fuck off !!!!
	}
end

function onTweenCompleted(tag)
	if(tag == 'ctt' ){
		setTextString('comboText', combo .. 'x');
	elseif(tag == 'swapwhitTobf' ){
		doTweenX('gradP1move', 'gradP1', screenWidth - 488, 0.3, 'linear');
		doTweenX('gradP2move', 'gradP2', screenWidth - 488, 0.3, 'linear');
		doTweenX('bfHeadShadowmove', 'bfHeadShadow', 888 + 5, 0.3, 'linear');
		doTweenX('bfHeadmove', 'bfHead', 888, 0.3, 'linear');
		canAdvance = true;
		setProperty('dialogueText.visible', true);
		setProperty('dialogueTextUpper.visible', true);
	elseif(tag == 'swapbfTowhit' ){
		doTweenX('gradP1move', 'gradP1', screenWidth - 488, 0.3, 'linear');
		doTweenX('gradP2move', 'gradP2', screenWidth - 488, 0.3, 'linear');
		doTweenX('whitHeadShadowmove', 'whitHeadShadow', 888 + 5, 0.3, 'linear');
		doTweenX('whitHeadmove', 'whitHead', 888, 0.3, 'linear');
		canAdvance = true;
		setProperty('dialogueText.visible', true);
		setProperty('dialogueTextUpper.visible', true);
	elseif(tag == 'endDial' ){
		-- DELETE SHIT HERE!!!!
		removeLuaSprite('gradP1', true);
		removeLuaSprite('gradP2', true);
		removeLuaSprite('topbar', true);
		removeLuaSprite('bottombar', true);
		removeLuaSprite('whitHeadShadow', true);
		removeLuaSprite('whitHead', true);
		removeLuaSprite('bfHeadShadow', true);
		removeLuaSprite('bfHead', true);
		removeLuaText('dialogueText', true);
		removeLuaText('dialogueTextUpper', true);
		-- just in case
		cancelTween('swapwhitTobf');
		cancelTween('swapwhitShadowTobf');
		cancelTween('swapbfTowhit');
		cancelTween('swapbfShadowTowhit');
		cancelTween('gradP1move');
		cancelTween('gradP2move');
		cancelTween('whitHeadShadowmove');
		cancelTween('whitHeadmove');
		cancelTween('bfHeadShadowmove');
		cancelTween('bfHeadmove');
		cancelTween('bottombarmove');
		cancelTween('topbarmove');
		cancelTimer('fakeDance');
		startCountdown();
	elseif(tag == 'bottombarmove' && dialogue[1] ~= '' ){
		setProperty('dialogueText.visible', true);
		setProperty('dialogueTextUpper.visible', true);
	}
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	-- miamin ratings!!!
	if(!isSustainNote && resetHideHud ){
		strumTime = getPropertyFromGroup('notes', id, 'strumTime');
		var rating = getRating(strumTime - getSongPosition() + getPropertyFromClass('ClientPrefs','ratingOffset'));
		objectPlayAnimation('ratingText', rating, true);
		-- BRING BACK THE COMBO COUNTER LOL!!!!
		var combo = getProperty('combo');
		if(combo >= 2 ){
			if(comboGone ){
				doTweenX('ctt', 'comboText', 130, stepCrochet / 1000, 'linear');
				doTweenX('cbt', 'comboBG', 0, stepCrochet / 1000, 'linear');
				comboGone = false;
			}
			setTextString('comboText', combo .. 'x');
		}
	}
end

function noteMiss()
	if(!comboGone ){ yeetCombo() end
end
function noteMissPress()
	if(!comboGone ){ yeetCombo() end
end

function yeetCombo()
	doTweenX('ctt', 'comboText', -170, stepCrochet / 1000, 'linear');
	doTweenX('cbt', 'comboBG', -300, stepCrochet / 1000, 'linear');
	comboGone = true;
end

function getRating(diff)
	diff = math.abs(diff);
	if(diff <= getPropertyFromClass('ClientPrefs', 'badWindow') ){
		if(diff <= getPropertyFromClass('ClientPrefs', 'goodWindow') ){
			if(diff <= getPropertyFromClass('ClientPrefs', 'sickWindow') ){
				return 'sick';
			}
			return 'good';
		}
		return 'bad';
	}
	return 'shit';
end


function onCreatePost()
	-- this is probably really bad practice but oh well

	resetHideHud = !hideHud;

	if(!lowQuality ){
		addLuaScript('epicScripts/infishake')
		addLuaScript('epicScripts/cam')
	else
		-- dont do the crazy hud shit on low quality for now
		resetHideHud = false;
	}

	-- lil precaching for dialogue !!
	if(isStoryMode && !seenCutscene ){
		precacheImage('hqr/hmratings/dialbg');
		precacheImage('hqr/hmratings/gradblu');
		precacheImage('hqr/hmratings/gradylw');
		precacheImage('dialogue/whittyALL');
		precacheImage('dialogue/bfALL');
	}

	if(resetHideHud ){
		setPropertyFromClass('ClientPrefs', 'hideHud', true);

		-- disable debug keys SORRY ;(
		-- exiting with these will fuck up your hide HUD setting
		-- if(you wanna use em enable hide hud first!!!!

		setProperty('debugKeysChart', null);
		setProperty('debugKeysCharacter', null);

		-- make rating texts

		makeAnimatedLuaSprite('ratingText', 'hqr/hmratings/hmratings', screenWidth * 0.35 - 75, screenHeight / 2 - 40);
		setObjectCamera('ratingText', 'hud');
		addLuaSprite('ratingText', true);
		addAnimationByPrefix('ratingText', 'shit', 'shit', 60, false);
		addAnimationByPrefix('ratingText', 'bad', 'bad', 60, false);
		addAnimationByPrefix('ratingText', 'good', 'good', 60, false);
		addAnimationByPrefix('ratingText', 'sick', 'sick', 60, false);
		addAnimationByPrefix('ratingText', 'hide', 'bad_00039', 60, false);
		objectPlayAnimation('ratingText', 'hide');
		setProperty('ratingText.antialiasing', false);
		scaleObject('ratingText', 5, 5);
		setScrollFactor('ratingText', 1, 1);
		if(middlescroll ){
			setProperty('ratingText.x', screenWidth * 0.35 - 375);
		}

		makeLuaSprite('comboBG', 'hqr/hmratings/backthing', -300, screenHeight * 0.7);
		if(downscroll ){
			setProperty('comboBG.y', 40);
		}
		setBlendMode('comboBG', 'multiply');
		setObjectCamera('comboBG', 'hud');
		addLuaSprite('comboBG');

		makeLuaText('comboText', '', -170, 160, getProperty('comboBG.y') + 30);
		addLuaText('comboText');
		setTextFont('comboText', 'bulletinyourhead.ttf');
		setTextSize('comboText', 43);
		setTextColor('comboText', '0xFFff00aa');
		setTextBorder('comboText', 1, '0xFF000000');
		setTextAlignment('comboText', 'left');
		setProperty('comboText.scale.x', 3);
		setProperty('comboText.scale.y', 3);
	}
end

function onUpdatePost(elapsed)
	if(!lowQuality ){
		if(getProperty('inCutscene') && stops > 0 ){
			-- VERY silly
			var tix = getPropertyFromClass('flixel.FlxG', 'game.ticks');
			var gwave = math.sin((tix) / 750 * math.pi / 4);
			var hexClr = string.format('0xFF%02X%02X00', math.floor(120 * gwave + 135), math.floor(120 * -gwave + 135));
			setProperty('gradP2.color', getColorFromHex(hexClr));
			setTextColor('dialogueText', string.format('0xFF%02X%02X%02X', math.floor(111 * gwave + 143), math.floor(64 * -gwave + 64), math.floor(64 * gwave + 191)));
			setTextColor('dialogueTextUpper', string.format('0xFF%02XFFFF', math.floor(64 * -gwave + 191)));
			var hwave = math.sin((tix) / 500 * math.pi / 4);
			setProperty('whitHeadShadow.angle', hwave * 5);
			setProperty('whitHead.angle', hwave * 5);
			setProperty('bfHeadShadow.angle', hwave * 5);
			setProperty('bfHead.angle', hwave * 5);
			var tpwave = math.sin((tix) / 200 * math.pi / 4);
			setProperty('dialogueTextUpper.x', textX - tpwave * 1.5 - 4.5);
			setProperty('dialogueTextUpper.y', textY - tpwave * 1.25 - 3.75);
		else
			var wave = math.sin((getSongPosition()) / crochet * math.pi / 4);
			setTextColor('comboText', string.format('0xFFFF00%02X', math.floor(85 * wave + 85)));
		}
	}
	-- maybe change to flxg any key?
	if(canAdvance && keyJustPressed('accept') ){
		canAdvance = false;
		playSound('dialogueClose');
		proceedDialogue();
	}
end

-- there is no hook for playstate closing so i have to cover all exiting options!!!
-- closing the game dont matter cuz this doesnt save the pref to save data anyway

-- there is no hook for playstate closing so i have to cover all exiting options!!!
-- closing the game dont matter cuz this doesnt save the pref to save data anyway
-- the ONLY WAY this fucks up to my knowledge is if(u use chart/character debug key
-- to exit playstate so those are disabled now. if(u wanna use em, enable hide hud!

function onGameOver()
	if(resetHideHud ){
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	}
end
function onEndSong()
	if(resetHideHud ){
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	}
end
function onPause()
	if(resetHideHud ){
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	}
end
function onResume() -- lol put it back on
	if(resetHideHud ){
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
	}
end
