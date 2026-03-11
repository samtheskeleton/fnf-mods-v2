function onBeatHit()
	if curBeat == 108 then
		playAnim('susie','laugh',true)
        setProperty('susie.specialAnim',true)
	end
	if curBeat == 109 then
		playAnim('susie','laugh',true)
        setProperty('susie.specialAnim',true)
	end
	if curBeat == 110 then
		playAnim('susie','laugh',true)
        setProperty('susie.specialAnim',true)
	end
end

function onStepHit()
	if curStep == 624 then
		playAnim('luigi','singDOWN',true)
		setProperty('luigi.specialAnim',true)
		playAnim('wario','singDOWN',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 626 then
		playAnim('wario','singLEFT',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 628 then
		playAnim('luigi','singUP',true)
		setProperty('luigi.specialAnim',true)
		playAnim('wario','singUP',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 629 then
		playAnim('wario','singRIGHT',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 631 then
		playAnim('luigi','singUP',true)
		setProperty('luigi.specialAnim',true)
		playAnim('wario','singUP',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 634 then
		playAnim('wario','singLEFT',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 635 then
		playAnim('wario','singRIGHT',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 636 then
		playAnim('wario','singDOWN',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 637 then
		playAnim('wario','singRIGHT',true)
		setProperty('wario.specialAnim',true)
	end
	if curStep == 638 then
		playAnim('wario','singLEFT',true)
		setProperty('wario.specialAnim',true)
	end
end