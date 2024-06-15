execute as @s[team=deskgame] at @s run function minecraft:desk/skill_handle
execute as @s[team=btw.play.a] at @s run function minecraft:boatwars/usegun
execute as @s[team=btw.play.b] at @s run function minecraft:boatwars/usegun
execute as @s[level=..0,team=job_pvp] at @s run function minecraft:skills
execute as @s[team=play.sw] at @s run function minecraft:tntwars/tnttool
execute as @s[team=play.tntwars] at @s run function minecraft:tntwars/tnttool
execute as @s[level=..0,team=play.live.runner] at @s run function minecraft:skills
execute as @s[level=..0,team=play.live.killer] at @s run function minecraft:skills
execute in boatworld2 as @s[team=boat] at @s run function minecraft:boat/skills
execute in killerworld as @s[team=wolfpeople] at @s run function minecraft:twolf/controls
execute as @s[level=..0,team=hide.play.hun] at @s run function minecraft:hideseek/skillss
execute as @s[level=..0,team=hide.play.ani] at @s run function minecraft:hideseek/skillss

execute as @s[team=play.zombie] at @s run scoreboard players add @s cooldowntime 0
execute as @s[scores={cooldowntime=..0},team=play.zombie] at @s run function minecraft:gun/guns
execute as @s[level=1..,team=hide.play.hun] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @s[level=1..,team=hide.play.ani] at @s run title @s actionbar ["\u00a7c\u00a7l变身冷却中。"]
execute as @s[scores={use.skill=1..},level=1..,team=hide.play.hun] at @s run playsound entity.enderman.teleport player @s
execute as @s[level=1..,team=hide.play.ani] at @s run playsound entity.enderman.teleport player @s

execute as @s[level=1..,team=play.live.runner] at @s run playsound entity.enderman.teleport player @s
execute as @s[level=1..,team=play.live.runner] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @s[level=1..,team=play.live.runner] at @s run scoreboard players reset @s use.skill
# scoreboard players reset @a[scores={use.skill=1..}] use.skill

execute as @s[level=1..,team=play.live.killer] at @s run playsound entity.enderman.teleport player @s
execute as @s[level=1..,team=play.live.killer] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @s[level=1..,team=play.live.killer] at @s run scoreboard players reset @s use.skill
# scoreboard players reset @a[scores={use.skill=1..}] use.skill


execute as @s[level=1..,team=job_pvp] at @s run playsound entity.enderman.teleport player @s
execute as @s[level=1..,team=job_pvp] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]

scoreboard players reset @s use.skill
scoreboard players reset @s use.skill.2