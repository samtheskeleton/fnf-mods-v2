import flixel.FlxSprite;
var overlay:FlxSprite;
var minnieDanced:Bool = false;
function onSongStart(){
FlxTween.tween(game.getLuaObject('clouds'), {x: 170}, 5, {ease: FlxEase.quadInOut, type: FlxTween.PINGPONG});
}
function onUpdate() {
game.getLuaObject('overlay').alpha = 0.7 * game.camHUD.alpha;
game.getLuaObject('overlay').angle = game.camGame.angle;
}
function onBeatHit() {
    if (curBeat % 2 != 0){
        game.getLuaObject('donald').playAnim('bop', true);
        game.getLuaObject('goofy').playAnim('bop', true);
        minnieDance();
    }
}
function minnieDance()
{
minnieDanced = !minnieDanced;

if (minnieDanced)
game.triggerEvent('minnie', 'Left', '');
else
game.triggerEvent('minnie', 'Right', '');
}