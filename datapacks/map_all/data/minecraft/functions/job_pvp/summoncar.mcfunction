# scoreboard players set need.pvpcar board 0
# execute as @e[tag=pvp.car] at @s run scoreboard players add need.pvpcar board 1
# execute if score need.pvpcar board matches ..6 run summon minecart -143 36 225 {Tags:["pvp.car"]}
# team join entity @e[tag=pvp.car]