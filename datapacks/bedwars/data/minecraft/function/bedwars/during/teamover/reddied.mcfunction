##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
##scoreboard players set §c红§8　§r红队:§a✓ bw.info 10
##scoreboard players set §9蓝§8　§r蓝队:§a✓ bw.info 9
##scoreboard players set §a绿§8　§r绿队:§a✓ bw.info 8
##scoreboard players set §e黄§8　§r黄队:§a✓ bw.info 7
scoreboard players display name red bw.info "§c红§8 §r红队: §c§l✗"
tellraw @a[tag=bw.player] ["\n\u00a7r\u00a7l团灭 > \u00a7c红队\u00a7c已被淘汰！\n"]
scoreboard players reset bw.red state
scoreboard players reset bd.red state
# setblock -371 31 210 yellow_bed[facing=west]
# setblock -372 31 210 yellow_bed[facing=west,part=head]
setblock -305 31 142 air
setblock -305 31 141 air
##✓✗✖❁
