function onCreate()
	if bfName == 'bf-resurgence' then
		makeAnimatedLuaSprite('animatedicon', 'icons/icon_bf-spirit', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'bf icon', 24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'bf icon', 24, true)
		--addAnimationByPrefix('animatedicon', 'winning', 'winning animation here', 24, true) in case you want a winning animation
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedicon', true)
		objectPlayAnimation('animatedicon', 'normal', false)
	end
end

function onUpdate(elapsed)
	if bfName == 'bf-resurugence' then
		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP1.x'))
	setProperty('animatedicon.angle', getProperty('iconP1.angle'))
	setProperty('animatedicon.y', getProperty('iconP1.y') + 15)
	setProperty('animatedicon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP1.scale.y'))
end