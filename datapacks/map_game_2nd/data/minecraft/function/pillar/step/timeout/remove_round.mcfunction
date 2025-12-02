scoreboard players set pillar.remove.time tick 61
execute if score pillar.time tick matches ..600 run scoreboard players set pillar.remove.time tick 31
execute if score pillar.time tick matches ..300 run scoreboard players set pillar.remove.time tick 11
execute if score pillar.time tick matches ..120 run scoreboard players set pillar.remove.time tick 6
execute if score pillar.time tick matches ..60 run scoreboard players set pillar.remove.time tick 4
execute if score pillar.time tick matches ..30 run scoreboard players set pillar.remove.time tick 2
function minecraft:pillar/map/remove/remove_trigger