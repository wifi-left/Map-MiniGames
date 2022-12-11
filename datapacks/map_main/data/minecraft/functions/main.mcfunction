function minecraft:lobby/elevent
tag @a[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] add NEWENTER
tp @a[tag=NEWENTER] 188 124 26 0 0
title @a[tag=NEWENTER] title ["\u00a7a\u00a7lMini\u00a7e\u00a7lGames"]
title @a[tag=NEWENTER] subtitle ["\u00a76You're in \u00a7dMain Lobby"]
title @a[tag=NEWENTER] actionbar ["\u00a7aWelcome to the map!"]
tellraw @a[tag=NEWENTER] ["\n\u00a7a  您可以随时使用 \u00a76/trigger hub \u00a7a返回大厅。\n"]
execute as @a[tag=NEWENTER] run attribute @s generic.max_health base set 20

tag @a[tag=NEWENTER] remove sur.killedbyzom
tag @a[tag=NEWENTER] remove bw.play
tag @a[tag=NEWENTER] remove bw.player
tag @a[tag=NEWENTER] remove boat.notinboat
gamemode adventure @a[tag=NEWENTER]
team join lobby @a[tag=NEWENTER]

execute if entity @a[team=dropper] in dropperworld run function dropper/tick

execute as @a[tag=NEWENTER] at @s run attribute @s minecraft:generic.attack_speed base set 4
execute as @a[tag=NEWENTER] run bossbar set surgame:time players @a[team=wait.sur]
clear @a[tag=NEWENTER]
execute as @a[tag=NEWENTER] unless score @s park.uuid matches 0.. run function minecraft:npark/getuuid
tellraw @a[tag=NEWENTER,tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
effect clear @a[tag=NEWENTER]
tag @a[tag=NEWENTER] remove zombie.nehelp
tag @a[tag=NEWENTER] remove parkouring
tag @a[tag=NEWENTER] remove mazing
tag @a[tag=NEWENTER] remove play.total
stopsound @a[tag=NEWENTER] record
stopsound @a[tag=NEWENTER] voice
tag @a[tag=NEWENTER] remove NEWENTER

execute as @a[scores={job_kill=1..},team=job_pvp] run function job_pvp/getakill
scoreboard players reset @a[scores={job_kill=1..}] job_kill

execute as @a[scores={spec=1}] run function lobby/specintroduce
execute as @a[scores={spec=2}] run tag @s add SPEC.JOIN
execute as @a[scores={spec=3..}] run tag @s add SPEC.REMOVE
scoreboard players enable @a spec
scoreboard players reset @a[scores={spec=1..}] spec
tag @a[tag=SPEC.JOIN] add GOABLE.SPEC
tellraw @a[tag=SPEC.JOIN] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
tag @a[tag=SPEC.JOIN] remove SPEC.JOIN
tellraw @a[tag=SPEC.REMOVE] ["\n\u00a7c  你已关闭\u00a7b全局旁观者模式\u00a77。\n"]
tag @a[tag=SPEC.REMOVE] remove GOABLE.SPEC
tag @a[tag=SPEC.REMOVE] remove SPEC.REMOVE

effect give @a[team=hide.wait] resistance 1 25 true
execute if score hide.state state matches 1.. run function hideseek/tick
execute if score golf.state state matches 1.. in golfworld run function golf/tick
execute if score boat.state state matches 1.. in boatworld2 run function boat/tick
execute if score hunger.state state matches 1.. in hungerworld run function hunger/tick

execute as @a[team=lobby,tag=!parkouring] at @s if block ~ ~ ~ light_weighted_pressure_plate run function npark/join
execute as @a[team=lobby,tag=!mazing] at @s if block ~ ~ ~ warped_pressure_plate run function maze/join

spawnpoint @a[team=lobby] 188 124 26

effect give @a[team=chestgame] resistance 1 25 true

execute if score chess.state state matches 1.. run function small_games/chess/tick

execute as @e[tag=gun.line] at @s run function gun/main
execute as @a[scores={use.skill=1..},level=..0,team=job_pvp] at @s run function minecraft:skills
execute as @a[scores={use.skill=1..},level=..0,team=play.live.runner] at @s run function minecraft:skills
execute as @a[scores={use.skill=1..},level=..0,team=play.live.killer] at @s run function minecraft:skills
execute in boatworld2 as @a[scores={use.skill=1..},team=boat] at @s run function minecraft:boat/skills
execute in boatworld2 as @a[scores={use.skill.2=1..},team=boat] at @s run function minecraft:boat/skills
execute as @a[scores={use.skill=1..},level=..0,team=hide.play.hun] at @s run function minecraft:hideseek/skillss
execute as @a[scores={use.skill=1..},level=..0,team=hide.play.ani] at @s run function minecraft:hideseek/skillss

execute in airworld as @a[gamemode=!creative,gamemode=!spectator,team=play.sur,x=-46,y=-26,z=3,distance=0..4] run function surgame:died
execute in airworld as @a[gamemode=!creative,gamemode=!spectator,team=play.sur.zom,x=-46,y=-26,z=3,distance=0..4] run function surgame:died
execute in airworld as @a[gamemode=!creative,gamemode=!spectator,team=wait.sur,x=-46,y=-26,z=3,distance=0..4] run function surgame:join

execute as @a[scores={use.skill=1..,cooldowntime=1..},team=play.zombie] at @s run title @s actionbar ["\u00a7c\u00a7l冷却中: ",{"score":{"objective": "cooldowntime","name": "@s"},"color":"yellow"},"\u00a7et"]
execute as @a[scores={cooldowntime=1..},team=play.zombie] at @s run scoreboard players remove @s cooldowntime 1

execute as @a[scores={use.skill=1..},team=play.zombie] at @s run scoreboard players add @s cooldowntime 0
execute as @a[scores={use.skill=1..,cooldowntime=..0},team=play.zombie] at @s run function minecraft:guns
scoreboard players reset @a[scores={use.skill.2=1..}] use.skill.2

execute if score sur.state state matches 1.. in airworld run function surgame:tick

effect give @a[team=Who_Killer_Text] resistance 2 25 true
execute as @a[scores={use.skill=1..},level=1..,team=hide.play.hun] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @a[scores={use.skill=1..},level=1..,team=hide.play.ani] at @s run title @s actionbar ["\u00a7c\u00a7l变身冷却中。"]
execute as @a[scores={use.skill=1..},level=1..,team=hide.play.hun] at @s run playsound entity.enderman.teleport player @s
execute as @a[scores={use.skill=1..},level=1..,team=hide.play.ani] at @s run playsound entity.enderman.teleport player @s

execute as @a[scores={use.skill=1..},level=1..,team=play.live.runner] at @s run playsound entity.enderman.teleport player @s
execute as @a[scores={use.skill=1..},level=1..,team=play.live.runner] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @a[scores={use.skill=1..},level=1..,team=play.live.runner] at @s run scoreboard players reset @s use.skill
# scoreboard players reset @a[scores={use.skill=1..}] use.skill

execute as @a[scores={use.skill=1..},level=1..,team=play.live.killer] at @s run playsound entity.enderman.teleport player @s
execute as @a[scores={use.skill=1..},level=1..,team=play.live.killer] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @a[scores={use.skill=1..},level=1..,team=play.live.killer] at @s run scoreboard players reset @s use.skill
# scoreboard players reset @a[scores={use.skill=1..}] use.skill


execute as @a[scores={use.skill=1..},level=1..,team=job_pvp] at @s run playsound entity.enderman.teleport player @s
execute as @a[scores={use.skill=1..},level=1..,team=job_pvp] at @s run title @s actionbar ["\u00a7c\u00a7l技能还在冷却。"]
execute as @a[scores={use.skill=1..},level=1..,team=job_pvp] at @s run scoreboard players reset @s use.skill

scoreboard players reset @a[scores={use.skill=1..}] use.skill

execute if score repel state matches 1..1 run function minecraft:repel/main
execute if score wolf.state state matches 1..1 run function minecraft:small_games/wolf/tick
scoreboard players add tick tick 1
execute if score tick tick matches 20.. run function minecraft:second
effect give @a[team=play.repel] minecraft:resistance 1 25 true
effect give @a[team=pw.wait] minecraft:resistance 1 25 true
effect give @a[team=car.wait] minecraft:resistance 1 25 true
effect give @a[team=wait.repel] minecraft:resistance 1 25 true
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]
function minecraft:live/tick
function minecraft:parkourrace/tick
function minecraft:snow/tick
# execute as @e[type=area_effect_cloud,tag=title] at @s run data modify 
execute if score gametotal state matches 1.. run function minecraft:small_games/total/tick
# execute if score @a[team=wait.total] run function minecraft:small_games/total/tick

