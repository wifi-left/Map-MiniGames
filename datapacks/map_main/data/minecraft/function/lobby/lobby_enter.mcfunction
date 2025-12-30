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

gamemode adventure @a[tag=NEWENTER]
execute as @a[tag=NEWENTER] run bossbar set surgame:time players @a[team=wait.sur]

execute as @a[tag=NEWENTER] unless score @s park.uuid matches 0.. run function minecraft:actions/getuuid

execute if score game.partymode board matches 1 as @a[tag=NEWENTER] run function small_games/total/join_from_lobby

tellraw @a[tag=NEWENTER,tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
effect clear @a[tag=NEWENTER]
stopsound @a[tag=NEWENTER] record
stopsound @a[tag=NEWENTER] voice
tag @a[tag=NEWENTER] remove NEWENTER
# game.partymode board