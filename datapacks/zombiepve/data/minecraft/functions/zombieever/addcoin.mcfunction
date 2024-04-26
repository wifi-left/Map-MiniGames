execute store result score gun.coin.tmp board as @s at @s run data get entity @s SelectedItem.tag.coin
item replace entity @s weapon.mainhand with air
tellraw @s  ["\u00a76+ ",{"score":{"name": "gun.coin.tmp","objective": "board"},"color": "gold"}," \u00a76Coins (金币袋子)"]
scoreboard players operation @s zombie.coin += gun.coin.tmp board
# playsound entity.allay.item_given player @s ~ ~ ~ 1 1 1
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0 1