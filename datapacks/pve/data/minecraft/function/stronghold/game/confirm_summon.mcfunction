tag @s remove pve.stronghold.rooms.lock
tag @s add pve.stronghold.rooms.fighting
function minecraft:stronghold/reset/close_tunnel
function minecraft:stronghold/game/summon
execute if score stronghold.difficuly board matches 2.. run function minecraft:stronghold/game/summon_2
execute if score stronghold.difficuly board matches 3.. run function minecraft:stronghold/game/summon_3
# execute if score stronghold.difficuly state matches 3.. run function minecraft:stronghold/game/summon
execute if score stronghold.difficuly board matches 4.. run function minecraft:stronghold/game/summon
execute if score stronghold.difficuly board matches 5.. run function minecraft:stronghold/game/summon

scoreboard players set stronghold.mobs tick 0
execute as @e[tag=stronghold.mobs] run scoreboard players add stronghold.mobs tick 1
execute if score stronghold.mobs tick matches ..0 run function minecraft:stronghold/game/fight_no
execute if score stronghold.mobs tick matches ..0 run return 0
tellraw @a[team=stronghold] ["\n\u00a7c    战斗开始。\n"]
title @a[team=stronghold] title ["\u00a7c战斗开始"]
title @a[team=stronghold] subtitle ["请小心！"]
# bossbar set stronghold value 10000

execute store result bossbar stronghold max run scoreboard players get stronghold.mobs tick
execute store result bossbar stronghold value run scoreboard players get stronghold.mobs tick
bossbar set stronghold name [{"text":"蚀界行者","color":"#FE4382","bold": true},"\u00a78 | ",{text:"战斗开始！",color:red},"\u00a78 | ",{nbt:"front_text.messages[0]",color:gold,block:"~6 ~12 ~18",interpret:true}]
# ~6 ~12 ~18 front_text.messages[0]
bossbar set stronghold color yellow
bossbar set stronghold visible true
