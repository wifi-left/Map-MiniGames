#area1: {pos1:-234,pos2: -215},
#area2: {pos1:-212,pos2: -193},
#area3: {pos1:-190,pos2: -171},
#area4: {pos1:-168,pos2: -149},
#area5: {pos1:-146,pos2: -127}
execute store result score temp.z temp run data get entity @s Pos[2]
execute if score temp.z temp matches -234..-215 run fill 232 -52 -234 347 0 -215 air replace #bw_bridge_blocks
execute if score temp.z temp matches -212..-193 run fill 232 -52 -212 347 0 -193 air replace #bw_bridge_blocks
execute if score temp.z temp matches -190..-171 run fill 232 -52 -190 347 0 -171 air replace #bw_bridge_blocks
execute if score temp.z temp matches -168..-149 run fill 232 -52 -168 347 0 -149 air replace #bw_bridge_blocks
execute if score temp.z temp matches -146..-127 run fill 232 -52 -146 347 0 -127 air replace #bw_bridge_blocks

execute in overworld positioned 292 -25 -187 run kill @e[type=item,distance=..80]