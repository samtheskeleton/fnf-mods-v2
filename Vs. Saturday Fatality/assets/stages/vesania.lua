function onCreate() 
  makeLuaSprite('sky', 'backgrounds/vesania/sky',-700, -1150);
addLuaSprite('sky', false);
scaleObject('sky', 1,1);

makeLuaSprite('poster', 'backgrounds/vesania/poster', -100, -900);
addLuaSprite('poster', false);
scaleObject('poster', 0.7, 0.65);

  makeAnimatedLuaSprite('watonTrono', 'backgrounds/vesania/Waton_puta', -50, -400);
  addAnimationByPrefix('watonTrono', 'idle', 'Waton puta de mierda', 24, false);
  scaleObject('watonTrono', 1.15,1.15);
  addLuaSprite('watonTrono',false)

  makeLuaSprite('bg', 'backgrounds/vesania/BG',-600, -300);
addLuaSprite('bg', false);
scaleObject('bg', 1,1);

makeLuaSprite('lightLeft', 'backgrounds/vesania/light left', -600, -100);
addLuaSprite('lightLeft', true);
scaleObject('lightLeft', 0.85, 0.85);

makeLuaSprite('lightRight', 'backgrounds/vesania/light right', 100, -100);
addLuaSprite('lightRight', true);
scaleObject('lightRight', 0.85, 0.85);
end

function onBeatHit()
	if curBeat % 2== 0 then
    objectPlayAnimation('watonTrono', 'idle', false);
  end
end

function opponentNoteHit(id, direction, noteType, isSustainNote) 
  triggerEvent('Screen Shake', "0.1, 0.008", "0.1, 0.008")
end