execute if data entity @s {data:{guntype:10}} run particle minecraft:dust{color:10682112,scale:0.25} ~ ~ ~ 0 0 0 1 1
execute if data entity @s {data:{guntype:"mazui"}} run particle minecraft:dust{color:16777215,scale:0.25} ~ ~ ~ 0 0 0 1 1
# execute if data entity @s {data:{guntype:10}} run particle minecraft:block_marker{"block_state":{Name:"oak_button"}} ~ ~ ~ 0 0 0 1 1
execute if score @s PSTJ matches ..-1 run function gun/die
execute unless entity @s[tag=gun.ignorewalls] if score @s PSTJ matches 0.. if block ~ ~ ~ #gunblock run function gun/die

execute if score @s PSTJ matches 0.. run tp @s ^ ^ ^0.5
execute if data entity @s {data:{guntype:10}} if score @s PSTJ matches 0.. run function gun:bullet/testfortarget/custom
execute if data entity @s {data:{guntype:mazui}} if score @s PSTJ matches 0.. run function gun:bullet/testfortarget/custom
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:10}} if entity @e[tag=hitted] run function gun:bullet/hit/custom
execute if score @s PSTJ matches 0.. if data entity @s {data:{guntype:mazui}} if entity @e[tag=hitted] run function gun:bullet/hit/mazui

tag @e[tag=hitted] remove hitted
execute if score @s PSTJ matches 0.. run scoreboard players remove @s PSTJ 1

