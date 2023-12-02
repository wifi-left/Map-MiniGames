summon marker ~ ~ ~ {Tags:["wolf.pointer","gun.new"]}
tp @e[tag=gun.new] @s
tp @e[tag=gun.new] ~ ~1 ~
scoreboard players operation @e[tag=gun.new,limit=1] btw.gunspeed = @s btw.gunspeed
scoreboard players operation @e[tag=gun.new,limit=1] park.uuid = @s park.uuid
scoreboard players set @e[tag=gun.new] PSTJ 30
tag @e[tag=gun.new] remove gun.new

execute as @e[tag=wolf.pointer] at @s run function minecraft:twolf/control/selector/forward
execute if score wolf.event board matches 1..2 as @a[tag=wolf.pointed,tag=wolf.connected] run tag @s remove wolf.pointed
execute if entity @a[tag=wolf.pointed] run title @s actionbar ["\u00a7a你选择了 ",{"selector":"@a[tag=wolf.pointed]"}]
execute as @a[tag=wolf.pointed] run function minecraft:twolf/action/per/highlight
execute if entity @a[tag=wolf.pointed] run playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute unless entity @a[tag=wolf.pointed] run title @s actionbar ["\u00a7c无效选择"]
execute unless entity @a[tag=wolf.pointed] run playsound block.chest.locked player @s ~ ~ ~ 1 1 1
scoreboard players operation @s LRS_CS = @a[tag=wolf.pointed,limit=1] park.uuid
tag @a[tag=wolf.pointed] remove wolf.pointed
kill @e[tag=wolf.pointer,type=marker]
# item modify entity @s weapon.mainhand usegun