execute as @a[scores={zombie.hurt=1..},team=play.zombie] run function zombieever/damagetocoin
execute as @a[team=play.zombie,x=670,y=-19,z=-52,dx=2,dy=2,dz=2,gamemode=adventure] run function zombieever/died 
execute as @e[tag=pve.zombie] at @s as @s[y=40,dy=10] run tp @s ~ ~-1 ~