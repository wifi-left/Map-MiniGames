execute if score pillar.remove.now board matches 37.. run return run function minecraft:pillar/map/remove/remove_over
scoreboard players add pillar.remove.now board 1
function minecraft:pillar/map/remove/remove_main
tellraw @a[team=pillar] ["\u00a76地图已经缩圈！缩圈进度：",{score:{name:"pillar.remove.now",objective:board},color:green},"\u00a76/\u00a7b37"]
execute if score pillar.remove.now board matches 37.. run tellraw @a[team=pillar] ["\u00a7c缩圈已结束！"]