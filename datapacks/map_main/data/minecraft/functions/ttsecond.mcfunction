scoreboard players set tick3 tick 0
give @a[team=play.live.runner,gamemode=adventure] arrow 1
execute if entity @a[team=job_pvp] run function job_pvp/summoncar
# give  arrow 1

execute if score killer.state state matches 1.. run function minecraft:killerever/tsecond
execute if score tnt.state state matches 1.. run function minecraft:tntwars/longsecond
# item replace entity @a[team=hide.play.ani] inventory.26 with arrow

