# say found!
summon marker ~ ~ ~ {Tags:["bomb.sculk","bomb.new"]}
# DEBUG START
# execute as @e[tag=bomb.new,type=marker] run tellraw @a [{nbt:"Pos",entity:"@s",interpret:false,color:red}," \u00a7e found a sculk"]
# DEBUG END
tag @e[tag=bomb.new,type=marker] remove bomb.new