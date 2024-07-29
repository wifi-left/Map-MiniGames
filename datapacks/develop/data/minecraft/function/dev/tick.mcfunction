execute as @e[tag=deskparty.point] at @s run function dev_items/party/make_point
execute as @e[tag=deskparty.delpoint] at @s run function dev_items/party/delete_point
execute as @e[tag=merchant.point] at @s run title @a[gamemode=creative,distance=..5] actionbar ["ID: ",{"score":{"name": "@s","objective": "board"},"color":"gold"}]