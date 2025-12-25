function onCreate()
	-- background shit
	makeLuaSprite('club2', 'club2', -500, -300);
	setLuaSpriteScrollFactor('club2', 0.9, 0.9);
	
	addLuaSprite('club2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end