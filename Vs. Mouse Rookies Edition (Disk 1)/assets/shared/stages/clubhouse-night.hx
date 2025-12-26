import flixel.FlxSprite;
var marthaDanced:Bool = false;
var iconMartha:FlxSprite;
function onCreatePost(){
game.getLuaObject('lights').blend = 0;
game.getLuaObject('lights').alpha = 0.6;

for (i in [game.boyfriend, game.gf, game.dad,game.getLuaObject('martha'),game.getLuaObject('toodles'),game.getLuaObject('sign'),game.getLuaObject('overlay')]) {
i.color = 0xFF666666;
}
//icone da martha
iconMartha = new FlxSprite().loadGraphic(Paths.image('icons/martha'));
iconMartha.width = iconMartha.width / 2;
iconMartha.loadGraphic(Paths.image('icons/martha'), true, Math.floor(iconMartha.width), Math.floor(iconMartha.height));
iconMartha.animation.add("win", [0], 10, true);
iconMartha.animation.add("lose", [1], 10, true);
iconMartha.cameras = [game.camHUD];
iconMartha.antialiasing = ClientPrefs.data.antialiasing;
iconMartha.visible = !ClientPrefs.data.hideHud;
game.add(iconMartha);
}
function onSongStart(){
FlxTween.tween(game.getLuaObject('clouds'), {x: 170}, 5, {ease: FlxEase.quadInOut, type: FlxTween.PINGPONG});
}
function onUpdate() {
game.getLuaObject('overlay').alpha = 0.7 * game.camHUD.alpha;
game.getLuaObject('overlay').angle = game.camGame.angle;
iconMartha.x = game.iconP2.x + 30;
iconMartha.y = game.iconP2.y + 10;
iconMartha.scale.x = game.iconP2.scale.x;
iconMartha.scale.y = game.iconP2.scale.y;
//ta
if(health < 1.6){
iconMartha.animation.play('win');
}else{	
iconMartha.animation.play('lose');
}
}
function onBeatHit() {
if (curBeat % 2 != 0) {
marthaDance();
}
}
function marthaDance()
{
marthaDanced = !marthaDanced;

if (marthaDanced)
game.triggerEvent('martha', 'idle', '');
else
game.triggerEvent('martha', 'idle2', '');
}