# bossbar set stronghold.boss name ["\u00a7b\u00a7lBOSS \u00a78| ",{selector:"@e[tag=stronghold.boss]",color:dark_red,bold:true}]
# scoreboard players set stronghold.healthTotal board 0

execute store result score stronghold.healthTmp board run data get entity @s Health 10
scoreboard players operation stronghold.healthTotal board += stronghold.healthTmp board