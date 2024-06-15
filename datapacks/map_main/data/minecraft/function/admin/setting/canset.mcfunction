execute as @s[tag=map.op] run return 1
execute if score map.settingmode board matches 0 run return 1
return 0