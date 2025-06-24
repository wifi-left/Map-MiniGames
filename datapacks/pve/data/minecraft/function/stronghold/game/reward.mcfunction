execute unless entity @s[tag=pve.stronghold.end] unless block ~8 ~12 ~18 air run clone ~8 ~12 ~18 ~8 ~12 ~18 ~9 ~3 ~9 strict
execute unless entity @s[tag=pve.stronghold.end] if block ~9 ~3 ~9 #containers run summon text_display ~9 ~4 ~9 {text:[{text:"奖励箱",color:green,bold:true}],Tags:["stronghold.texts"],alignment:"center",billboard:"vertical"}
execute unless entity @s[tag=pve.stronghold.end] if block ~9 ~3 ~9 #containers run data merge block ~9 ~3 ~9 {CustomName:{text:"奖励箱",color:gold,bold:true}} 

execute as @s[tag=pve.stronghold.end] run function minecraft:stronghold/game/level_end_building