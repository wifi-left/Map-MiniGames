execute in minecraft:airworld run clone 142 -63 240 388 -46 258 142 -41 194
# 清理掉落物区域：142 -41 212 388 -24 194
execute in minecraft:airworld run kill @e[type=item,x=142,y=-41,z=194,dx=247,dy=18,dz=19]

# backup area
execute in minecraft:airworld run fill 145 -32 201 142 -35 205 glass keep
execute in minecraft:airworld run fill 144 -32 202 142 -35 204 air replace glass

execute in minecraft:airworld run forceload remove 388 240 142 258
# play area
execute in minecraft:airworld run forceload remove 142 212 388 194
execute in minecraft:airworld run function minecraft:blockrace/resetover
