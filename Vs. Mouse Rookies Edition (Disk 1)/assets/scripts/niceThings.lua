local splashAlpha = 0

function onUpdatePost(el)
notass()
for i = 0, getProperty('grpNoteSplashes.length')-1 do
 setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -40)
setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -90)
setPropertyFromGroup('grpNoteSplashes', i, 'alpha', splashAlpha)
end
end
function onCreatePost()
--setProperty('healthGain', 0)
--setProperty('healthLoss', 0)
setObjectCamera('comboGroup', 'camGame')
setProperty('comboGroup.x', 1510.5)
setProperty('comboGroup.y', -20)
end
function notass()
for i = 0, 7 do
setPropertyFromGroup('strumLineNotes', i, 'rgbShader.enabled', false)
end
end
function onCreate()
--eita
setPropertyFromClass('states.PlayState','SONG.arrowSkin','game/notes/default')
end
function onSpawnNote(i)
callMethod('notes.members['..i..'].reloadNote', {''})
setPropertyFromGroup('notes', i, 'rgbShader.enabled', false)
setPropertyFromGroup('notes', i, 'noteSplashData.useRGBShader', false)
end
function onCountdownTick(counter)
if counter == 1 then
setObjectCamera('countdownReady', 'camOther')
end
if counter == 2 then
setObjectCamera('countdownSet', 'camOther')
end
if counter == 3 then
setObjectCamera('countdownGo', 'camOther')
end
end