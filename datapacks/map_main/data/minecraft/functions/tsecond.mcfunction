scoreboard players set tick2 tick 0
effect give @a regeneration 2 1 true


## 210 116 30 拉杆2 - 烟花
execute if block 210 116 22 lever[powered=true] run function lobby/firework

## 210 116 22 拉杆1 - 烟花
execute if block 210 116 30 lever[powered=true] run function lobby/firework2

give @a[team=play.live.killer,gamemode=adventure] arrow 1

# execute positioned 122 120 59 unless entity @e[tag=lobby.car,type=minecart,distance=0..10] run execute if block 123 121 59 stone_button[powered=true] run setblock 121 120 60 minecraft:air

execute positioned 122 120 59 unless entity @e[tag=lobby.car,type=minecart,distance=0..10] run execute if block 123 121 59 stone_button[powered=true] run setblock 123 121 59 oak_button[powered=false]