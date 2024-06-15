##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score boat.tmp board run clear @s compass[custom_data~{boatItem:1b}] 0
execute if score boat.tmp board matches 2.. run clear @s compass[custom_data~{boatItem:1b}]
execute store result score boat.tmp board run clear @s carrot_on_a_stick[custom_data~{boatItem:1b}] 0
execute if score boat.tmp board matches 2.. run clear @s carrot_on_a_stick[custom_data~{boatItem:1b}]
execute store result score boat.tmp board run clear @s carrot_on_a_stick[custom_data~{boatItem:2b}] 0
execute if score boat.tmp board matches 2.. run clear @s carrot_on_a_stick[custom_data~{boatItem:2b}]
execute store result score boat.tmp board run clear @s carrot_on_a_stick[custom_data~{boatItem:-1b}] 0
execute if score boat.tmp board matches 2.. run clear @s carrot_on_a_stick[custom_data~{boatItem:-1b}]
