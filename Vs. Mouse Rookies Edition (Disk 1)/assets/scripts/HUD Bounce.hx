var bounceHeight = 0;
var bounceStrength = 0;
var shouldBounce = true;
function onEvent(eventName,value1,value2){
if (eventName == 'HUD_Bounce'){
bounceHeight = Std.parseFloat(value1);
bounceStrength = Std.parseFloat(value2);
}
}

function onStepHit(){
    if (shouldBounce){
        if (curStep % 4 == 0) FlxTween.tween(game.camHUD, {y: -bounceHeight * bounceStrength}, Conductor.stepCrochet * 0.002, {ease: FlxEase.circOut});
        
        if (curStep % 4 == 2) FlxTween.tween(game.camHUD, {y: 0}, Conductor.stepCrochet * 0.002, {ease: FlxEase.sineIn});
    } else{
        FlxTween.tween(game.camHUD, {y: 0}, Conductor.stepCrochet * 0.002, {ease: FlxEase.sineOut});
    }
}