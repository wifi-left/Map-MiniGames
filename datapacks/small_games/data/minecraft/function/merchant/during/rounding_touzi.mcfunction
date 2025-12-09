scoreboard players remove merchant.jump.waittime board 1
execute if score merchant.jump.waittime board matches ..0 as @a[gamemode=adventure] run return run function minecraft:merchant/player/get_random_steps
execute as @a[team=deskgame] at @s run playsound ui.button.click player @s ~ ~ ~ 0.1 1 0.1

execute if score merchant.touzi.type board matches 1 store result score random temp run random value 1..6
execute if score merchant.touzi.type board matches 2 store result score random temp run random value 1..3
execute if score merchant.touzi.type board matches 3 store result score random temp run random value 1..12

title @a[team=deskgame] actionbar [{bold:true,color:gold,translate:"[%s]",fallback:"[%s]",with:[{score:{name:"random",objective:"temp"},color:green}]}]
