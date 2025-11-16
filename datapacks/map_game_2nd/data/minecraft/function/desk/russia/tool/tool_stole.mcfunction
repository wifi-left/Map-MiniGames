tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7a抽到了",{text:"[道具窃取]",color:aqua}]
execute store result score desk.random board run random value 1..3
execute if score desk.random board matches 1 run function minecraft:desk/russia/tool/shield
execute if score desk.random board matches 2 run function minecraft:desk/russia/tool/time_freeze
execute if score desk.random board matches 3 run function minecraft:desk/russia/tool/weapon_lock