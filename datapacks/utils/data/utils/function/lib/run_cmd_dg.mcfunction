data modify storage minecraft:temp one_cmd set from storage minecraft:temp to_be_run_cmds[0]
data merge storage minecraft:temp {cmd_set:{command:"say Error! No commands!"}}
data modify storage minecraft:temp cmd_set.command set from storage minecraft:temp one_cmd
function cmd:run_cmd with storage minecraft:temp cmd_set
data remove storage minecraft:temp to_be_run_cmds[0]
execute if data storage minecraft:temp to_be_run_cmds[0] run function utils:lib/run_cmd_dg