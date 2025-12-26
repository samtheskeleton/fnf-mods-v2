import flixel.tweens.FlxTweenType;
import flixel.FlxSprite;
import flixel.group.FlxTypedSpriteGroup;

var camOv;
var camOther;

var hBarP1; var hBarP2;
var iP1; var iP2;

// if it wasn't for paint.net i would've gone insane
var dotPos = [
    [274, 409],
    [372, 508],
    [452, 394],
    [541, 515],
    [625, 401]
];

var hBars;
var healthDots;

var oppHealth; 
var bfHealth;

function onCreatePost() {
    healthDots = new FlxTypedSpriteGroup(10);
    healthDots.cameras = [game.camHUD];
    game.add(healthDots);

    for (i in 0...10) {
        var dot:FlxSprite = new FlxSprite(dotPos[(i>4) ? (i-5) : i][0] * 0.19, dotPos[(i>4) ? (i-5) : i][1] * 0.19).loadGraphic(Paths.image('game/healthdot'));
        dot.scale.set(0.19, 0.19);
        dot.updateHitbox();
        dot.origin.set(0, 0);
        dot.ID = i;

        if (i>4) dot.x *= -1;

        dot.x += (i>4) ? 311 : 1015;
        dot.y += ClientPrefs.data.downScroll ? -290 : 578;
        
        
        healthDots.add(dot);
// fix for downscroll fucking up the dots' y value
if (ClientPrefs.data.downScroll) 
dot.y *= -1;
}
}
var ta;
function onUpdate(){
    // HEALTH DOTS THINGIES //
    healthDots.forEach(function(dot:FlxSprite)  
    {
        if (dot.ID > 4) // opponent
            FlxTween.color(dot, 0.35, dot.color, (dot.ID >= ((FlxMath.lerp(game.health - 1) * 5) + 5) ? FlxColor.WHITE : FlxColor.GRAY), {ease: FlxEase.circOut});
        else  // bf
            FlxTween.color(dot, 0.35, dot.color, (dot.ID < (4 - (game.health * 4)) ? FlxColor.GRAY : FlxColor.WHITE), {ease: FlxEase.circOut});

        dot.colorTransform.alphaMultiplier = game.iconP1.alpha; // fixes the dots' alpha value not changing visibly
    });
}