function onCreate()
	makeLuaSprite('bg1', 'bg1', -1200, -610)
	setScrollFactor('bg1', 1, 1)
	scaleObject('bg1', 1.4, 1.4)

	makeLuaSprite('ilu','ilu', -1100, 1970)
	setScrollFactor('ilu', 1, 1)
	scaleObject('ilu', 1.3, 1.3)

	makeLuaSprite('bloque', 'bloque', 1500, 800)
	setScrollFactor('bloque', 1.1, 1.1)
	scaleObject('bloque', 1, 1)

	makeLuaSprite('tuberia', 'tuberia', -1200, 800)
	setScrollFactor('tuberia', 1.1, 1.1)
	scaleObject('tuberia', 1, 1)

               makeLuaSprite('luz', 'luz', -1200, -700);
               setLuaSpriteScrollFactor('luz', 1, 1);
               addLuaSprite('luz', true);
               scaleObject('luz', 1.3, 1.3)
               setBlendMode('luz', 'add')
          
              makeAnimatedLuaSprite('newpipe', 'tuberia1', -1300, -400)
              addAnimationByPrefix('newpipe', 'dance', 'tuberia', 28, true)
              objectPlayAnimation('newpipe', 'dance', false)
              setScrollFactor('newpipe', 1.1, 1.1)
              scaleObject('newpipe', 1, 1)


	addLuaSprite('bg1', false);
	addLuaSprite('bg', false);
	addLuaSprite('ilu', false);
	addLuaSprite('bloque', true);
	addLuaSprite('tuberia', true);
	addLuaSprite('luz', true);
	
end