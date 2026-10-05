# 速建防御塔：按标记上的朝向/配色标签分发到对应朝向的放置函数（自动生成）
execute if entity @s[tag=bw.tower.cblue,tag=bw.tower.f0] run function minecraft:bedwars/item/tower/build/f0 {block:"blue_wool"}
execute if entity @s[tag=bw.tower.cblue,tag=bw.tower.f1] run function minecraft:bedwars/item/tower/build/f1 {block:"blue_wool"}
execute if entity @s[tag=bw.tower.cblue,tag=bw.tower.f2] run function minecraft:bedwars/item/tower/build/f2 {block:"blue_wool"}
execute if entity @s[tag=bw.tower.cblue,tag=bw.tower.f3] run function minecraft:bedwars/item/tower/build/f3 {block:"blue_wool"}
execute if entity @s[tag=bw.tower.cred,tag=bw.tower.f0] run function minecraft:bedwars/item/tower/build/f0 {block:"red_wool"}
execute if entity @s[tag=bw.tower.cred,tag=bw.tower.f1] run function minecraft:bedwars/item/tower/build/f1 {block:"red_wool"}
execute if entity @s[tag=bw.tower.cred,tag=bw.tower.f2] run function minecraft:bedwars/item/tower/build/f2 {block:"red_wool"}
execute if entity @s[tag=bw.tower.cred,tag=bw.tower.f3] run function minecraft:bedwars/item/tower/build/f3 {block:"red_wool"}
execute if entity @s[tag=bw.tower.cyellow,tag=bw.tower.f0] run function minecraft:bedwars/item/tower/build/f0 {block:"yellow_wool"}
execute if entity @s[tag=bw.tower.cyellow,tag=bw.tower.f1] run function minecraft:bedwars/item/tower/build/f1 {block:"yellow_wool"}
execute if entity @s[tag=bw.tower.cyellow,tag=bw.tower.f2] run function minecraft:bedwars/item/tower/build/f2 {block:"yellow_wool"}
execute if entity @s[tag=bw.tower.cyellow,tag=bw.tower.f3] run function minecraft:bedwars/item/tower/build/f3 {block:"yellow_wool"}
execute if entity @s[tag=bw.tower.cgreen,tag=bw.tower.f0] run function minecraft:bedwars/item/tower/build/f0 {block:"lime_wool"}
execute if entity @s[tag=bw.tower.cgreen,tag=bw.tower.f1] run function minecraft:bedwars/item/tower/build/f1 {block:"lime_wool"}
execute if entity @s[tag=bw.tower.cgreen,tag=bw.tower.f2] run function minecraft:bedwars/item/tower/build/f2 {block:"lime_wool"}
execute if entity @s[tag=bw.tower.cgreen,tag=bw.tower.f3] run function minecraft:bedwars/item/tower/build/f3 {block:"lime_wool"}
# 没有队伍标签 = 白色
execute if entity @s[tag=!bw.tower.cblue,tag=!bw.tower.cred,tag=!bw.tower.cyellow,tag=!bw.tower.cgreen,tag=bw.tower.f0] run function minecraft:bedwars/item/tower/build/f0 {block:"white_wool"}
execute if entity @s[tag=!bw.tower.cblue,tag=!bw.tower.cred,tag=!bw.tower.cyellow,tag=!bw.tower.cgreen,tag=bw.tower.f1] run function minecraft:bedwars/item/tower/build/f1 {block:"white_wool"}
execute if entity @s[tag=!bw.tower.cblue,tag=!bw.tower.cred,tag=!bw.tower.cyellow,tag=!bw.tower.cgreen,tag=bw.tower.f2] run function minecraft:bedwars/item/tower/build/f2 {block:"white_wool"}
execute if entity @s[tag=!bw.tower.cblue,tag=!bw.tower.cred,tag=!bw.tower.cyellow,tag=!bw.tower.cgreen,tag=bw.tower.f3] run function minecraft:bedwars/item/tower/build/f3 {block:"white_wool"}
