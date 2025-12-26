function onCreatePost()
makeLuaText('text', '', 0, 0, 0)
setObjectCamera('text', 'camOther')
setTextColor('text','FFFFFF')
setTextBorder('text', 2.5, '000000')
setTextFont('text', 'dokdo.ttf')
addLuaText('text')
setTextSize('text', 32)
end
function onEvent(name,v1,v2)
if name == 'Lyrics' then
setTextString('text', v1)
setTextColor('text', v2)
--fiquei com preguiça de transformar isso em .lua então deixei assim k
runHaxeCode([[
game.getLuaObject('text').screenCenter(0x01);
game.getLuaObject('text').y = 720;
FlxTween.cancelTweensOf(game.getLuaObject('text'));
FlxTween.tween(game.getLuaObject('text'), {y: 678}, 0.3, {ease: FlxEase.cubeOut});
]])
end
end