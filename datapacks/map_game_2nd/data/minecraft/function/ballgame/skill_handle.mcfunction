execute as @s[level=1..] run title @s actionbar ["\u00a7c冷却中"]
execute as @s[level=1..] run return run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1

execute if items entity @s weapon.* carrot_on_a_stick[custom_data~{ball.skill:rush}] run function minecraft:ballgame/skills/rush
execute if items entity @s weapon.* carrot_on_a_stick[custom_data~{ball.skill:jump}] run function minecraft:ballgame/skills/jump