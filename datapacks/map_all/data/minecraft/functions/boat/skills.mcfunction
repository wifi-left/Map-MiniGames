execute as @s[level=..0] run tag @s add boat.skillok
execute at @s run playsound ui.button.click player @s
execute if entity @s[nbt={SelectedItem:{tag:{boatItem:3b}}},tag=boat.notspawn] run tag @s add skill.boat.3
execute if entity @s[nbt={SelectedItem:{tag:{boatItem:2b}}},tag=boat.skillok,tag=!boat.notspawn] run tag @s add skill.boat.2
execute if entity @s[nbt={SelectedItem:{tag:{boatItem:1b}}},tag=!boat.notspawn] run tag @s add skill.boat.1

execute if entity @s[nbt={SelectedItem:{tag:{boatItem:4b}}},tag=!boat.notspawn] run tag @s add skill.boat.trap

execute as @s[tag=skill.boat.trap] if entity @s[nbt={SelectedItem:{tag:{trap:1}}}] run tag @s add boat.trap.1
execute as @s[tag=skill.boat.trap] if entity @s[nbt={SelectedItem:{tag:{trap:2}}}] run tag @s add boat.trap.2
execute as @s[tag=skill.boat.trap] if entity @s[nbt={SelectedItem:{tag:{trap:3}}}] run tag @s add boat.trap.3
execute as @s[tag=skill.boat.trap] if entity @s[nbt={SelectedItem:{tag:{trap:4}}}] run tag @s add boat.trap.4
# Trap 1    Slow and Blind
# Trap 2    Stop!
# Trap 3    to-do
# Trap 4    to-do
execute as @s[tag=boat.trap.1] at @s run function boat/trap/1/spawn
execute as @s[tag=boat.trap.2] at @s run function boat/trap/2/spawn
# execute as @s[tag=boat.trap.3] at @s run function boat/trap/3/spawn
# execute as @s[tag=boat.trap.4] at @s run function boat/trap/4/spawn
execute as @s[tag=skill.boat.trap] at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 5 1 1

execute as @s[tag=skill.boat.3] at @s run function boat/spawn/spawnmain 
execute as @s[tag=skill.boat.2] at @s run function boat/givespeed
execute as @s[tag=skill.boat.2] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 5 1 1
execute as @s[tag=skill.boat.2] at @s run xp add @s 15 levels
execute as @s[tag=skill.boat.1] at @s run function boat/goback

execute as @s[tag=skill.boat.trap] at @s run xp add @s 3 levels
execute as @s[tag=skill.boat.trap] at @s run xp set @s 0 points
execute as @s[tag=skill.boat.trap] at @s run title @s actionbar ["\u00a7a\u00a7l已使用道具"]
execute as @s[tag=skill.boat.trap] at @s run clear @s carrot_on_a_stick{boatItem:4b}


execute if entity @s[nbt={SelectedItem:{tag:{boatItem:2b}}},tag=!boat.skillok,tag=!boat.notspawn] run title @s actionbar ["\u00a7c\u00a7l此技能冷却中"]
execute if entity @s[tag=boat.trap,tag=!boat.skillok] run title @s actionbar ["\u00a7c\u00a7l此技能冷却中"]
execute if entity @s[nbt={SelectedItem:{tag:{boatItem:2b}}},tag=!boat.skillok,tag=!boat.notspawn] run playsound entity.enderman.teleport player @s ~ ~ ~ 5 0 1 

tag @s remove skill.boat.3
tag @s remove skill.boat.2
tag @s remove skill.boat.1
tag @s remove boat.trap.1
tag @s remove boat.trap.2
tag @s remove boat.trap.3
tag @s remove boat.trap.4
tag @s remove boat.trap.5
tag @s remove boat.trap.6
tag @s remove boat.trap.7
tag @s remove skill.boat.trap
tag @s remove boat.skillok