gamemode adventure @a[gamemode=spectator,team=play.zombie]
execute as @a[team=play.zombie] run function zombieever/join
scoreboard players set zombie.state state 0
schedule clear zombieever/nextround
schedule clear minecraft:zombieever/nextround
