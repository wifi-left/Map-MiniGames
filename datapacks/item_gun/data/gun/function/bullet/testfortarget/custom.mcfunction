tag @s add selel
execute store result score temp.x temp run data get entity @s Pos[0] 10
execute store result score temp.y temp run data get entity @s Pos[1] 10
execute store result score temp.z temp run data get entity @s Pos[2] 10
execute as @e[type=#gun:mobs_and_player,tag=!pve.gunfree,distance=..3,limit=1,sort=nearest] at @s \
    if function gun:bullet/testfortarget/detect \
    run tag @s add hitted

execute as @a[tag=hitted] if score @s park.uuid = @e[tag=selel,limit=1] park.uuid run tag @s remove hitted

tag @s remove selel