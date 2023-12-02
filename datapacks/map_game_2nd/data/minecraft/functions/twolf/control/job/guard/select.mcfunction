function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0

execute if entity @a[tag=wolf.selected,tag=wolf.lastprotected] run tellraw @a[tag=wolf.acting] ["\u00a7d[!] \u00a7c你无法守护 ",{"selector":"@a[tag=wolf.selected]"},"\u00a7c，因为你昨晚守护了他。"]
execute if entity @a[tag=wolf.selected,tag=wolf.lastprotected] run return 0

tellraw @a[tag=wolf.tip,gamemode=spectator] ["",{"selector":"@s"},"\u00a76 守护了 ",{"selector":"@a[tag=wolf.selected]"}]
tellraw @a[tag=wolf.acting] ["\u00a76你守护了 ",{"selector":"@a[tag=wolf.selected]"}]

tag @a[tag=wolf.selected] add wolf.protected
function twolf/events/event_over