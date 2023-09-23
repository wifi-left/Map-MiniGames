tag @s add hit.player
execute as @e[tag=pve.zombie,distance=0..10] at @s run function gun/6/hit
# execute as @s at @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^3 {Tags:["f.tmp"]}
# # execute if entity @s[team=job_pvp] anchored eyes run summon fireball ^ ^ ^1 {Tags:["f.new"],ExplosionPower:1}
# execute anchored eyes run summon shulker_bullet ^ ^ ^1 {Tags:["f.new"]}
# execute as @e[tag=f.new] run data modify entity @s Owner set from entity @a[limit=1,sort=nearest,tag=sel] UUID
# # execute as @e[tag=f.new] run data modify entity @s Motion set from entity @e[limit=1,sort=nearest,tag=f.tmp] Pos
# execute as @e[tag=f.new] run data modify entity @s Motion set from entity @e[limit=1,tag=f.tmp] Pos
# tag @e[tag=f.new] remove f.new
# # kill @e[type=snowball,distance=0..5,sort=nearest]
# # scoreboard players reset @s fireball
# kill @e[tag=f.tmp]
# tag @a remove sel
playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand usegun
tag @s remove hit.player