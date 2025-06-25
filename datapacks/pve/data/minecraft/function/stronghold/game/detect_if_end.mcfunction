scoreboard players set stronghold.mobs tick 0
execute as @e[tag=stronghold.mobs] as @s[team=!mobs] run team join mobs
execute as @e[tag=stronghold.mobs] run scoreboard players add stronghold.mobs tick 1
execute store result bossbar stronghold value run scoreboard players get stronghold.mobs tick
bossbar set stronghold name [{"text":"蚀界行者","color":"#FE4382","bold": true},"\u00a78 | ",{text:"剩余怪物数量",color:aqua},{text:"【",color:gold},{score:{name:"stronghold.mobs",objective:"tick"}},{text:"】",color:gold},"\u00a78 | ",{nbt:"front_text.messages[0]",color:gold,block:"~6 ~12 ~18",interpret:true}]

execute as @e[tag=stronghold.boss] at @s run function minecraft:stronghold/game/boss_bossbar
execute if score stronghold.mobs tick matches ..0 run function minecraft:stronghold/game/fight_end