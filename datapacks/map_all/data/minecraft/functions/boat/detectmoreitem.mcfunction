execute store result score boat.tmp board run clear @s compass{boatItem:1b} 0
execute if score boat.tmp board matches 2.. run clear @s compass{boatItem:1b}
execute store result score boat.tmp board run clear @s carrot_on_a_stick{boatItem:1b} 0
execute if score boat.tmp board matches 2.. run clear @s carrot_on_a_stick{boatItem:1b}
execute store result score boat.tmp board run clear @s carrot_on_a_stick{boatItem:2b} 0
execute if score boat.tmp board matches 2.. run clear @s carrot_on_a_stick{boatItem:2b}
execute store result score boat.tmp board run clear @s carrot_on_a_stick{boatItem:-1b} 0
execute if score boat.tmp board matches 2.. run clear @s carrot_on_a_stick{boatItem:-1b}