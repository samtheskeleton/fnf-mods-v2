function onCreate()
setProperty('camGame.visible', false)
setProperty('camHUD.visible', false)
end

function onStepHit()
	if curStep == 1 then
	doTweenZoom('Change Camera Zoom1', 'camGame', 0.9, 0.1, 'static')
	noteTweenAlpha("notapl1", 0, 0, 1, "linear")
	noteTweenAlpha("notapl2", 1, 0, 1, "linear")
	noteTweenAlpha("notapl3", 2, 0, 1, "linear")
	noteTweenAlpha("notapl4", 3, 0, 1, "linear")
	  noteTweenAlpha("notaop1", 4, 0, 1, "linear")
	noteTweenAlpha("notaop2", 5, 0, 1, "linear")
	noteTweenAlpha("notaop3", 6, 0, 1, "linear")
	noteTweenAlpha("notaop4", 7, 0, 1, "linear")
	  doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 1)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 1)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 1)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 1)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 1)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 1)
	doTweenAlpha('AlphaTween9', 'marktime', 0, 1)
	doTweenAlpha('AlphaTween10', 'sick', 0, 1)
	doTweenAlpha('AlphaTween11', 'good', 0, 1)
	doTweenAlpha('AlphaTween12', 'bad', 0, 1)
	doTweenAlpha('AlphaTween13', 'shit', 0, 1)
	doTweenAlpha('AlphaTween14', 'score', 0, 1)
	doTweenAlpha('AlphaTween15', 'misses', 0, 1)
	doTweenAlpha('AlphaTween16', 'accu', 0, 1)
	doTweenAlpha('AlphaTween17', 'songname', 0, 1)
	doTweenAlpha('AlphaTween18', 'camGame', 0, 0.1)
end
if curStep == 9 then
	setProperty('camGame.visible', true)
	setProperty('camHUD.visible', true)
  end
if curStep == 55 then
	doTweenZoom('Change Camera Zoom2', 'camGame', 0.5, 7.65, 'static')
	doTweenAlpha('AlphaTween18', 'camGame', 1, 7.5)
end
if curStep >= 128 and curStep < 129 then
    cameraFlash('other', 'FFFFFF', 1, true) 
end
if curStep >= 128 then
	noteTweenAlpha("notapl1", 0, 1, 0.1, "linear")
	noteTweenAlpha("notapl2", 1, 1, 0.1, "linear")
	noteTweenAlpha("notapl3", 2, 1, 0.1, "linear")
	noteTweenAlpha("notapl4", 3, 1, 0.1, "linear")
	  noteTweenAlpha("notaop1", 4, 1, 0.1, "linear")
	noteTweenAlpha("notaop2", 5, 1, 0.1, "linear")
	noteTweenAlpha("notaop3", 6, 1, 0.1, "linear")
	noteTweenAlpha("notaop4", 7, 1, 0.1, "linear")
	  doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.1)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.1)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.1)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.1)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.1)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.1)
	doTweenAlpha('AlphaTween9', 'marktime', 1, 0.1)
	doTweenAlpha('AlphaTween10', 'sick', 1, 0.1)
	doTweenAlpha('AlphaTween11', 'good', 1, 0.1)
	doTweenAlpha('AlphaTween12', 'bad', 1, 0.1)
	doTweenAlpha('AlphaTween13', 'shit', 1, 0.1)
	doTweenAlpha('AlphaTween14', 'score', 1, 0.1)
	doTweenAlpha('AlphaTween15', 'misses', 1, 0.1)
	doTweenAlpha('AlphaTween16', 'accu', 1, 0.1)
	doTweenAlpha('AlphaTween17', 'songname', 1, 0.1)
end
if curStep == 448 then
	doTweenZoom('Change Camera Zoom3', 'camGame', 0.9, 7.98, 'static')
	doTweenAlpha('AlphaTween19', 'bg', 0, 7.98)
	doTweenAlpha('AlphaTween20', 'dadGroup', 0, 7.98)
end
if curStep == 512 then
	setProperty('defaultCamZoom', 0.9)
end
if curStep >= 528 and curStep < 529 then
    cameraFlash('other', 'FFFFFF', 1, true) 
end
if curStep == 528 then
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('marktime.visible', false)
	setProperty('sick.visible', false)
	setProperty('good.visible', false)
	setProperty('bad.visible', false)
	setProperty('shit.visible', false)
	setProperty('score.visible', false)
	setProperty('misses.visible', false)
	setProperty('accu.visible', false)
	setProperty('songname.visible', false)
	doTweenAlpha('AlphaTween21', 'boyfriendGroup', 0, 0.1)
end
if curStep == 544 then
	doTweenAlpha('AlphaTween20', 'dadGroup', 1, 1.0)
end
if curStep == 600 then
	doTweenAlpha('AlphaTween21', 'boyfriendGroup', 1, 1.0)
end
if curStep == 672 then
	doTweenAlpha('AlphaTween19', 'bg', 1, 2.55)
end
if curStep == 688 then
	setProperty('defaultCamZoom', 0.5)
end
if curStep >= 704 and curStep < 705 then
    cameraFlash('other', 'FFFFFF', 1, true) 
end
if curStep == 704 then
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('healthBar.visible', true)
	setProperty('healthBarBG.visible', true)
	setProperty('timeBar.visible', true)
	setProperty('timeBarBG.visible', true)
	setProperty('timeTxt.visible', true)
	setProperty('marktime.visible', true)
	setProperty('sick.visible', true)
	setProperty('good.visible', true)
	setProperty('bad.visible', true)
	setProperty('shit.visible', true)
	setProperty('score.visible', true)
	setProperty('misses.visible', true)
	setProperty('accu.visible', true)
	setProperty('songname.visible', true)
end
if curStep == 867 then
	doTweenZoom('Change Camera Zoom4', 'camGame', 0.9, 3.67, 'static')
end
if curStep >= 896 and curStep < 897 then
    cameraFlash('other', 'FFFFFF', 1, true) 
end
if curStep >= 1024 and curStep < 1025 then
    cameraFlash('other', 'FFFFFF', 1, true) 
end
end