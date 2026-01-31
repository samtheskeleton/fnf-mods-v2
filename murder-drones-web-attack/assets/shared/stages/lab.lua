function onCreate()
	-- background shit
	makeLuaSprite('Detras', 'Detras', -600, -500);
	setScrollFactor('Detras', 0.9, 0.9);
	scaleObject('Detras', 2.0, 2.0);

	makeLuaSprite('Mesa', 'Mesa', -600, -500);
	setScrollFactor('Mesa', 0.9, 0.9);
	scaleObject('Mesa', 2.0, 2.0);
	

	makeLuaSprite('Delante', 'Delante', -600, -600);
	setScrollFactor('Delante', 0.65, 0.35);
	scaleObject('Delante', 2.0, 2.0);

	addLuaSprite('Detras', false);
      addLuaSprite('Mesa', false);
	addLuaSprite('Delante', true);
end
function onCreatePost()
	setScrollFactor('gf', 0.89, 1);
end