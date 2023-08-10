# execute if score zombie.state state matches 1 if score zombie.round board matches 10.. as @e[tag=pve.zombie,tag=pve.gunzombie] at @s run function gun/zombiegun/shoot
execute if score zombie.state state matches 1 as @e[tag=pve.zombie] at @s unless data entity @s {CustomNameVisible:1b} run function zombieever/zombie/displayhealth
