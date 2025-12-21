function minecraft:build_guess/during/words
execute store result storage minecraft:temp build_guess_tmp.count int 1 run data get storage minecraft:temp build_guess_tmp.words
data modify storage minecraft:temp random.min set value 1
data modify storage minecraft:temp random.max set from storage minecraft:temp build_guess_tmp.count
execute store result score random temp run function utils:random with storage minecraft:temp random
data modify storage minecraft:temp build_guess set value {word:"暂无",length:2}

data modify storage minecraft:temp arr_idx set value {target:"storage minecraft:temp build_guess.word",from:"storage minecraft:temp build_guess_tmp.words",idx:0}
execute store result storage minecraft:temp arr_idx.idx int 1 run scoreboard players get random temp

function utils:get_arr_idx with storage minecraft:temp arr_idx
execute store result storage minecraft:temp build_guess.length int 1 run data get storage minecraft:temp build_guess.word
# data modify storage minecraft:temp build_guess set value {word:"羽毛球",length:3}