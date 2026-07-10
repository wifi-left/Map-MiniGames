tag @a[tag=pillar.sel] remove pillar.sel
tag @a[team=pillar,tag=pillar.random_team,gamemode=adventure,limit=1,sort=random] add pillar.sel
tag @a[tag=pillar.sel] remove pillar.random_team
# say ok @a[tag=pillar.sel]
execute unless data storage minecraft:temp pillar_random_pos[0] as @a[team=pillar,tag=pillar.random_team,gamemode=adventure] run function minecraft:pillar/map/fail_and_spec
execute unless data storage minecraft:temp pillar_random_pos[0] run return fail
data merge storage temp {pillar_random_args:{"selector":"@a[tag=pillar.sel]",pos:"",cmd:"function minecraft:pillar/map/give_point_per"}}
data modify storage temp pillar_random_args.pos set from storage minecraft:temp pillar_random_pos[0]
data remove storage minecraft:temp pillar_random_pos[0]
function minecraft:pillar/map/text_pos_execute_at with storage temp pillar_random_args
tag @a[tag=pillar.sel] remove pillar.sel
execute if entity @a[team=pillar,tag=pillar.random_team,gamemode=adventure] run function minecraft:pillar/map/try_give_point