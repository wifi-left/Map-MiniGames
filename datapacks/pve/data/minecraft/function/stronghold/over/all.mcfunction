gamemode spectator @a[team=stronghold,gamemode=!creative]
function minecraft:stronghold/over/say_time
schedule function minecraft:stronghold/over/tp 5s replace
function minecraft:stronghold/reset/reset
scoreboard players set stronghold.state state 6