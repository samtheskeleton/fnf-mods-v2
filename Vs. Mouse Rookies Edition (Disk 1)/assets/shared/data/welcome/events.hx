var camMove:Bool = false;
var camSnap:Bool = false;
var camPos:Array<Float> = [1050, -1000];

function onCreate() {
    game.defaultCamZoom = 0.35;
    FlxTween.tween(game.camGame, {zoom: 0.35}, 0.001); // fixes the zoom not resetting when restarting the song
    game.camHUD.alpha = 0;
    game.camGame.fade(FlxColor.BLACK, 0, false, null);
}

function onSongStart(){
game.camGame.fade(FlxColor.BLACK, 3, true, null);
}

function onStepHit() {
    switch (curStep) {
        case 14: FlxTween.num(-1000, 330, 6, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[1] = v;});
        case 64:
            camMove = true;
            FlxTween.tween(game.camHUD, {alpha: 1}, 0.5, {ease: FlxEase.cubeOut});
            FlxTween.tween(game.camGame, {zoom: 0.52}, 0.8, {ease: FlxEase.cubeOut});
            game.defaultCamZoom = 0.52;
        case 352: camMove = false;
        case 376: camMove = true;
        case 384:
            camGame.fade(FlxColor.WHITE, 2, false, null);
            FlxTween.tween(game.camGame, {zoom: 0.8}, 2.5, {ease: FlxEase.cubeInOut});
            FlxTween.tween(game.camGame, {angle: 4}, 2.3, {ease: FlxEase.cubeInOut});
        case 400:
            game.camGame.fade(FlxColor.WHITE, 0.5, true, null);
            FlxTween.cancelTweensOf(game.camGame);
            game.camGame.zoom = 0.9;
            FlxTween.tween(game.camGame, {angle: 0}, 0.09);
        case 532: 
            camSnap = true;
            game.triggerEvent('eita', 'false','');
            game.defaultCamZoom = 0.8;
            FlxTween.tween(game.camGame, {zoom: 0.8}, 0.001);
        case 537: camSnap = false;  game.triggerEvent('eita', 'true','');
        case 728:
            camMove = false;
            FlxTween.tween(game.camHUD, {alpha: 0}, 3, {ease: FlxEase.quadOut});

            game.defaultCamZoom = 0.45;
            FlxTween.tween(game.camGame, {zoom: 0.45}, 3, {ease: FlxEase.cubeInOut});

            FlxTween.num(game.camFollow.x, 950, 3, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[0] = v;});
            FlxTween.num(game.camFollow.y, 330, 3, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[1] = v;});
    }
}

function onUpdatePost() {
    if (!camMove) game.camFollow.setPosition(camPos[0], camPos[1]);
    if (camSnap) FlxG.camera.snapToTarget(); 
}