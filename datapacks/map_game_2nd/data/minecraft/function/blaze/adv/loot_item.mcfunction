advancement revoke @s only blaze/player_was_killed
execute if score blaze.special state matches 2 run clear @s wooden_pickaxe
execute if score blaze.special state matches 2 run clear @s #stainglass
execute if score blaze.special state matches 2 run function player:loot_item/bundle
execute if score blaze.special state matches 2 run clear @s