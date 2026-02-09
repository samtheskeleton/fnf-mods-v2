
function onCreate()
    if (isStoryMode) then
    startVideo('start')
    end
end

function onEndSong()
    if (isStoryMode) then
    startVideo('end')
    end
end