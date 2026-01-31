
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('BACKGROUND_Mandy_water', 'BACKGROUND_Mandy_water', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_water', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_water', 1.1, 1.1);

	makeLuaSprite('BACKGROUND_Mandy_cave_3', 'BACKGROUND_Mandy_cave_3', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_cave_3', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_cave_3', 1.1, 1.1);

	makeLuaSprite('BACKGROUND_Mandy_cave_2', 'BACKGROUND_Mandy_cave_2', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_cave_2', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_cave_2', 1.1, 1.1);

	makeLuaSprite('BACKGROUND_Mandy_cave_1', 'BACKGROUND_Mandy_cave_1', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_cave_1', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_cave_1', 1.1, 1.1);

	makeLuaSprite('BACKGROUND_Mandy_ambients_3_', 'BACKGROUND_Mandy_ambients_3_', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_ambients_3_', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_ambients_3_', 1.1, 1.1);

	makeLuaSprite('BACKGROUND_Mandy_boat_2_', 'BACKGROUND_Mandy_boat_2_', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_boat_2_', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_boat_2_', 1.1, 1.1);

	makeLuaSprite('BACKGROUND_Mandy_boat_1_', 'BACKGROUND_Mandy_boat_1_', -650, 600);
	setScrollFactor('BACKGROUND_Mandy_boat_1_', 0.9, 0.9);
	scaleObject('BACKGROUND_Mandy_boat_1_', 1.1, 1.1);

      makeAnimatedLuaSprite('simp_sad', 'simp_sad', 1700, 1590);
	setScrollFactor('simp_sad', 0.9, 0.9);
	scaleObject('simp_sad', 1.1, 1.1);

      makeAnimatedLuaSprite('grim_sad', 'grim_sad', -100, 1160);
	setScrollFactor('grim_sad', 0.9, 0.9);
	scaleObject('grim_sad', 1.1, 1.1);


	addLuaSprite('BACKGROUND_Mandy_water', false);
	addLuaSprite('BACKGROUND_Mandy_cave_3', false);
	addLuaSprite('BACKGROUND_Mandy_cave_2', false);
	addLuaSprite('BACKGROUND_Mandy_cave_1', false);
      addLuaSprite('BACKGROUND_Mandy_ambients_3_', false);
	addLuaSprite('BACKGROUND_Mandy_boat_2_', false);

	addLuaSprite('simp_sad', false);
      addAnimationByPrefix('simp_sad', 'idle', 'erwin loop', 24, true);

	addLuaSprite('grim_sad', false);
      addAnimationByPrefix('grim_sad', 'idle', 'grim loop', 24, true);

	addLuaSprite('BACKGROUND_Mandy_boat_1_', true);
end