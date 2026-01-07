function onCreate()
setProperty('camGame.visible', false)
setProperty('camHUD.visible', false)

makeLuaSprite('BarradeArriba', '', 0, -120)
makeGraphic('BarradeArriba', 1280, 120, '000000')
setObjectCamera('BarradeArriba', 'camHUD')
addLuaSprite('BarradeArriba', false)

makeLuaSprite('BarradeAbajo', '', 0, 720)
makeGraphic('BarradeAbajo', 1280, 120, '000000')
setObjectCamera('BarradeAbajo', 'camHUD')
addLuaSprite('BarradeAbajo', false)

doTweenY('BarraNegra1', 'BarradeArriba', 0, 0.1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 0.1, 'quartOut')
end

function onStepHit()
	if curStep >= 1 then
		setProperty('camGame.visible', true)
		setProperty('camHUD.visible', true)
	end
	if curStep >= 128 and curStep < 129 then
		cameraFlash('other', 'ffffff', 1, true) 
	end
	if curStep >= 256 and curStep < 257 then
		cameraFlash('other', 'ffffff', 1, true) 
	end
	if curStep >= 512 then
		doTweenAlpha('AlphaTween19', 'bg', 0, 1.0)
	end
	if curStep >= 576 then
		doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
		doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
		noteTweenAlpha("notapl1", 0, 0, 0.5, "linear")
		noteTweenAlpha("notapl2", 1, 0, 0.5, "linear")
		noteTweenAlpha("notapl3", 2, 0, 0.5, "linear")
		noteTweenAlpha("notapl4", 3, 0, 0.5, "linear")
		  noteTweenAlpha("notaop1", 4, 0, 0.5, "linear")
		noteTweenAlpha("notaop2", 5, 0, 0.5, "linear")
		noteTweenAlpha("notaop3", 6, 0, 0.5, "linear")
		noteTweenAlpha("notaop4", 7, 0, 0.5, "linear")
		  doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.5)
		doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.5)
		doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.5)
		doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.5)
		doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.5)
		doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.5)
		doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.5)
		doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.5)
		doTweenAlpha('AlphaTween9', 'marktime', 0, 0.5)
		doTweenAlpha('AlphaTween10', 'sick', 0, 0.5)
		doTweenAlpha('AlphaTween11', 'good', 0, 0.5)
		doTweenAlpha('AlphaTween12', 'bad', 0, 0.5)
		doTweenAlpha('AlphaTween13', 'shit', 0, 0.5)
		doTweenAlpha('AlphaTween14', 'score', 0, 0.5)
		doTweenAlpha('AlphaTween15', 'misses', 0, 0.5)
		doTweenAlpha('AlphaTween16', 'accu', 0, 0.5)
		doTweenAlpha('AlphaTween17', 'songname', 0, 0.5)
		doTweenAlpha('AlphaTween19', 'bg', 1, 0.5)
	end
	if curStep >= 704 and curStep < 705 then
		cameraFlash('other', 'ffffff', 1, true) 
	end
	if curStep >= 704 then
		doTweenY('BarraNegra1', 'BarradeArriba', 0, 0.1, 'quartOut')
        doTweenY('BarraNegra2', 'BarradeAbajo', 600, 0.1, 'quartOut')
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
	if curStep >= 848 and curStep < 849 then
		cameraFlash('other', 'ffffff', 0.5, true) 
	end
	if curStep >= 1112 then
		noteTweenAlpha("notapl1", 0, 0, 0.25, "linear")
		noteTweenAlpha("notapl2", 1, 0, 0.25, "linear")
		noteTweenAlpha("notapl3", 2, 0, 0.25, "linear")
		noteTweenAlpha("notapl4", 3, 0, 0.25, "linear")
	end
	if curStep >= 1152 and curStep < 1153 then
		cameraFlash('other', 'ffffff', 0.5, true) 
	end
	if curStep >= 1152 then
		noteTweenAlpha("notapl1", 0, 1, 0.1, "linear")
		noteTweenAlpha("notapl2", 1, 1, 0.1, "linear")
		noteTweenAlpha("notapl3", 2, 1, 0.1, "linear")
		noteTweenAlpha("notapl4", 3, 1, 0.1, "linear")
	end
	if curStep >= 1408 and curStep < 1409 then
		cameraFlash('other', 'ffffff', 0.5, true) 
	end
	if curStep >= 1920 then
		doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
		doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
		noteTweenAlpha("notapl1", 0, 0, 0.5, "linear")
		noteTweenAlpha("notapl2", 1, 0, 0.5, "linear")
		noteTweenAlpha("notapl3", 2, 0, 0.5, "linear")
		noteTweenAlpha("notapl4", 3, 0, 0.5, "linear")
		  noteTweenAlpha("notaop1", 4, 0, 0.5, "linear")
		noteTweenAlpha("notaop2", 5, 0, 0.5, "linear")
		noteTweenAlpha("notaop3", 6, 0, 0.5, "linear")
		noteTweenAlpha("notaop4", 7, 0, 0.5, "linear")
		  doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.5)
		doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.5)
		doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.5)
		doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.5)
		doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.5)
		doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.5)
		doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.5)
		doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.5)
		doTweenAlpha('AlphaTween9', 'marktime', 0, 0.5)
		doTweenAlpha('AlphaTween10', 'sick', 0, 0.5)
		doTweenAlpha('AlphaTween11', 'good', 0, 0.5)
		doTweenAlpha('AlphaTween12', 'bad', 0, 0.5)
		doTweenAlpha('AlphaTween13', 'shit', 0, 0.5)
		doTweenAlpha('AlphaTween14', 'score', 0, 0.5)
		doTweenAlpha('AlphaTween15', 'misses', 0, 0.5)
		doTweenAlpha('AlphaTween16', 'accu', 0, 0.5)
		doTweenAlpha('AlphaTween17', 'songname', 0, 0.5)
		doTweenAlpha('AlphaTween19', 'bg', 1, 0.5)
	end
	if curStep >= 2048 and curStep < 2049 then
		cameraFlash('other', 'ffffff', 0.5, true) 
	end
	if curStep >= 2048 then
		setProperty('camGame.visible', false)
	end
end