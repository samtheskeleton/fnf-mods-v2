function onCreate() 
	makeAnimatedLuaSprite("battle", "bg", 0, -30)
	addAnimationByPrefix("battle", "wave", "wave", 30, true)
	addLuaSprite("battle", false)
	setScrollFactor('battle', 1,1)
	playAnim("battle", "wave", true)
end