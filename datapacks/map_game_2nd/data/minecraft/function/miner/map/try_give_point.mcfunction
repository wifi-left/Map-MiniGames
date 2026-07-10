tag @a[tag=miner.sel] remove miner.sel
tag @a[team=miner,tag=miner.random_team,gamemode=adventure,limit=1,sort=random] add miner.sel
tag @a[tag=miner.sel] remove miner.random_team
# say ok @a[tag=miner.sel]
execute unless data storage minecraft:temp miner_random_pos[0] as @a[team=miner,tag=miner.random_team,gamemode=adventure] run function minecraft:miner/map/fail_and_spec
execute unless data storage minecraft:temp miner_random_pos[0] run return fail
data merge storage temp {miner_random_args:{"selector":"@a[tag=miner.sel]",pos:"",cmd:"function minecraft:miner/map/give_point_per"}}
data modify storage temp miner_random_args.pos set from storage minecraft:temp miner_random_pos[0]
data remove storage minecraft:temp miner_random_pos[0]
function minecraft:miner/map/text_pos_execute_at with storage temp miner_random_args
tag @a[tag=miner.sel] remove miner.sel
execute if entity @a[team=miner,tag=miner.random_team,gamemode=adventure] run function minecraft:miner/map/try_give_point