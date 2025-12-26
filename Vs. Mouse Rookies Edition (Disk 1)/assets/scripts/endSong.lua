function onCreate()
initSaveData('Mano')
flushSaveData('Mano')
end
function onUpdatePost()
if getDataFromSave('Mano','Saveshit') then
boraa = true --week
else
boraa = false --freeplay
end
end
--resumindo isso aqui e tipo como se fosse o bagulho de week so que em .lua = pior jeito possivel de fazer mais fds
local allowCountdown = false
function onEndSong()
if not allowCountdown then --Block the first countdown
if boraa then
if songName:lower() == 'welcome' then
loadSong('unsettled')
elseif songName:lower() == 'unsettled' then
loadSong('repentance')
elseif songName:lower() == 'repentance' then
loadSong('manical')
elseif songName:lower() == 'manical' then
loadSong('vs-mouse-rookies-team')
end
end
if not boraa then
loadSong('freeplay')
end
return Function_Stop;
end
return Function_Continue;
end