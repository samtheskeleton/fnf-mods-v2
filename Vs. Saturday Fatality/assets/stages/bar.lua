function onCreate()
	makeLuaSprite('back', 'backgrounds/bar/BG_Toony', -324, -100);
      setScrollFactor('back', 0.75, 0.75);
	addLuaSprite('back', false);

	makeAnimatedLuaSprite('bocks', 'backgrounds/bar/mesa_de_bags_vani', 924, 185);
      setScrollFactor('bocks', 0.75, 0.75);
	addLuaSprite('bocks', false);
	addAnimationByPrefix('bocks', 'buni', 'mesa', 24, false);

	makeAnimatedLuaSprite('yakko', 'backgrounds/bar/Mesa_Yakko', 2624, 280);
	setScrollFactor('yakko', 0.75, 0.75);
  addLuaSprite('yakko', false);
  addAnimationByPrefix('yakko', 'cuchillo', 'mesa Yakkobich', 24, false);

  makeAnimatedLuaSprite('webones', 'backgrounds/bar/mesa_bimbo_pan_y_foxy_puta', 1350, 300);
  setScrollFactor('webones', 0.75, 0.75);
  scaleObject('webones', 0.55, 0.55);
addLuaSprite('webones', false);
addAnimationByPrefix('webones', 'estanXD', 'mesa de foxy y el bimbo pan', 24, false);

  makeAnimatedLuaSprite('patos', 'backgrounds/bar/mesa_de_pato_donal_y_el_adrian', 540, 290);
  setScrollFactor('patos', 0.75, 0.75);
  scaleObject('patos', 1.8, 1.8);
addLuaSprite('patos', false);
addAnimationByPrefix('patos', 'panas', 'mesa de pato gufi y el dios adrian', 24, false);

makeAnimatedLuaSprite('bocks viejo', 'backgrounds/bar/Mesa_de_Bugs_Bunny_viejo', 2524, 420);
setScrollFactor('bocks viejo', 0.8, 0.8);
scaleObject('bocks viejo', 0.75, 0.75);
addLuaSprite('bocks viejo', false);
addAnimationByPrefix('bocks viejo', 'jajaj que viejo', 'Mesa Bugs Bunny viejo choto', 24, true);

    makeLuaSprite('overlay', 'backgrounds/bar/overlay_BG', 70, -100);
    addLuaSprite('overlay', true);

end
function onUpdate()
	setObjectOrder('overlay', true);
	setObjectOrder('dadGroup', false);
	setObjectOrder('gfGroup', false);
	setObjectOrder('boyfriendGroup', false);
	setObjectOrder('bocks viejo',false);
	setObjectOrder('webones',false);
	setObjectOrder('yakko',false);
	setObjectOrder('patos',false);
	setObjectOrder('bocks',false);
	setObjectOrder('back',false);
end

function onBeatHit()
	if curBeat % 2== 0 then
		objectPlayAnimation('bocks', 'buni', false);
		objectPlayAnimation('yakko', 'cuchillo', false);
		objectPlayAnimation('patos', 'panas', false);
		objectPlayAnimation('webones', 'estanXD', false);
	end
end