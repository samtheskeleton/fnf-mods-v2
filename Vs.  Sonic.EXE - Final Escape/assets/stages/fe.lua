
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 2000;
local yy = 1050;
local xx2 = 2300;
local yy2 = 1050;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('bac', 'fe/bg', 250, 50);
	scaleLuaSprite('bac', 1, 1)
	addLuaSprite('bac', false);

	makeLuaSprite('idk', 'fe/idk', 250, 50);
	scaleLuaSprite('idk', 0.8, 0.8)
	addLuaSprite('idk', false);
	setProperty('idk.alpha', 0)
	setScrollFactor('idk', 1.2, 1.2);

	makeLuaSprite('overlaybg', 'fe/overlaybg', 250, 50);
	scaleLuaSprite('overlaybg', 1, 1)
	addLuaSprite('overlaybg', false);
	setProperty('overlaybg.alpha', 0)

	makeLuaSprite('way2', 'fe/way2', 250, 50);
	scaleLuaSprite('way2', 1, 1)
	addLuaSprite('way2', false);
	setProperty('way2.alpha', 0)

	makeAnimatedLuaSprite('way','fe/way',250,1100)
	addAnimationByPrefix('way','a','a',24,true)
        addLuaSprite('way', false);
	setProperty('way.alpha', 0)

	makeLuaSprite('shadep', 'fe/shadexeno', 250, 50);
	scaleLuaSprite('shadep', 1, 1)
	addLuaSprite('shadep', true);
	setProperty('shadep.alpha', 0)


	makeLuaSprite('supershade', 'fe/supershade', 250, 50);
	scaleLuaSprite('supershade', 1, 1)
	addLuaSprite('supershade', true);
	setProperty('supershade.alpha', 0)

	makeLuaSprite('sl', 'speedline', 50, 950);
	scaleLuaSprite('sl', 1, 1)
	addLuaSprite('sl', true);
	setProperty('sl.alpha', 0)

end
function onStepHit()
if curStep == 484 then
doTweenAlpha('idk', 'idk', 1, 0.1, 'linear')
doTweenAlpha('overlaybg', 'overlaybg', 1, 0.1, 'linear')
doTweenAlpha('way', 'way', 1, 0.1, 'linear')
doTweenAlpha('shadep', 'shadep', 1, 0.1, 'linear')
doTweenAlpha('sl', 'sl', 1, 0.1, 'linear')
end
if curStep == 736 then
doTweenAlpha('idk', 'idk', 1, 0.1, 'linear')
doTweenAlpha('overlaybg', 'overlaybg', 1, 0.1, 'linear')
doTweenAlpha('way', 'way', 0, 0.01, 'linear')
doTweenAlpha('way2', 'way2', 1, 0.01, 'linear')
doTweenAlpha('shadep', 'shadep', 1, 0.1, 'linear')
doTweenAlpha('sl', 'sl', 1, 0.1, 'linear')
end
if curStep == 896 then
doTweenAlpha('idk', 'idk', 1, 0.1, 'linear')
doTweenAlpha('overlaybg', 'overlaybg', 1, 0.1, 'linear')
doTweenAlpha('way', 'way', 1, 0.01, 'linear')
doTweenAlpha('way2', 'way2', 0, 0.01, 'linear')
doTweenAlpha('shadep', 'shadep', 1, 0.1, 'linear')
doTweenAlpha('sl', 'sl', 1, 0.1, 'linear')
end
if curStep == 1696 then
doTweenAlpha('idk', 'idk', 0, 0.1, 'linear')
doTweenAlpha('overlaybg', 'overlaybg', 0, 0.1, 'linear')
doTweenAlpha('way', 'way', 0, 0.1, 'linear')
doTweenAlpha('shadep', 'shadep', 0, 0.1, 'linear')
doTweenAlpha('sl', 'sl', 0, 0.1, 'linear')
end
if curStep == 1712 then
doTweenAlpha('bf', 'boyfriend', 0, 0.1, 'linear')
end
if curStep == 1744 then
doTweenAlpha('bf', 'boyfriend', 1, 10, 'linear')
end
if curStep == 2576 then
doTweenAlpha('overlaybg', 'overlaybg', 1, 0.1, 'linear')
end
if curStep == 3152 then
doTweenAlpha('idk', 'idk', 1, 0.1, 'linear')
doTweenAlpha('way', 'way', 1, 01, 'linear')
doTweenAlpha('supershade', 'supershade', 1, 0.1, 'linear')
doTweenAlpha('sl', 'sl', 1, 0.1, 'linear')
end
end


function onUpdate()
    	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
        else

  setProperty('defaultCamZoom',0.6)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if curStep == 224 then
		setProperty('defaultCamZoom',0.6)
        xx2 = 2000;
        yy2 = 1050;  
        xx = 2000;
        yy = 900;  
	end
    if curBeat == 180 then
		setProperty('defaultCamZoom',2)
	end
    if curBeat == 120 then
		setProperty('defaultCamZoom',0.4)
        xx2 = 2050;
        yy2 = 1050;  
        xx = 1800;
        yy = 1050; 
	end
    if curBeat == 359 then
		setProperty('defaultCamZoom',0.5)
        xx2 = 3500;
        yy2 = 1050;  
	end
    if curStep == 484 then
		setProperty('defaultCamZoom',0.5)
        xx = 2000;
        yy = 950;  
	end
    if curStep == 736 then
		setProperty('defaultCamZoom',0.4)
        xx2 = 2600;
        yy2 = 1200;  
        xx = 2600;
        yy = 950;  
	end
    if curStep == 896 then
		setProperty('defaultCamZoom',0.5)
        xx2 = 2050;
        yy2 = 950;  
        xx = 2050;
        yy = 1050; 
	end
if curStep == 1696 then
	setProperty('defaultCamZoom',0.6)
        xx2 = 2500;
        yy2 = 1050;  
	end
if curStep == 2192 then
	setProperty('defaultCamZoom',0.3)
        xx2 = 2400;
        yy2 = 1050;  
        xx = 2500;
        yy = 1050;  
	end
if curStep == 3152 then
	setProperty('defaultCamZoom',0.3)
       xx2 = 2200;
        yy2 = 1050;  
        xx = 2000;
        yy = 950;  
	end

end

