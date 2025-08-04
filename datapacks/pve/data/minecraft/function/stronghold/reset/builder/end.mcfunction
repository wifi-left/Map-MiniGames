# say end
tag @e[tag=pve.stronghold.rooms,distance=..5,sort=nearest,limit=1] add pve.stronghold.end
# tp wifi_right @s
# 开始构建隧道
execute as @e[tag=pve.stronghold.rooms] at @s run function minecraft:stronghold/reset/place_tunnel
execute as @e[tag=pve.stronghold.rooms] at @s run function minecraft:stronghold/reset/open_tunnel
execute as @e[tag=pve.stronghold.rooms] at @s run function minecraft:stronghold/reset/close_tunnel
execute as @e[tag=pve.stronghold.start] at @s run function minecraft:stronghold/reset/open_tunnel
schedule function minecraft:stronghold/reset/reset_over 3s replace