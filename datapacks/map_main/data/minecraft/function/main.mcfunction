##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:lobby/elevent
execute if block 123 121 59 oak_button[powered=true] run function lobby/car
function foodparty:tick
execute as @a[team=lobby] at @s run function lobby/quickplay
execute as @a[team=!lobby,scores={quickplay=1..}] at @s run function lobby/quickplay_refused

execute as @a unless score @s old matches 1.. run function minecraft:check_rename

execute as @a[scores={leave=1..}] in overworld run tp @s 188 124 26
execute as @a[scores={leave=1..}] run function lobby/rejoin
gamemode survival @a[scores={leave=1..}]
scoreboard players reset @a[scores={leave=1..}] leave

# execute as @a[tag=music.playing] at @s run function main_loop

tag @a[gamemode=survival,nbt={Dimension:"minecraft:overworld"}] add NEWENTER
tp @a[tag=NEWENTER] 188 124 26 0 0
team join lobby @a[tag=NEWENTER]
clear @a[tag=NEWENTER]
execute as @a[tag=NEWENTER] at @s run tag @s add map.old
execute as @a[tag=NEWENTER] at @s run function lobby/cleartags
title @a[tag=NEWENTER] title ["\u00a7a\u00a7lMini\u00a7e\u00a7lGames"]
title @a[tag=NEWENTER] subtitle ["\u00a76You're in \u00a7dMain Lobby"]
title @a[tag=NEWENTER] actionbar ["\u00a7aWelcome to the map!"]
tellraw @a[tag=NEWENTER] ["\n\u00a7a  您可以随时使用 \u00a76/trigger hub \u00a7a返回大厅。\n  \u00a7a全局音乐可以通过\u00a76游戏设置 - 声音设置 - 玩家语音\u00a7a调节声音大小\n  \u00a7e部分游戏支持使用 \u00a76/trigger rejoin\u00a7e 重新加入退出的游戏！\n\n\u00a7b  下载资源包：",{"text":"\u00a7d\u00a7n[GitLab](推荐)","underlined": true,"clickEvent": {"action":"open_url","value": "https://gitlab.com/wifi-left/Map-MiniGames/-/raw/master/resourcepack/MiniGameRes.zip"}}," ",{"underlined": true,"text":"\u00a7e\u00a7n[GitHub](备用)","clickEvent": {"action":"open_url","value": "https://github.com/wifi-left/Map-MiniGames/raw/master/resourcepack/MiniGameRes.zip"}},"\n"]
execute as @a[tag=NEWENTER] run attribute @s max_health base set 20

gamemode adventure @a[tag=NEWENTER]

execute if score tnt.state state matches 1.. run function minecraft:tntwars/tick
execute if entity @a[team=dropper] in dropperworld run function dropper/tick

execute as @a[tag=NEWENTER] at @s run attribute @s minecraft:attack_speed base set 4
execute as @a[tag=NEWENTER] run bossbar set surgame:time players @a[team=wait.sur]

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
execute as @a[scores={spec=3}] run tag @s add SPEC.REMOVE
execute as @a[scores={spec=4}] run function lobby/spec
scoreboard players enable @a spec
scoreboard players reset @a[scores={spec=1..}] spec
tag @a[tag=SPEC.JOIN] add GOABLE.SPEC
tellraw @a[tag=SPEC.JOIN] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
tag @a[tag=SPEC.JOIN] remove SPEC.JOIN
tellraw @a[tag=SPEC.REMOVE] ["\n\u00a7c  你已关闭\u00a7b全局旁观者模式\u00a77。\n"]
tag @a[tag=SPEC.REMOVE] remove GOABLE.SPEC
tag @a[tag=SPEC.REMOVE] remove SPEC.REMOVE

effect give @a[team=hide.wait] resistance 1 25 true
effect give @a[team=deskgame] resistance 1 25 true
effect give @a[team=hide.wait] resistance 1 25 true
execute if score hide.state state matches 1.. run function hideseek/tick
execute if score golf.state state matches 1.. in golfworld run function golf/tick
execute if score boat.state state matches 1.. in boatworld2 run function boat/tick
execute if score hunger.state state matches 1.. in hungerworld run function hunger/tick
execute if score battle.state state matches 1.. in overworld run function battle/tick
execute if score btw.state state matches 1.. in overworld run function boatwars/tick

execute as @a[team=lobby,tag=!parkouring] at @s if block ~ ~ ~ light_weighted_pressure_plate run function npark/join
execute as @a[team=lobby,tag=!mazing] at @s if block ~ ~ ~ warped_pressure_plate run function maze/join

