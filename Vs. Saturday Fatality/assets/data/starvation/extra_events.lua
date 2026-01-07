function onCreate()
  makeLuaSprite('mother', 'backgrounds/dialogue', 50, 50)
  setObjectCamera('mother', 'HUD')
  addLuaSprite('mother', true)
  scaleObject('mother', 0.45, 0.45)
  setProperty('mother.visible', false)
end

function onStepHit()
  if curStep == 1 then
    doTweenAlpha('AlphaTween19', 'mother', 0, 0.1)
  end
  if curStep == 20 then
    setProperty('mother.visible', true)
  end
  if curStep == 112 then
          noteTweenAlpha("notapl1", 0, 0, 5.15, "linear")
      noteTweenAlpha("notapl2", 1, 0, 5.15, "linear")
      noteTweenAlpha("notapl3", 2, 0, 5.15, "linear")
      noteTweenAlpha("notapl4", 3, 0, 5.15, "linear")
          noteTweenAlpha("notaop1", 4, 0, 5.15, "linear")
      noteTweenAlpha("notaop2", 5, 0, 5.15, "linear")
      noteTweenAlpha("notaop3", 6, 0, 5.15, "linear")
      noteTweenAlpha("notaop4", 7, 0, 5.15, "linear")
          doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 5.15)
      doTweenAlpha('AlphaTween2', 'healthBar', 0, 5.15)
      doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 5.15)
      doTweenAlpha('AlphaTween4', 'iconP1', 0, 5.15)
      doTweenAlpha('AlphaTween5', 'iconP2', 0, 5.15)
      doTweenAlpha('AlphaTween6', 'timeBar', 0, 5.15)
      doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 5.15)
      doTweenAlpha('AlphaTween8', 'timeTxt', 0, 5.15)
      doTweenAlpha('AlphaTween9', 'marktime', 0, 5.15)
      doTweenAlpha('AlphaTween10', 'sick', 0, 5.15)
      doTweenAlpha('AlphaTween11', 'good', 0, 5.15)
      doTweenAlpha('AlphaTween12', 'bad', 0, 5.15)
      doTweenAlpha('AlphaTween13', 'shit', 0, 5.15)
      doTweenAlpha('AlphaTween14', 'score', 0, 5.15)
      doTweenAlpha('AlphaTween15', 'misses', 0, 5.15)
      doTweenAlpha('AlphaTween16', 'accu', 0, 5.15)
      doTweenAlpha('AlphaTween17', 'songname', 0, 5.15)
      doTweenAlpha('AlphaTween18', 'camGame', 0, 5.15)
    end
    if curStep >= 159 then
      doTweenAlpha('AlphaTween19', 'mother', 1, 0.25)
    end
    if curStep >= 187 then
      doTweenAlpha('AlphaTween19', 'mother', 0, 0.25)
    end
    if curStep >= 192 then
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
      doTweenAlpha('AlphaTween18', 'camGame', 1, 0.1)
    end
end