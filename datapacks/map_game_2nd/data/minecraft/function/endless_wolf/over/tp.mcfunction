scoreboard players set endwolf.state state 0
execute as @a[team=wait.endwolf] in overworld run function minecraft:endless_wolf/join
execute as @a[team=play.endwolf] in overworld run function minecraft:endless_wolf/join
function minecraft:endless_wolf/reset
