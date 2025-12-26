import flixel.FlxSprite;
var overlay:FlxSprite;

function onSongStart(){
FlxTween.tween(game.getLuaObject('clouds'), {x: 170}, 5, {ease: FlxEase.quadInOut, type: FlxTween.PINGPONG});
}

function onUpdate(elapsed:Float) {
game.getLuaObject('overlay').alpha = 0.7 * game.camHUD.alpha;
}

// NOTE: I KNOW REPENTANCE'S EVENTS ARE ALL OVER THE PLACE BUT HEY IT WORKS
// TODO: MAYBE FIX THIS!!!
function onStepHit(){
    switch (curStep) {
            case 1536:
                game.getLuaObject('lights').visible = game.getLuaObject('sign').visible = game.getLuaObject('overlay').visible = false;
            case 1792:
                 game.getLuaObject('lights').visible = game.getLuaObject('sign').visible = game.getLuaObject('overlay').visible = true;
        }
}