execute unless score pacman.state state matches 1..99 run return fail
item replace entity @a[team=pacman,gamemode=adventure] armor.head with yellow_concrete[enchantments={binding_curse:1},attribute_modifiers=[{id:"a",amount:0,type:"movement_speed",operation:"add_value",display:{type:"override",value:"没有速度加成"}},{id:"a",amount:-5,type:"jump_strength",operation:"add_value",display:{type:"override",value:"不准你跳"}},{id:"a",amount:10,type:"knockback_resistance",operation:"add_value",display:{type:"override",value:"没有击退"}},{id:"a",amount:-1.5,type:"entity_interaction_range",operation:"add_value",display:{type:"override",value:"触摸距离减小"}}],custom_data={"douzi":1}]
execute as @a[team=pacman,gamemode=!creative,tag=!GLOBAL.SPEC] in overworld run function minecraft:pacman/p_next_round
tellraw @a[team=pacman] ["\n\u00a7e下一轮将在\u00a7c5秒\u00a7e后开始！\n"]
execute as @a[team=pacman] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
# schedule function pacman/summon 5s replace
function minecraft:pacman/show_rank
scoreboard players set pacman.time board 6
scoreboard players set pacman.state state 2
