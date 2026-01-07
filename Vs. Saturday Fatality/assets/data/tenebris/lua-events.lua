function onCreate()
  setProperty('camGame.alpha',0);
	setProperty('camHUD.alpha',0);
  
  makeLuaSprite('BarradeArriba', '', 0, -120)
  makeGraphic('BarradeArriba', 1280, 120, '000000')
  setObjectCamera('BarradeArriba', 'camHUD')
  addLuaSprite('BarradeArriba', false)
  
  makeLuaSprite('BarradeAbajo', '', 0, 720)
  makeGraphic('BarradeAbajo', 1280, 120, '000000')
  setObjectCamera('BarradeAbajo', 'camHUD')
  addLuaSprite('BarradeAbajo', false)
  end
  
  function onStepHit()
    if curStep==64 then
    doTweenAlpha('holaJuego', 'camGame', 1, 3)
    end
    if curStep==128 then
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.2)
    end
    if curStep == 512 then
    doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
    doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
    end
    if curStep == 768 then
      doTweenAlpha('AlphaTween18', 'camGame', 0, 0.8)
    end
    if curStep >= 784 and curStep < 785 then
      cameraFlash('other', 'ffffff', 1, true) 
  end
    if curStep == 784 then
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
      doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
      doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.2)
      doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
      doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
      doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.2)
      doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.2)
      doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.2)
      doTweenAlpha('AlphaTween9', 'sick', 0, 0.2)
      doTweenAlpha('AlphaTween10', 'good', 0, 0.2)
      doTweenAlpha('AlphaTween11', 'bad', 0, 0.2)
      doTweenAlpha('AlphaTween12', 'shit', 0, 0.2)
      doTweenAlpha('AlphaTween13', 'score', 0, 0.2)
      doTweenAlpha('AlphaTween14', 'misses', 0, 0.2)
      doTweenAlpha('AlphaTween15', 'accu', 0, 0.2)
      doTweenAlpha('AlphaTween16', 'songname', 0, 0.2)
      doTweenAlpha('AlphaTween17', 'marktime', 0, 0.2)
      doTweenAlpha('AlphaTween18', 'camGame', 1, 0.2)
      doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
    doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
    end
    if curStep == 1040 then
    doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.2)
      doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.2)
      doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.2)
      doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
      doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
      doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.2)
      doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.2)
      doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.2)
      doTweenAlpha('AlphaTween9', 'sick', 1, 0.2)
      doTweenAlpha('AlphaTween10', 'good', 1, 0.2)
      doTweenAlpha('AlphaTween11', 'bad', 1, 0.2)
      doTweenAlpha('AlphaTween12', 'shit', 1, 0.2)
      doTweenAlpha('AlphaTween13', 'score', 1, 0.2)
      doTweenAlpha('AlphaTween14', 'misses', 1, 0.2)
      doTweenAlpha('AlphaTween15', 'accu', 1, 0.2)
      doTweenAlpha('AlphaTween16', 'songname', 1, 0.2)
      doTweenAlpha('AlphaTween17', 'marktime', 1, 0.2)
    end
    if curStep == 1280 then
    doTweenAlpha('adiosJuego', 'camGame', 0, 1)
    doTweenAlpha('adiosHUD', 'camHUD', 0, 1)
    end
    if curStep == 1400 then
    doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
    doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
    end
    if curStep >= 1408 and curStep < 1409 then
      cameraFlash('other', 'ffffff', 1, true) 
  end
    if curStep == 1408 then
    doTweenAlpha('holaJuego', 'camGame', 1, 0.1)
    doTweenAlpha('holaHUD', 'camHUD', 1, 0.1)
    end
    if curStep == 1792 then
    doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
    doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
    end
    if curStep == 2048 then
    doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.2)
      doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.2)
      doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.2)
      doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.2)
      doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.2)
      doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.2)
      doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.2)
      doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.2)
      doTweenAlpha('AlphaTween9', 'sick', 0, 0.2)
      doTweenAlpha('AlphaTween10', 'good', 0, 0.2)
      doTweenAlpha('AlphaTween11', 'bad', 0, 0.2)
      doTweenAlpha('AlphaTween12', 'shit', 0, 0.2)
      doTweenAlpha('AlphaTween13', 'score', 0, 0.2)
      doTweenAlpha('AlphaTween14', 'misses', 0, 0.2)
      doTweenAlpha('AlphaTween15', 'accu', 0, 0.2)
      doTweenAlpha('AlphaTween16', 'songname', 0, 0.2)
      doTweenAlpha('AlphaTween17', 'marktime', 0, 0.2)
    end
    if curStep == 2304 then
    doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.2)
      doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.2)
      doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.2)
      doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
      doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
      doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.2)
      doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.2)
      doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.2)
      doTweenAlpha('AlphaTween9', 'sick', 1, 0.2)
      doTweenAlpha('AlphaTween10', 'good', 1, 0.2)
      doTweenAlpha('AlphaTween11', 'bad', 1, 0.2)
      doTweenAlpha('AlphaTween12', 'shit', 1, 0.2)
      doTweenAlpha('AlphaTween13', 'score', 1, 0.2)
      doTweenAlpha('AlphaTween14', 'misses', 1, 0.2)
      doTweenAlpha('AlphaTween15', 'accu', 1, 0.2)
      doTweenAlpha('AlphaTween16', 'songname', 1, 0.2)
      doTweenAlpha('AlphaTween17', 'marktime', 1, 0.2)
    end
    if curStep == 2560 then
      noteTweenAlpha("notapl1", 0, 0, 2.2, "linear")
      noteTweenAlpha("notapl2", 1, 0, 2.2, "linear")
      noteTweenAlpha("notapl3", 2, 0, 2.2, "linear")
      noteTweenAlpha("notapl4", 3, 0, 2.2, "linear")
        noteTweenAlpha("notaop1", 4, 0, 2.2, "linear")
      noteTweenAlpha("notaop2", 5, 0, 2.2, "linear")
      noteTweenAlpha("notaop3", 6, 0, 2.2, "linear")
      noteTweenAlpha("notaop4", 7, 0, 2.2, "linear")
      doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 2.2)
        doTweenAlpha('AlphaTween2', 'healthBar', 0, 2.2)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 2.2)
        doTweenAlpha('AlphaTween4', 'iconP1', 0, 2.2)
        doTweenAlpha('AlphaTween5', 'iconP2', 0, 2.2)
        doTweenAlpha('AlphaTween6', 'timeBar', 0, 2.2)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 2.2)
        doTweenAlpha('AlphaTween8', 'timeTxt', 0, 2.2)
        doTweenAlpha('AlphaTween9', 'sick', 0, 2.2)
        doTweenAlpha('AlphaTween10', 'good', 0, 2.2)
        doTweenAlpha('AlphaTween11', 'bad', 0, 2.2)
        doTweenAlpha('AlphaTween12', 'shit', 0, 2.2)
        doTweenAlpha('AlphaTween13', 'score', 0, 2.2)
        doTweenAlpha('AlphaTween14', 'misses', 0, 2.2)
        doTweenAlpha('AlphaTween15', 'accu', 0, 2.2)
        doTweenAlpha('AlphaTween16', 'songname', 0, 2.2)
        doTweenAlpha('AlphaTween17', 'marktime', 0, 2.2)
    end
    if curStep == 2600 then
      doTweenAlpha('AlphaTween18', 'camGame', 0, 0.5)
    end
    end
    
    function onBeatHit()
    if curBeat % 2 == 0 then
    objectPlayAnimation('satanTrono','idle', true)
    end
    objectPlayAnimation('demoniosChiquitos','idle',false)
    end
    
    function opponentNoteHit()
      triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
        health = getProperty('health')
        if getProperty('health') > 0.3 then
            setProperty('health', health- 0.015);
        end
    end