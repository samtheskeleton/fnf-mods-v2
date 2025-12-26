function onCreate()
Deads()
end

function onEvent(name,v1,v2)
if name == 'Change Character' then
if v1 == 'bf' then
Deads()
end
end
end

local deathAnims = {
{'bf-rook', 'bf-rook-death'},
{'bf-old', 'bf-old'}
}

function Deads()
for _, v in pairs(deathAnims) do
if boyfriendName == v[1] then
setPropertyFromClass('substates.GameOverSubstate', 'characterName', v[2])
end
end
end