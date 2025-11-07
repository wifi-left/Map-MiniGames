playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute unless score blaze.state state matches 2..10 run tellraw @s ["\u00a7c这个时间你无法打开商店！"]
execute unless score blaze.state state matches 2..10 run return 0
dialog show @s blaze/shop