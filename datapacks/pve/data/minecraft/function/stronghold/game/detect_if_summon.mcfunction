tag @a remove stronghold.tmp
execute unless entity @a[team=stronghold,gamemode=adventure] run return 0
execute positioned ~2 ~1 ~2 run tag @a[dx=13,dy=10,dz=13,team=stronghold,gamemode=adventure] add stronghold.tmp

# execute if entity @a[tag=stronghold.tmp] run say @a[tag=stronghold.tmp]

scoreboard players set stronghold.player tick 0
scoreboard players set stronghold.player.inarea tick 0
execute as @a[team=stronghold,gamemode=adventure] run scoreboard players add stronghold.player tick 1
execute as @a[team=stronghold,gamemode=adventure,tag=stronghold.tmp] run scoreboard players add stronghold.player.inarea tick 1
execute if score stronghold.player.inarea tick = stronghold.player tick run function minecraft:stronghold/game/confirm_summon
tag @a remove stronghold.tmp