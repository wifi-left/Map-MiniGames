execute as @a[tag=killer.tobeassained,limit=1,sort=random] run function minecraft:killerever/getjob/saver
execute as @a[tag=killer.tobeassained,limit=1,sort=random] run function minecraft:killerever/getjob/killer

execute if score play.killer tick matches 16.. as @a[tag=killer.tobeassained,limit=1,sort=random] run function minecraft:killerever/getjob/saver
execute if score play.killer tick matches 16.. as @a[tag=killer.tobeassained,limit=1,sort=random] run function minecraft:killerever/getjob/killer


execute as @a[tag=killer.tobeassained] run function minecraft:killerever/getjob/normal

execute unless score play.killer tick matches 16.. run tellraw @a[team=play.killer] ["\u00a76\u00a7l此次游戏共有 1 个侦探和 1 个杀手。"]
execute if score play.killer tick matches 16.. run tellraw @a[team=play.killer] ["\u00a76\u00a7l此次游戏共有 2 个侦探和 2 个杀手。"]