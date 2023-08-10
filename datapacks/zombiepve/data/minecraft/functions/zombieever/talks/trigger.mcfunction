execute if score zombie.round board matches 1 as @a[team=play.zombie,gamemode=adventure,scores={zombie.villager.click=1..},x=630,y=10,z=-91,distance=0..10] at @s run function zombieever/talks/getfruit/1
execute if score zombie.round board matches 3 as @a[team=play.zombie,gamemode=adventure,scores={zombie.villager.click=1..},x=630,y=10,z=-91,distance=0..10] at @s run tellraw @s ["\u00a7c还没有将僵尸清理完。"]
execute if score zombie.round board matches 4 as @a[team=play.zombie,gamemode=adventure,scores={zombie.villager.click=1..},x=630,y=10,z=-91,distance=0..10] at @s run function zombieever/tasks/detect/fruit


scoreboard players reset @a[team=play.zombie] zombie.villager.click