
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('Digital1', 'Digital1', -650, 600);
	setScrollFactor('Digital1', 1.0, 1.0);
	scaleObject('Digital1', 2.0, 2.0);

	makeLuaSprite('Digital2', 'Digital2', -650, 500);
	setScrollFactor('Digital2', 0.95, 0.95);
	scaleObject('Digital2', 2.0, 2.0);

	makeLuaSprite('Digital3', 'Digital3', -650, 600);
	setScrollFactor('Digital3', 1.0, 1.0);
	scaleObject('Digital3', 2.0, 2.0);

	makeLuaSprite('Digital4', 'Digital4', -650, 600);
	setScrollFactor('Digital4', 1.0, 1.0);
	scaleObject('Digital4', 2.0, 2.0);

	makeLuaSprite('Digital5', 'Digital5', -600, 650);
	setScrollFactor('Digital5', 1.05, 1.05);
	scaleObject('Digital5', 2.0, 2.0);

	makeLuaSprite('Digital6', 'Digital6', -650, 600);
	setScrollFactor('Digital6', 1.0, 1.0);
	scaleObject('Digital6', 2.0, 2.0);

	makeLuaSprite('Digital7', 'Digital7', -650, 600);
	setScrollFactor('Digital7', 1.0, 1.0);
	scaleObject('Digital7', 2.0, 2.0);

	makeLuaSprite('Digital8', 'Digital8', -650, 1300);
	setScrollFactor('Digital8', 1.5, 1.5);
	scaleObject('Digital8', 2.1, 2.1);

	addLuaSprite('Digital1', false);
      addLuaSprite('Digital2', false);
      addLuaSprite('Digital3', false);
	addLuaSprite('Digital4', false);
	addLuaSprite('Digital5', false);
	addLuaSprite('Digital6', false);
	addLuaSprite('Digital7', true);
      addLuaSprite('Digital8', true);
end