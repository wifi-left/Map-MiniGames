
#播放
#小星星
execute as @s[tag=music_little_stars] at @s run function minecraft:music/little_stars

execute as @s[tag=music_kano] at @s run function minecraft:music/kano

execute as @s[tag=music_flower_dance] at @s run function minecraft:music/flower_dance
# execute as @s[tag=music_memories] at @s run function minecraft:music/memories

title @s[tag=!music_little_stars,tag=!music_kano,tag=!music_flower_dance] actionbar ["\u00a7a正在播放：\u00a7bKano"]
tag @s[tag=!music_little_stars,tag=!music_kano,tag=!music_flower_dance] add music_kano
#分数
scoreboard players add @s[tag=music.playing] time 1