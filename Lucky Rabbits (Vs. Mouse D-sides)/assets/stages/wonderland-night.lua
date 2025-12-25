function onCreate()
	-- background shit

	makeLuaSprite('club3', 'club3', -500, -300);
	setLuaSpriteScrollFactor('club3', 0.9, 0.9);

	makeLuaSprite('glow', 'window glow', -500, -300);
	setLuaSpriteScrollFactor('glow', 0.9, 0.9);

	makeLuaSprite('fog', 'bluefogdark', -500, -300);
	setLuaSpriteScrollFactor('fog', 0.9, 0.9);

	makeLuaSprite('vintage', 'cooloutline', -500, -300);
	setLuaSpriteScrollFactor('vintage', 0.9, 0.9);


	addLuaSprite('club3', false);
	addLuaSprite('glow', true);
	addLuaSprite('fog', true);
	addLuaSprite('vintage', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end