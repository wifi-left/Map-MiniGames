scoreboard players set tick2 tick 0
effect give @a regeneration 2 1 true


## 210 116 30 拉杆2 - 烟花
execute if block 210 116 22 lever[powered=true] run function lobby/firework
give @a[team=play.live.killer,gamemode=adventure] arrow 1
