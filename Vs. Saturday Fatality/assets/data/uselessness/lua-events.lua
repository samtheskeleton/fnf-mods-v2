function onCreate()
    setProperty('camHUD.visible', false)
    setProperty('camGame.visible', false)

    makeLuaSprite('BarradeArriba', '', 0, -120)
	makeGraphic('BarradeArriba', 1280, 120, '000000')
	setObjectCamera('BarradeArriba', 'camHUD')
	addLuaSprite('BarradeArriba', false)

	makeLuaSprite('BarradeAbajo', '', 0, 720)
	makeGraphic('BarradeAbajo', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo', 'camHUD')
	addLuaSprite('BarradeAbajo', false)
end
function onUpdate()
    if mustHitSection == false then
        setProperty('defaultCamZoom',0.67)
    else
        setProperty('defaultCamZoom',0.58)
    end
end
function onStepHit()
    if curStep >= 0 and curStep < 2 then
        cameraFlash('other', '000000', 1, true) 
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
  if curStep == 5 then
    setProperty('camGame.visible', true)
  end
  if curStep == 10 then
    doTweenAlpha('AlphaTween18', 'camGame', 1, 0.5)
  end
  if curStep == 100 then
    setProperty('camHUD.visible', true)
  end
  if curStep == 120 then
    noteTweenAlpha("notapl1", 0, 1, 1, "linear")
    noteTweenAlpha("notapl2", 1, 1, 1, "linear")
    noteTweenAlpha("notapl3", 2, 1, 1, "linear")
    noteTweenAlpha("notapl4", 3, 1, 1, "linear")
      noteTweenAlpha("notaop1", 4, 1, 1, "linear")
    noteTweenAlpha("notaop2", 5, 1, 1, "linear")
    noteTweenAlpha("notaop3", 6, 1, 1, "linear")
    noteTweenAlpha("notaop4", 7, 1, 1, "linear")
      doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 1)
    doTweenAlpha('AlphaTween2', 'healthBar', 1, 1)
    doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 1)
    doTweenAlpha('AlphaTween4', 'iconP1', 1, 1)
    doTweenAlpha('AlphaTween5', 'iconP2', 1, 1)
    doTweenAlpha('AlphaTween6', 'timeBar', 1, 1)
    doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 1)
    doTweenAlpha('AlphaTween8', 'timeTxt', 1, 1)
    doTweenAlpha('AlphaTween9', 'marktime', 1, 1)
    doTweenAlpha('AlphaTween10', 'sick', 1, 1)
    doTweenAlpha('AlphaTween11', 'good', 1, 1)
    doTweenAlpha('AlphaTween12', 'bad', 1, 1)
    doTweenAlpha('AlphaTween13', 'shit', 1, 1)
    doTweenAlpha('AlphaTween14', 'score', 1, 1)
    doTweenAlpha('AlphaTween15', 'misses', 1, 1)
    doTweenAlpha('AlphaTween16', 'accu', 1, 1)
    doTweenAlpha('AlphaTween17', 'songname', 1, 1)
end
  if curStep >= 128 and curStep < 129 then
    cameraFlash('other', '000000', 1, true) 
end
if curStep >= 384 and curStep < 385 then
    cameraFlash('HUD', '000000', 1, true) 
end
if curStep >= 512 and curStep < 513 then
    cameraFlash('HUD', '000000', 1, true) 
end
if curStep >= 512 then
    doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
end
if curStep >= 639 and curStep < 640 then
    cameraFlash('HUD', '000000', 1, true) 
end
if curStep >= 767 then
    doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
    doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
    noteTweenAlpha("notapl1", 0, 0, 0.8, "linear")
    noteTweenAlpha("notapl2", 1, 0, 0.8, "linear")
    noteTweenAlpha("notapl3", 2, 0, 0.8, "linear")
    noteTweenAlpha("notapl4", 3, 0, 0.8, "linear")
      noteTweenAlpha("notaop1", 4, 0, 0.8, "linear")
    noteTweenAlpha("notaop2", 5, 0, 0.8, "linear")
    noteTweenAlpha("notaop3", 6, 0, 0.8, "linear")
    noteTweenAlpha("notaop4", 7, 0, 0.8, "linear")
      doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.8)
    doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.8)
    doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.8)
    doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.8)
    doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.8)
    doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.8)
    doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.8)
    doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.8)
    doTweenAlpha('AlphaTween9', 'marktime', 0, 0.8)
    doTweenAlpha('AlphaTween10', 'sick', 0, 0.8)
    doTweenAlpha('AlphaTween11', 'good', 0, 0.8)
    doTweenAlpha('AlphaTween12', 'bad', 0, 0.8)
    doTweenAlpha('AlphaTween13', 'shit', 0, 0.8)
    doTweenAlpha('AlphaTween14', 'score', 0, 0.8)
    doTweenAlpha('AlphaTween15', 'misses', 0, 0.8)
    doTweenAlpha('AlphaTween16', 'accu', 0, 0.8)
    doTweenAlpha('AlphaTween17', 'songname', 0, 0.8)
end
if curStep >= 783 then
    doTweenAlpha('AlphaTween18', 'camGame', 0, 1.55)
end
end