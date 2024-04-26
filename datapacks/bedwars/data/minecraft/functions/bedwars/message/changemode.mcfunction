execute if score bw.mode state matches 0..3 run tellraw @a[team=bw.wait] ["\u00a7a起床战争模式调整为 [\u00a76四队模式\u00a7a]"]

execute if score bw.mode state matches 0 run tellraw @a[team=bw.wait] ["\u00a7a起床战争特殊模式禁用"]
execute if score bw.mode state matches 1 run tellraw @a[team=bw.wait] ["\u00a7a起床战争特殊模式启用：[\u00a7c无床模式\u00a7a]"]
execute if score bw.mode state matches 2 run tellraw @a[team=bw.wait] ["\u00a7a起床战争特殊模式启用：[\u00a7a全解锁模式\u00a7a]"]


execute if score bw.mode state matches 4..7 run tellraw @a[team=bw.wait] ["\u00a7a起床战争模式调整为 [\u00a7b两队模式\u00a7a]"]

execute if score bw.mode state matches 4 run tellraw @a[team=bw.wait] ["\u00a7a起床战争特殊模式禁用"]
execute if score bw.mode state matches 5 run tellraw @a[team=bw.wait] ["\u00a7a起床战争特殊模式启用：[\u00a7c无床模式\u00a7a]"]
execute if score bw.mode state matches 6 run tellraw @a[team=bw.wait] ["\u00a7a起床战争特殊模式启用：[\u00a7a全解锁模式\u00a7a]"]


playsound entity.experience_orb.pickup player @s ~ ~ ~ 5 1 1