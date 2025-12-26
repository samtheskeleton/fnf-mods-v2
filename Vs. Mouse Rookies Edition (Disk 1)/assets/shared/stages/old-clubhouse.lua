local bg = 'stages/olden/'
function onCreate()
makeLuaSprite('bg', bg..'Clubhouse-old', -800, -250)
Scale(1.25,'bg')
addLuaSprite('bg', false)

makeAnimatedLuaSprite('donald', bg..'donald', -500, -150)
addAnimationByPrefix('donald', 'beat', 'donald idle', 12, true)
playAnim('donald','beat', true)
Scale(1.25,'donald')
addLuaSprite('donald', false)
end
--isso e muito random mais vai
function Scale(scale,name)
setProperty(name..'.scale.x', scale) 
setProperty(name..'.scale.y', scale) 
end