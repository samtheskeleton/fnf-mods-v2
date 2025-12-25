function onCreate()
	-- background shit
	makeLuaSprite('old', 'clubold', -500, -300);
	setLuaSpriteScrollFactor('old', 0.9, 0.9);

	addLuaSprite('old', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end