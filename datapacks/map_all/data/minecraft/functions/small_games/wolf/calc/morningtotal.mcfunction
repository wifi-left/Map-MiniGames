tag @s add sss
execute as @a[team=Who_Killer_Text,gamemode=adventure] at @s if score @s LRS_UUID = @a[tag=sss,limit=1] SP run scoreboard players add @s LRS_CS 1
tag @a remove sss