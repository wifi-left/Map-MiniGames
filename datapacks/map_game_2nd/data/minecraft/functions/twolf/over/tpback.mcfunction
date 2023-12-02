function twolf/events/reset
gamemode adventure @a[tag=wolf.tip]
scoreboard players set twolf.state state 0
execute as @a[tag=wolf.tip] run function twolf/join
