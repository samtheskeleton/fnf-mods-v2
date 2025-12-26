var camMove:Bool = true;
var camPos:Array<Float> = [950, 330];

function onCreate() {
    game.defaultCamZoom = 0.8;
    FlxTween.tween(game.camGame, {zoom: 0.8}, 0.001);
    game.camHUD.alpha = 0;
    game.camGame.fade(FlxColor.BLACK, 0, false, null);
}

function onSongStart(){
game.camGame.fade(FlxColor.BLACK, 7, true, null);
FlxTween.tween(game.camGame, {zoom: 0.52}, 9, {ease: FlxEase.cubeInOut});
}

function onStepHit() {
    switch (curStep) {
        case 128: FlxTween.tween(game.camHUD, {alpha: 1}, 0.5, {ease: FlxEase.cubeOut});
        case 632: 
            FlxTween.tween(game.camGame, {zoom: 0.9}, 1.1, {ease: FlxEase.cubeIn});
        case 960: 
            FlxTween.tween(game.camGame, {zoom: 0.85}, 5, {ease: FlxEase.cubeInOut});
        case 1024: game.camGame.zoom = 1;
        //shittttt
        case 1280: camMove = false;
        case 1376:camMove = false;
        case 1312: camMove = true;
        case 1400:camMove = true;
        //oh ok :)
        case 1408: 
            game.camGame.zoom = 1.5;
            game.camGame.shake(0.01, 1.75);
    }
}

function onUpdatePost(){
if (!camMove) 
game.camFollow.setPosition(camPos[0], camPos[1]);
}