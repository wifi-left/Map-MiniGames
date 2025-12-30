tag @s remove no_music
tellraw @s ["\n\u00a7a您已启用地图音乐！\n"]
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
scoreboard players reset @s music_trigger