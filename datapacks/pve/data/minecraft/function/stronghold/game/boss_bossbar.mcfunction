bossbar set stronghold.boss name ["\u00a7b\u00a7lBOSS \u00a78| ",{selector:"@e[tag=stronghold.boss]",color:dark_red,bold:true}]
# execute store result bossbar stronghold.boss value run data get entity @s Health 10
scoreboard players set stronghold.healthTotal board 0
execute as @e[tag=stronghold.boss] at @s run function minecraft:stronghold/game/boss_bossbar_per
execute store result bossbar stronghold.boss value run scoreboard players get stronghold.healthTotal board