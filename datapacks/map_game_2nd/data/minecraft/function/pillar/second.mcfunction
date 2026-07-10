spawnpoint @a[team=pillar] -55 -62 572 0 0
execute if score pillar.state state matches 2 run function minecraft:pillar/step/wait_start
execute if score pillar.state state matches 3 run function minecraft:pillar/step/wait_time
execute if score pillar.state state matches 3 run function minecraft:pillar/testfor
execute if score pillar.state state matches 3 run function minecraft:pillar/whether_give_item
# execute in airworld run fill -57 -63 652 -135 -62 574 air