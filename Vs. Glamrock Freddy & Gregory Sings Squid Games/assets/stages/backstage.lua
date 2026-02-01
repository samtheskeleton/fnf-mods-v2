function onCreate()

makeLuaSprite('squibg', 'squibg', 200, 0)
setLuaSpriteScrollFactor('squibg', 0.7, 0.7);

makeLuaSprite('gradient', 'gradient', 200, 0)
setLuaSpriteScrollFactor('gradient', 0.7, 0.7);

makeAnimatedLuaSprite('freddything', 'freddything', 200, 0)
setLuaSpriteScrollFactor('freddything', 0.7, 0.7);
addAnimationByPrefix('freddything', 'freddything', 'freddything', 10, true)
objectPlayAnimation('freddything', 'freddything', true)

makeLuaSprite('table', 'table', 500, 50)
setLuaSpriteScrollFactor('table', 0.8, 0.8);
scaleObject('table', 0.8, 0.8)

makeLuaSprite('garbage', 'garbage', 200, 50)
setLuaSpriteScrollFactor('garbage', 0.9, 0.9);
scaleObject('garbage', 0.8, 0.8)


addLuaSprite('squibg', false)
addLuaSprite('freddything', false)
addLuaSprite('table', true)
addLuaSprite('garbage', true)
addLuaSprite('gradient', true)

end
function onCreatePost()
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
end
	setProperty('gf.visible',false)
end