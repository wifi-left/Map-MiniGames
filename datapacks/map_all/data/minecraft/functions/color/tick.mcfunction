execute as @a[team=play.color,gamemode=adventure] at @s if block ~ ~-1 ~ magma_block run function color/died
kill @e[type=item,nbt={Item:{tag:{Color:1b}}}]