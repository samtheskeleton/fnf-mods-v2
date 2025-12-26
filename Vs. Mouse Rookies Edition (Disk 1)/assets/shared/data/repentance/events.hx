import flixel.FlxSprite;
var camMove:Bool = true;
var camSnap:Bool = false;
var camPos:Array<Float> = [900, 330];
var redBG = new FlxSprite().makeGraphic(2560, 1440, FlxColor.RED);

function onCreate(){
    tweenCameraZoom(0.8, 0);
    game.camHUD.alpha = 0;
    game.camGame.fade(FlxColor.BLACK, 0, false, null);
    tweenCameraPos(camPos.x+600, game.camFollow.y, 0.1);
}

function onSongStart(){
game.camGame.fade(FlxColor.BLACK, 7, true, null);
tweenCameraZoom(0.6, 9);
}

function onStepHit() {
    switch (curStep) {
        case 127:
            game.camGame.fade(FlxColor.WHITE, 1.25, true, null);
            tweenCameraPos((game.dad.getMidpoint().x + game.boyfriend.getMidpoint().x) / 2, game.camFollow.y, 0.1);
            tweenCameraZoom(0.45, 0.2);
        case 139:
            tweenCameraZoom(0.4, 12);
        case 239: FlxTween.tween(game.camHUD, {alpha: 1}, 2, {ease: FlxEase.cubeOut});
        case 246:
            tweenCameraZoom(0.9, 1.5);      
            case 495:
            tweenCameraZoom(0.9, 1.5);
        case 255: 
            camMove = true;
            camSnap = false; game.triggerEvent('eita', 'true','');
            game.camGame.fade(FlxColor.WHITE, 1.25, true, null);
            tweenCameraZoom(0.52, 0.4);
        case 511:
        camMove = true;
            camSnap = false; game.triggerEvent('eita', 'true','');
            game.camGame.fade(FlxColor.WHITE, 1.25, true, null);
            tweenCameraZoom(0.52, 0.4);
        case 643:
        camMove = true;
            camSnap = false; game.triggerEvent('eita', 'true','');
            game.camGame.fade(FlxColor.WHITE, 1.25, true, null);
            tweenCameraZoom(0.52, 0.4);
        case 639:
            tweenCameraZoom(0.39, 0.4);
        case 767:
            game.camGame.fade(FlxColor.WHITE, 1.25, true, null);
            tweenCameraZoom(0.95, 0.4);
        case 769:
            tweenCameraZoom(0.52, 24);
        case 1279:
            camMove = true;
            camSnap = false; game.triggerEvent('eita', 'true','');
            tweenCameraZoom(0.52, 1);
        case 1023 | 2047 | 1119 | 2143 | 1151 | 2175: 
            if (curStep == 512 || curStep == 1024 || curStep == 2048) 
            tweenCameraZoom(0.7, 1);
         case 511:
         camSnap = false; game.triggerEvent('eita', 'true','');
         case 1023:
         camSnap = false; game.triggerEvent('eita', 'true','');
         case 2047:
         camSnap = false; game.triggerEvent('eita', 'true','');
        case 1055: 
            camSnap = true; game.triggerEvent('eita', 'false','');
        case 2079:
        camSnap = true; game.triggerEvent('eita', 'false','');
        case 1535:
        redBG.scrollFactor.set(0, 0);
        redBG.screenCenter();
        redBG.scale.set(1.5, 1.5);
        game.addBehindGF(redBG);
            
        for (i in [game.boyfriend, game.gf, game.dad]) {
                i.color = FlxColor.BLACK;
                if (i == game.gf) {
                    i.alpha = 0.75;
                }
            }
            tweenCameraPos((game.dad.getMidpoint().x + game.boyfriend.getMidpoint().x) / 2, game.camFollow.y, 1);
            tweenCameraZoom(0.5, 1);
        case 1663:
            tweenCameraZoom(1, 16);
        case 1754:
            camSnap = false; game.triggerEvent('eita', 'true','');
            tweenCameraPos(game.camFollow.x, -1100, 3);
            tweenCameraZoom(0.35, 3);
        case 1791:
            tweenCameraZoom(0.52, 0.0001);
            camSnap = false; game.triggerEvent('eita', 'true','');
            camMove = true;
            game.camGame.fade(FlxColor.RED, 0.4, true, null);
            //some vermelho
            remove(redBG, true);
            redBG.alpha = 0.25;
            redBG.blend = 0;
            redBG.scale.set(1.5, 1.5);
            add(redBG);
       
            for (i in [game.boyfriend, game.gf, game.dad]) {
                i.color = FlxColor.WHITE;
                i.alpha = 1;
            }
        case 2305:
            tweenCameraPos(1050, -1100, 3);
            tweenCameraZoom(0.35, 3);
            FlxTween.tween(game.camHUD, {alpha: 0}, 8, {ease: FlxEase.cubeOut});
    }
}

function onUpdatePost(){
if (!camMove) game.camFollow.setPosition(camPos[0], camPos[1]); 
if (camSnap) FlxG.camera.snapToTarget();
}

function tweenCameraZoom(zoom:Float, duration:Float) {
    FlxTween.cancelTweensOf(camGame);
    game.defaultCamZoom = zoom;
    FlxTween.tween(game.camGame, {zoom: game.defaultCamZoom}, duration, {ease: FlxEase.cubeInOut});
}

function tweenCameraPos(_x:Float, _y:Float, duration:Float) {
    FlxTween.cancelTweensOf(camFollow);
    camMove = false;
    FlxTween.num(game.camFollow.x, _x, duration, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[0] = v;});
    FlxTween.num(game.camFollow.y, _y, duration, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[1] = v;});
}