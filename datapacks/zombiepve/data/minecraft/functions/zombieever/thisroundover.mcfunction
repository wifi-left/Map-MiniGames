tellraw @a[team=play.zombie] ["\n\u00a7a  所有僵尸都已被杀死！ \u00a7b❀ Level Clean ❀\n"]
execute if score zombie.round board matches ..13 run schedule function zombieever/nextround 8s
execute if score zombie.round board matches 14 run schedule function zombieever/talks/10/1 8s
execute if score zombie.round board matches 15 run schedule function zombieever/talks/11/1 8s
execute if score zombie.round board matches 16..20 run schedule function zombieever/nextround 15s
execute if score zombie.round board matches 21 run schedule function zombieever/talks/boss/1 15s
execute if score zombie.round board matches 22.. run schedule function zombieever/talks/final/1 15s
function zombieever/fuhuo_next
scoreboard players set zombie.state state 2
bossbar set zombie:zombiecount name ["\u00a7a第 ",{"score":{"name": "zombie.round","objective": "board"},"color":"yellow"}," \u00a7a波僵尸攻击结束。"]