execute as @a[scores={fireball=1..}] at @s run function snowtofire

tag @a[tag=sneaking] remove sneaking
tag @a[scores={zombie.sneak=1..}] add sneaking
scoreboard players reset @a[tag=sneaking] zombie.sneak

tp @a[tag=join.snow] -22 31 -74 -90 0
execute as @a[tag=join.snow] run tellraw @a ["\u00a7a[MESSAGE] ",{"selector":"@s"},"\u00a77 Joined \u00a7fSnow \u00a77."]
tellraw @a[tag=GOABLE.SPEC,tag=join.snow] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[tag=GOABLE.SPEC,tag=join.snow] at @s run gamemode spectator
team join wait.snow @a[tag=join.snow]
tag @a[tag=join.snow] remove join.snow
effect give @a[team=wait.total] resistance 2 25 true
execute as @a[tag=join.livelongest] run tp @s 25 7 0 0 0
execute as @a[tag=join.livelongest] run team leave @s
execute as @a[tag=join.livelongest] run tellraw @a ["\u00a7a\u00a7l[MESSAGE] \u00a7a",{"selector":"@s","color":"gray"},"\u00a7e joined \u00a76Live Longest \u00a7e."]

tellraw @a[tag=GOABLE.SPEC,tag=join.livelongest] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[tag=GOABLE.SPEC,tag=join.livelongest] at @s run gamemode spectator
execute as @a[tag=join.livelongest] run team join wait.live @s
execute as @a[tag=join.livelongest] run tag @s remove join.livelongest

execute if score pw.state state matches 1.. run function minecraft:poolwar/tick
execute if score car.state state matches 1.. run function minecraft:car_race/tick
# execute if score pw.state state matches 1.. run function minecraft:poolwar/tick
execute as @a[tag=parkouring,team=!lobby] run function npark/cancel 
execute as @a[tag=mazing,team=!lobby] run function maze/cancelnottp
kill @e[type=item,nbt={Item:{tag:{park:1}}}]

scoreboard players reset @a[scores={die=1..},tag=!bw.play] die

execute as @e[tag=getnbt,type=marker] at @s run function test/shownbt

execute if score hide2.state state matches 1.. run function minecraft:hide2/tick

execute in overworld as @a[x=137,y=89,z=-158,dx=2,dy=2,dz=2,gamemode=adventure] at @s run function hide2/died


scoreboard players reset @a[tag=!bw.play] bw.kill

execute in hungerworld as @a[x=101,y=-60,z=0,distance=..2] at @s run function hunger/died
