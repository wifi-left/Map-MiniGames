execute as @s[team=hide.wait2] run function hide2/join
execute as @s[team=hide.runner] run function hide2/during/runnerdied
execute as @s[team=hide.killer] run function hide2/during/killerdied