##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score zombie.round board matches 1 as @a[team=play.zombie,gamemode=adventure,scores={zombie.villager.click=1..},x=630,y=10,z=-91,distance=0..10] at @s run function zombieever/talks/getfruit/1
execute if score zombie.round board matches 3 as @a[team=play.zombie,gamemode=adventure,scores={zombie.villager.click=1..},x=630,y=10,z=-91,distance=0..10] at @s run tellraw @s ["\u00a77还没有将僵尸清理完。您需要先消灭僵尸才能继续进度。"]
execute if score zombie.round board matches 4 as @a[team=play.zombie,gamemode=adventure,scores={zombie.villager.click=1..},x=630,y=10,z=-91,distance=0..10] at @s run function zombieever/tasks/detect/fruit


scoreboard players reset @a[team=play.zombie] zombie.villager.click
