clear @s compass[custom_data~{vampire:true}]
tag @a remove vampire.sel
execute at @s as @a[team=play.endwolf,tag=!endless.vampire,gamemode=adventure,sort=nearest,limit=1] run tag @s add vampire.sel
function minecraft:endless_wolf/compass/find
tag @a remove vampire.sel
