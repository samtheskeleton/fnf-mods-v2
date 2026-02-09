function onCreate()


	-- documic
	makeLuaSprite('stageback', 'back', -1200, -800);
	setLuaSpriteScrollFactor('stageback', 1.0, 1.0);

	makeLuaSprite('stagefront', 'front', -1200, -800);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);


	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end