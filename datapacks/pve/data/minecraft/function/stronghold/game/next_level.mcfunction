gamemode spectator @a[team=stronghold,gamemode=!creative]
scoreboard players set stronghold.state state 4
execute in lobby run tp @a[team=stronghold,gamemode=spectator] 176 -8 190 0 0
effect give @a[team=stronghold,gamemode=spectator] blindness 4 25 true
effect give @a[team=stronghold,gamemode=spectator] darkness 4 25 true
scoreboard players add pve.stronghold.level board 1
execute if score pve.stronghold.level board matches 4.. in lobby run function minecraft:stronghold/over/finish
execute unless score stronghold.state state matches 1..5 run return 0

# function minecraft:stronghold/game/auto_difficulty

execute if score stronghold.difficuly board matches 0 run title @a[team=stronghold] subtitle [{text:"难度：",color:white},{"text":"自动选择","color":"yellow"}]
execute if score stronghold.difficuly board matches 1 run title @a[team=stronghold] subtitle [{text:"难度：",color:white},{"text":"简单","color":"green"}]
execute if score stronghold.difficuly board matches 2 run title @a[team=stronghold] subtitle [{text:"难度：",color:white},{"text":"普通","color":"aqua"}]
execute if score stronghold.difficuly board matches 3 run title @a[team=stronghold] subtitle [{text:"难度：",color:white},{"text":"困难","color":"red"}]
execute if score stronghold.difficuly board matches 4 run title @a[team=stronghold] subtitle [{text:"难度：",color:white},{"text":"逆天","color":"dark_red"}]
execute if score stronghold.difficuly board matches 5 run title @a[team=stronghold] subtitle [{text:"难度：",color:white},{"text":"变态","color":"#460101"}]
title @a[team=stronghold] title ["\u00a76即将进入下一层..."]
function minecraft:stronghold/reset/reset_and_build
tag @a[team=stronghold,gamemode=!creative,tag=!GOABLE.SPEC] add stronghold.alive
clear @a[team=stronghold,gamemode=!creative,tag=!GOABLE.SPEC] *[custom_data~{stronghold:"xuyuanbi"}]
title @a[team=stronghold,gamemode=!creative,tag=!GOABLE.SPEC] actionbar ["\u00a7c许愿币已经掉落... 许愿币无法带入下一层。"]