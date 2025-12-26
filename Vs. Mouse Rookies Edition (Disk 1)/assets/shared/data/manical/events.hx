var camMove = true;
var camSnap = false;
var camPos = [800, 400];
var marthaPos, dadPos, bfPos;
var staticCam;
var overlayCam;
var camOv;

function onCreate() {
game.defaultCamZoom = 0.8;
game.camHUD.fade(FlxColor.BLACK, 0, false, null);
//isla....
FlxG.cameras.remove(game.camHUD, false);
FlxG.cameras.remove(game.camOther, false);
staticCam = new FlxCamera();
staticCam.bgColor = 0x00;
overlayCam = new FlxCamera();
overlayCam.bgColor = 0x00;
camOv = new FlxCamera();
camOv.bgColor = 0x00;
FlxG.cameras.add(overlayCam, false);
FlxG.cameras.add(camOv, false);
FlxG.cameras.add(staticCam, false);
FlxG.cameras.add(game.camHUD, false);
FlxG.cameras.add(game.camOther, false);

createGlobalCallback('staticCam', function(tag:String){game.getLuaObject(tag).camera = staticCam;});
createGlobalCallback('overlayCam', function(tag:String){game.getLuaObject(tag).camera = overlayCam;});
createGlobalCallback('camOv', function(tag:String){game.getLuaObject(tag).camera = camOv;});
}

function onCreatePost() {
    marthaPos = [game.getLuaObject('martha').x, game.getLuaObject('martha').y];
    dadPos = [game.dad.x, game.dad.y];
    bfPos = [game.boyfriend.x, game.boyfriend.y];
}

function onSongStart(){
game.camHUD.fade(FlxColor.BLACK, 6, true, null);
FlxTween.tween(game.camGame, {zoom: 0.52}, 6, {ease: FlxEase.cubeInOut});
}

function onBeatHit() {
    switch(curBeat){
        case 112:
            camMove = false;
        case 119:
            camMove = true;
        case 128:
            camMove = true;
        case 248:
            camMove =  false;
            FlxTween.num(800, 1050, 3, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[0] = v;});
            FlxTween.num(400, -1100, 3, {ease: FlxEase.cubeInOut}, (v:Float) -> {camPos[1] = v;});
            FlxTween.tween(game.camGame, {zoom: 0.35}, 3, {ease: FlxEase.cubeInOut});
            game.defaultCamZoom = 0.35;
        case 256: thingie(game.dad, 0.9, 100, -20, false);
        case 264: thingie(game.getLuaObject('martha'), 0.88, 240, -20, false);
        case 272: thingie(game.boyfriend, 0.77, -420, -30, false);
        case 284: 
            for (c in [game.dad,game.getLuaObject('martha'),game.boyfriend]) thingie(c, 0,0,0, true);

            FlxTween.tween(game.camGame, {angle: -2.5, zoom: 1.6}, 1.2, {ease: FlxEase.cubeIn});
            game.defaultCamZoom = 1.6;
            game.camHUD.fade(FlxColor.BLACK, 1, false, null);
        case 288:
            game.camHUD.fade(FlxColor.BLACK, 3, true, null);
            game.defaultCamZoom = 0.5;
            game.camGame.angle = 0;
            camMove = camSnap = true; game.triggerEvent('eita', 'false','');

            for (c in [game.dad,game.getLuaObject('martha'),game.boyfriend]) {
                c.visible = true;
                c.alpha = 1;

                game.boyfriend.scale.x = 1;
                game.boyfriend.scale.y = 1;
                
                game.dad.scale.x = 1.25;
                game.dad.scale.y = 1.25;      

                game.getLuaObject('martha').scale.x = 1.12;
                game.getLuaObject('martha').scale.y = 1.12;                        
                
                game.gf.scale.x = 1;
                game.gf.scale.y = 1;
            }

            game.getLuaObject('martha').setPosition(marthaPos[0], marthaPos[1]);
            game.dad.setPosition(dadPos[0], dadPos[1]);
            game.boyfriend.setPosition(bfPos[0], bfPos[1]);

            game.getLuaObject('blu').alpha = 0.4;
        case 289:
            camSnap = false; game.triggerEvent('eita', 'true','');
        case 576:
            FlxTween.tween(game.camGame, {zoom: 0.35}, 1, {ease: FlxEase.cubeInOut});
            game.camGame.fade(FlxColor.BLACK, 1, false, null);
            game.defaultCamZoom = 0.25;
    }
}

function thingie(c, sc, x, y, r) {
    if (!r) {
        var t = [c.scale.x, c.x, c.y];
        c.cameras = [camOv];
        c.scale.set(sc, sc);
        c.setPosition(c.x + x, c.y + y);
        c.alpha = 0;
    }

    FlxTween.tween(c, {alpha: (r ? 0 : 0.8)}, 0.7, {ease: FlxEase.quadInOut, onComplete: function(t:FlxTween) {
        if (r) {
            c.cameras = [game.camGame];
            c.scale.set(t[0], t[0]);
            c.setPosition(t[1], t[2]);
        }
    }});
}

function onUpdatePost() {
    if (!camMove) game.camFollow.setPosition(camPos[0], camPos[1]);
    if (camSnap) FlxG.camera.snapToTarget(); 
}