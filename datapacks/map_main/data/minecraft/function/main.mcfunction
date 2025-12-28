##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:lobby/tick
execute if block 123 121 59 oak_button[powered=true] run function lobby/car
function foodparty:tick
execute as @a[team=lobby] at @s in overworld run function lobby/quickplay
execute as @a[team=!lobby,tag=GLOBAL.SPEC] at @s in overworld run function lobby/quickplay
execute as @a[team=!lobby,scores={quickplay=1..}] at @s run function lobby/quickplay_refused
execute as @a[team=!lobby,scores={quickplay=-1}] at @s run function lobby/quickplay_refused_list
execute as @a[scores={quickplay=-2}] at @s run function lobby/quickplay_back_and_retry

execute as @a[gamemode=spectator] at @s as @s[y=-70,dy=-100] run tp @s ~ -64 ~
execute as @a[gamemode=adventure] at @s as @s[y=-70,dy=-100] run function minecraft:out_of_world

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
execute as @a[tag=NEWENTER] run title @s title [{nbt:"entry_msg.title",storage:"statics:settings",interpret:true,color:gold}]
execute as @a[tag=NEWENTER] run title @s subtitle [{nbt:"entry_msg.subtitle",storage:"statics:settings",interpret:true,color:white}]
execute as @a[tag=NEWENTER] run title @s actionbar [{nbt:"entry_msg.actionbar",storage:"statics:settings",interpret:true,color:white}]
tellraw @a[tag=NEWENTER] ["\n§b  下载资源包：",{"text":"§d§n[Gitea](推荐)","underlined":true,"click_event":{"action":"open_url","url":"https://gitea.com/wifi-left/Map-MiniGames/raw/branch/master/resourcepack/MiniGameRes.zip"}}," ",{"underlined":true,"text":"§e§n[GitHub](备用)","click_event":{"action":"open_url","url":"https://github.com/wifi-left/Map-MiniGames/raw/master/resourcepack/MiniGameRes.zip"}},"\n\n§a  您可以随时使用 §6/trigger hub §a返回大厅。\n  §a全局音乐可以通过§6游戏设置 - ",{translate:"options.sounds",color:gold,fallback:"声音设置"}," - ",{translate:"soundCategory.voice",color:gold,fallback:"玩家语音"},"§a调节声音大小\n  §e部分游戏支持使用 §6/trigger rejoin§e 重新加入退出的游戏！\n",{nbt:"entry_msg.tellraw",storage:"statics:settings",color:aqua}]
execute as @a[tag=NEWENTER] run attribute @s max_health base set 20

gamemode adventure @a[tag=NEWENTER]

execute if score tnt.state state matches 1.. run function minecraft:tntwars/tick
execute if entity @a[team=dropper] in dropperworld run function dropper/tick

execute as @a[tag=NEWENTER] at @s run attribute @s minecraft:attack_speed base set 4
execute as @a[tag=NEWENTER] run bossbar set surgame:time players @a[team=wait.sur]

execute as @a[tag=NEWENTER] unless score @s park.uuid matches 0.. run function minecraft:actions/getuuid
tellraw @a[tag=NEWENTER,tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
effect clear @a[tag=NEWENTER]
tag @a[tag=NEWENTER] remove zombie.nehelp
tag @a[tag=NEWENTER] remove parkouring
tag @a[tag=NEWENTER] remove mazing
tag @a[tag=NEWENTER] remove play.total
stopsound @a[tag=NEWENTER] record
stopsound @a[tag=NEWENTER] voice
tag @a[tag=NEWENTER] remove NEWENTER

execute as @a[scores={job_kill=1..},team=job_pvp] run function job_pvp/getakill
execute if score blaze.state state matches 1.. as @a[scores={job_kill=1..},tag=blaze.player] in killerworld run function blaze/getakill
scoreboard players reset @a[scores={job_kill=1..}] job_kill

execute as @a[scores={spec=1}] run function lobby/specintroduce
execute as @a[scores={spec=2}] run tag @s add SPEC.JOIN
execute as @a[scores={spec=3}] run tag @s add SPEC.REMOVE
execute as @a[scores={spec=4}] run function lobby/spec
scoreboard players enable @a spec
scoreboard players enable @a quickplay

scoreboard players reset @a[scores={spec=1..}] spec
tag @a[tag=SPEC.JOIN] add GLOBAL.SPEC
tellraw @a[tag=SPEC.JOIN] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
tag @a[tag=SPEC.JOIN] remove SPEC.JOIN
tellraw @a[tag=SPEC.REMOVE] ["\n§c  你已关闭§b全局旁观者模式§7。\n"]
tag @a[tag=SPEC.REMOVE] remove GLOBAL.SPEC
tag @a[tag=SPEC.REMOVE] remove SPEC.REMOVE

effect give @a[team=hide.wait] resistance 1 25 true
effect give @a[team=deskgame] resistance 1 25 true
effect give @a[team=hide.wait] resistance 1 25 true
execute if score hide.state state matches 1.. run function hideseek/tick
execute if score golf.state state matches 1.. in golfworld run function golf/tick
execute if score hunger.state state matches 1.. in airworld run function hunger/tick
execute if score battle.state state matches 1.. in overworld run function battle/tick
execute if score btw.state state matches 1.. in overworld run function boatwars/tick

execute as @a[team=lobby,tag=!parkouring] at @s if block ~ ~ ~ light_weighted_pressure_plate run function npark/join
execute as @a[team=lobby,tag=!mazing] at @s if block ~ ~ ~ warped_pressure_plate run function maze/join

spawnpoint @a[team=lobby] 188 156 26 0 0

execute positioned 188 156 26 as @a[distance=..2,gamemode=adventure] run function minecraft:sth_wrong

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
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function minecraft:arrow_inground
execute as @e[type=trident,nbt={inGround:1b}] at @s run function minecraft:trident_inground
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run function minecraft:arrow_inground
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
execute if score pw.state state matches 1.. run function minecraft:poolwar/tick
execute if score car.state state matches 1.. run function minecraft:car_race/tick
execute if score t_says.state state matches 1.. run function minecraft:t_says/tick
# execute if score pw.state state matches 1.. run function minecraft:poolwar/tick
execute as @a[tag=parkouring,team=!lobby] run function npark/cancel
execute as @a[tag=mazing,team=!lobby] run function maze/cancelnottp
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{park:1}}}}]

