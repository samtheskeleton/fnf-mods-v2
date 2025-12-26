//ta
var staticCam;
var overlayCam;
function onCreate(){
//isla....
FlxG.cameras.remove(game.camHUD, false);
FlxG.cameras.remove(game.camOther, false);
staticCam = new FlxCamera();
staticCam.bgColor = 0x00;
overlayCam = new FlxCamera();
overlayCam.bgColor = 0x00;
FlxG.cameras.add(overlayCam, false);
FlxG.cameras.add(staticCam, false);
FlxG.cameras.add(game.camHUD, false);
FlxG.cameras.add(game.camOther, false);

createGlobalCallback('staticCam', function(tag:String){game.getLuaObject(tag).camera = staticCam;});
createGlobalCallback('overlayCam', function(tag:String){game.getLuaObject(tag).camera = overlayCam;});
}