spawnpoint @a[team=lobby] 188 124 26

effect give @a[team=chestgame] resistance 1 25 true

execute if score chess.state state matches 1.. run function small_games/chess/tick

execute as @e[tag=gun.line] at @s run function gun/main


effect give @a[team=wait.sw] resistance 2 25 true

execute in airworld as @a[gamemode=!creative,gamemode=!spectator,team=play.sur,x=-46,y=-26,z=3,distance=0..4] run function surgame:died
execute in airworld as @a[gamemode=!creative,gamemode=!spectator,team=play.sur.zom,x=-46,y=-26,z=3,distance=0..4] run function surgame:died
execute in airworld as @a[gamemode=!creative,gamemode=!spectator,team=wait.sur,x=-46,y=-26,z=3,distance=0..4] run function surgame:join

# execute as @a[scores={use.skill=1..,cooldowntime=1..},team=play.zombie] at @s run title @s actionbar ["\u00a7c\u00a7l冷却中: ",{"score":{"objective": "cooldowntime","name": "@s"},"color":"yellow"},"\u00a7et"]
execute as @a[scores={cooldowntime=1..},team=play.zombie] at @s run scoreboard players remove @s cooldowntime 1



execute if score sur.state state matches 1.. in airworld run function surgame:tick


tag @a[tag=action.sneaking] remove action.sneaking
execute as @a[scores={sneaking=1..}] run tag @s add action.sneaking
execute as @a[scores={sneaking=1..}] run scoreboard players reset @s sneaking
execute if score desk.state state matches 1.. run function minecraft:desk/tick
execute if score repel state matches 1..1 run function minecraft:repel/main
execute in killerworld if score twolf.state state matches 1.. run function minecraft:twolf/tick
scoreboard players add tick tick 1
execute if score tick tick matches 4 run function minecraft:seconds/1
execute if score tick tick matches 8 run function minecraft:seconds/2
execute if score tick tick matches 12 run function minecraft:seconds/3
execute if score tick tick matches 16 run function minecraft:seconds/4
execute if score tick tick matches 20.. run function minecraft:second
effect give @a[team=play.repel] minecraft:resistance 1 25 true
effect give @a[team=pw.wait] minecraft:resistance 1 25 true
effect give @a[team=car.wait] minecraft:resistance 1 25 true
effect give @a[team=wait.repel] minecraft:resistance 1 25 true
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]
# execute as @e[type=area_effect_cloud,tag=title] at @s run data modify
execute if score gametotal state matches 1.. run function minecraft:small_games/total/tick
# execute if score @a[team=wait.total] run function minecraft:small_games/total/tick
execute as @a[scores={use.egg=1..}] at @s run function playeruseegg
execute as @a[scores={fireball=1..}] at @s run function snowtofire

tag @a[tag=sneaking] remove sneaking
tag @a[scores={zombie.sneak=1..}] add sneaking
scoreboard players reset @a[tag=sneaking] zombie.sneak

execute as @a[tag=join.snow] in overworld at @s run function snow/join
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
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{park:1}}}}]

scoreboard players reset @a[scores={die=1..},tag=!bw.play] die

execute as @e[tag=getnbt,type=marker] at @s run function test/shownbt

execute if score hide2.state state matches 1.. run function minecraft:hide2/tick

execute in overworld as @a[x=137,y=89,z=-158,dx=2,dy=2,dz=2,gamemode=adventure] at @s run function hide2/died


scoreboard players reset @a[tag=!bw.play] bw.kill

execute in hungerworld as @a[x=101,y=-60,z=0,distance=..2] at @s run function hunger/died

execute as @e[type=minecart,tag=lobby.car] at @s if block ~ ~-1 ~ piston_head run data modify entity @s Motion[2] set value -1

execute positioned 29 17 -4 as @a[distance=0..3,gamemode=adventure] at @s run function minecraft:live/ingame/died
execute if score car.state state matches 1.. run function minecraft:car_race/tick

execute if score sw.state state matches 1.. run function minecraft:cloud/tick

execute as @a[team=play.sw,gamemode=adventure] at @s as @s[y=-70,dy=14] run kill @s
execute as @a[team=play.sw,gamemode=survival] at @s as @s[y=-70,dy=14] run kill @s

execute in airworld as @a[x=594,y=-44,z=345,dx=3,dy=5,dz=3,gamemode=!creative] at @s run function cloud/died

function dev/tick
function actions/main