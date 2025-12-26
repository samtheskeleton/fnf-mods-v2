--feito por marcelo gamer oficial
--fiz isso enquanto escutava a musica de murder drones a 'bite me' muito foda essa porraaaaaa
--'i wont fall down you need me' essa parte e boa demaizi
local uzinha = {
{'- S++', 1},
{'- S+', 0.95},
{'- A', 0.9},
{'- B', 0.75},
{'- C', 0.55},
{'- D', 0.45},
{'- F', 0.35}
}
function onCreatePost()
--coisax
setProperty('scoreTxt.visible', false);
setProperty('timeBar.visible', false)
setProperty('timeBar.bg.visible', false)
setProperty('timeTxt.visible', false)
setProperty('healthBar.visible', false)
setProperty('healthBar.bg.visible', false)
setProperty('Health.visible', false)
--BZL
makeLuaText('Accuracy', 'Accuracy: 0', getProperty('Accuracy.width'), getProperty('scoreTxt.x')+350, getProperty('scoreTxt.y')+1)
setObjectCamera('Accuracy', 'camHUD')
setTextSize('Accuracy', 20)  -- Tamanho da fonte
setTextFont("Accuracy", "dokdo.ttf")
addLuaText('Accuracy')
end
local accuracy = 0
local wife = '- [N/Y]'
function aiii()
for _, ratin in ipairs(uzinha) do
if getProperty('ratingPercent') >= ratin[2] then
wife = ratin[1]
break
end
end    
end
function onUpdate()
aiii()
--nobru
songAcc = getProperty('ratingPercent')

setTextString('Accuracy', 'Accuracy: '..(math.floor(songAcc * 10000) / 100)..' '..wife..'               Misses: '..misses..'                  Score: '..score..'')
--oh boy  
end