scoreboard players reset @a[scores={die=1..},tag=!bw.play] die

execute as @e[tag=getnbt,type=marker] at @s run function test/shownbt

execute if score hide2.state state matches 1.. run function minecraft:hide2/tick

execute in overworld as @a[x=137,y=89,z=-158,dx=2,dy=2,dz=2,gamemode=adventure] at @s run function hide2/died


scoreboard players reset @a[tag=!bw.play] bw.kill

execute in airworld positioned 413 -60 -383 as @a[distance=..2,gamemode=!creative] at @s run function hunger/died

execute as @e[type=minecart,tag=lobby.car] at @s if block ~ ~-1 ~ piston_head run data modify entity @s Motion[2] set value -1

execute positioned 29 17 -4 as @a[distance=0..3,gamemode=adventure] at @s run function minecraft:live/ingame/died
execute if score car.state state matches 1.. run function minecraft:car_race/tick

execute if score sw.state state matches 1.. run function minecraft:cloud/tick
execute if score endwolf.state state matches 1.. run function endless_wolf/tick
execute as @a[team=play.sw,gamemode=adventure] at @s as @s[y=-70,dy=14] run kill @s
execute as @a[team=play.sw,gamemode=survival] at @s as @s[y=-70,dy=14] run kill @s

execute in airworld as @a[x=594,y=-44,z=345,dx=3,dy=5,dz=3,gamemode=!creative] at @s run function cloud/died

function dev/tick
function actions/main

execute in overworld positioned -376 54 624 as @a[gamemode=adventure,distance=..3] at @s run function endless_wolf/died

execute if score boom.state state matches 1.. run function minecraft:bomb/tick

execute if entity @a[tag=bw.player] run function minecraft:bedwars/tick
execute if entity @a[tag=parkouring,team=lobby] run function minecraft:npark/tick
execute if entity @a[team=parkour] run function minecraft:lpark/tick
execute if entity @a[tag=mazing,team=lobby] run function minecraft:maze/tick
execute if score beli.state state matches 1.. run function minecraft:believer/tick
execute if score color.state state matches 1.. run function minecraft:color/tick
execute if score beli.state state matches 1.. run function minecraft:believer/second
execute if entity @a[team=job_pvp] run function minecraft:job_pvp/tick
execute if score killer.state state matches 1.. run function minecraft:killerever/tick
execute if score zombie.state state matches 1.. run function minecraft:zombieever/tick
scoreboard players reset @a[scores={zombie.hurt=1..}] zombie.hurt
execute if score duel.state state matches 1.. run function minecraft:duel/tick

scoreboard players reset @a[scores={JOBPVP.die=1..}] JOBPVP.die

execute if score hotpot.state state matches 1.. run function minecraft:hotpotever/tick
execute if score pillar.state state matches 1.. in airworld run function minecraft:pillar/tick


scoreboard players reset @a[scores={eat.goldapple=0..}] eat.goldapple
scoreboard players reset @a[scores={eat.glow=0..}] eat.glow

scoreboard players reset @a[scores={zombie.died=1..}] zombie.died

scoreboard players reset @a[scores={parkour=1..}] parkour

execute if score stronghold.state state matches 1.. in lobby run function stronghold/tick
execute if score blaze.state state matches 1.. in killerworld run function minecraft:blaze/tick

execute if score sneak.state state matches 1.. run function sneak/tick
execute if score pacman.state state matches 1.. run function pacman/tick
execute if score miner.state state matches 1.. in airworld run function miner/tick
execute if score mining.state state matches 1.. in airworld run function mining/tick
execute if score chair.state state matches 1.. in overworld run function chair/tick
execute if score random_parkour.state state matches 1.. in parkourworld run function random_parkour/tick
execute if score park.state state matches 1.. in parkourworld run function minecraft:parkourrace/tick
execute if score live.state state matches 1.. in overworld run function minecraft:live/tick
execute if score snow.state state matches 1.. in overworld run function minecraft:snow/tick
execute if score ballgame.state state matches 1.. in overworld run function minecraft:ballgame/tick
execute if score fishing.state state matches 1.. in overworld run function minecraft:fishing/tick
execute if score build_parkour.state state matches 1.. in parkourworld run function minecraft:build_parkour/tick
execute if score build_guess.state state matches 1.. in parkourworld run function minecraft:build_guess/tick
execute if score finder.state state matches 1.. in overworld run function minecraft:finder/tick
execute if score one_arrow.state state matches 1.. in overworld run function minecraft:one_arrow/tick
execute if score elytra.state state matches 1.. in parkourworld run function minecraft:elytra/tick

execute as @e[type=ender_dragon,tag=!dragon.flagged] run function minecraft:lock_dragon

function gun:main