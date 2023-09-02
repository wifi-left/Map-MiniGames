# Car 1
# Snow TNTRUN 2
# Snow Pick 3
# Repeling 4
# Color 5 
# Block Believer 6
# Muder Mystery 7
# Duel 8
# Hot Potato 9
# Pool War 10
gamemode adventure @a[tag=play.total]
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 1..1 run execute as @a[tag=play.total] run function hideseek/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 1..1 run schedule function hideseek/trystart 1s
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 2..2 run execute as @a[tag=play.total] run function snow/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 2..2 run scoreboard players set snow.tntrun state 1
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 2..2 run function snow/trystart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 3..3 run execute as @a[tag=play.total] run function snow/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 3..3 run scoreboard players set snow.tntrun state 0
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 3..3 run function snow/trystart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 5..5 run execute as @a[tag=play.total] run function color/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 5..5 run function color/teststart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 4..4 run execute as @a[tag=play.total] run team join wait.repel @s
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 4..4 run function repel/start
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 6..6 run execute as @a[tag=play.total] run function believer/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 6..6 run function believer/teststart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 7..7 run execute as @a[tag=play.total] run function hideseek/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 7..7 run function hideseek/trystart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 8..8 run execute as @a[tag=play.total] run function duel/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 8..8 as @r[tag=play.total] run function duel/teststart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 9..9 run execute as @a[tag=play.total] run function hotpotever/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 9..9 run function hotpotever/teststart
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 10..10 run execute as @a[tag=play.total] run function poolwar/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 10..10 run function poolwar/teststart


execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 11..11 run execute as @a[tag=play.total] run function tntwars/join
execute as @a[tag=play.total,limit=1,sort=random] if score total.game board matches 11..11 run function tntwars/trystart
