scoreboard players set live.state state 0
gamemode adventure @a[team=wait.live]
gamemode adventure @a[team=play.live.killer]
gamemode adventure @a[team=play.live.runner]
tag @a[team=wait.live] add join.livelongest
tag @a[team=play.live.killer] add join.livelongest
tag @a[team=play.live.runner] add join.livelongest
clear @a[team=play.live.killer]
clear @a[team=play.live.runner]
clear @a[team=wait.live]
bossbar set minecraft:live players