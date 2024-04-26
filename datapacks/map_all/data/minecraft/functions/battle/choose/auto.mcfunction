tellraw @s ["\n\u00a7c选择超时，已自动选择。\n"]

execute as @s[team=play.battle.b,tag=battle.notready] run function battle/choose/blue/axe
execute as @s[team=play.battle.b,tag=battle.notready] run function battle/choose/blue/csb_m
execute as @s[team=play.battle.b,tag=battle.notready] run function battle/choose/blue/csb_zt
execute as @s[team=play.battle.b,tag=battle.notready] run function battle/choose/blue/stw

execute as @s[team=play.battle.r,tag=battle.notready] run function battle/choose/red/axe
execute as @s[team=play.battle.r,tag=battle.notready] run function battle/choose/red/csb_m
execute as @s[team=play.battle.r,tag=battle.notready] run function battle/choose/red/csb_zt
execute as @s[team=play.battle.r,tag=battle.notready] run function battle/choose/red/stw