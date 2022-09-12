tellraw @a[team=play.zombie] ["\n\u00a7a  所有僵尸都已被杀死！下一波僵尸将会在 \u00a7e15秒 \u00a7a后来临！\n"]
schedule function zombieever/nextround 15s
function zombieever/fuhuo_next
scoreboard players set zombie.state state 2
bossbar set zombie:zombiecount name ["\u00a7a第 ",{"score":{"name": "zombie.round","objective": "board"},"color":"yellow"}," \u00a7a波僵尸攻击结束。"]