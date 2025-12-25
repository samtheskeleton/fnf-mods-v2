function onCreate()
	-- background shit
	makeLuaSprite('club', 'club', -500, -300);
	setLuaSpriteScrollFactor('club', 0.9, 0.9);

	makeLuaSprite('light', 'thelight', -500, -300);
	setLuaSpriteScrollFactor('light', 0.9, 0.9);

	addLuaSprite('club', false);
	addLuaSprite('light', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end