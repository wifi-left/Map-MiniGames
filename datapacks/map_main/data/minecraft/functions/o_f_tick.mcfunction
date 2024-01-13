execute as @a[team=play.zombie,gamemode=adventure] run function zombieever/guninfo
execute if score color.state state matches 1.. run function minecraft:color/half_second
