scoreboard players set wolf.state state 1
scoreboard players set wolf.step board 0

scoreboard players reset * LRS_JOB
# 守卫 -> 狼人 -> 女巫 -> 预言家 -> 投票
function small_games/wolf/allplayeruuid
scoreboard players set LRS_RS board 0
function small_games/wolf/getajob

# tp @a[team=Who_Killer_Text] 75 16 94 0 0
execute as @a[team=Who_Killer_Text] run spreadplayers 75 94 1 8 under 21 false @s
function small_games/wolf/vitchreset
scoreboard players set wolf.countdown board 30
# setblock 79 23 94 minecraft:redstone_block
schedule function small_games/wolf/step/night 5s replace
scoreboard players reset * SP
scoreboard players reset * LRS_CS
tag @a remove taged
