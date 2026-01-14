function onCreate()
	-- background shit
	makeAnimatedLuaSprite('Bg','Bg',-600, -500)addAnimationByPrefix('Bg', 'idle','Bg',28,true)
	objectPlayAnimation('Bg','idle',false)
	setScrollFactor('Bg', 0.9, -1);
	
	makeAnimatedLuaSprite('Mountains','Mountains',-600, -300)addAnimationByPrefix('Mountains', 'idle','Mountains',34,true)
	objectPlayAnimation('Mountains','idle',false)
	setScrollFactor('Mountains', 0.9, 0.9);
	
	makeAnimatedLuaSprite('fogoxd','fogoxd',-630, 215)addAnimationByPrefix('fogoxd', 'fogoxd','fogoxd',26,true)
	objectPlayAnimation('fogoxd','fogoxd',false)
	setScrollFactor('fogoxd', 1, 1);
	scaleObject('fogoxd', 3.4, 1.3);
	
	makeAnimatedLuaSprite('Floor','Floor',-650, -200)addAnimationByPrefix('Floor', 'idle','Floor',38,true)
	objectPlayAnimation('Floor','idle',false)
	scaleObject('Floor', 1.1, 1.1);

	
	
	addLuaSprite('Bg', false);
	addLuaSprite('fogoxd',false)
	addLuaSprite('Mountains', 'false');
	addLuaSprite('Floor', false);
	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end