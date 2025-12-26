function onCreatePost()
--Iterate over all notes
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'martha' then --Check if the note on the chart is a Bullet Note	
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Stop the animation from the original character
setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true); --Dont let the original character do miss animations
end
end
end
function onSpawnNote(i,d,t,s)
if t == 'martha' then
setPropertyFromGroup('notes', i, 'texture', 'game/notes/martha_notes')
setPropertyFromGroup('notes', i, 'rgbShader.enabled', false)
end
end