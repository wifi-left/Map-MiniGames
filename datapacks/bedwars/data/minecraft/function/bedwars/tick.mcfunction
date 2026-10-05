execute if score bw.state state matches 1.. run function minecraft:bedwars/summon

execute as @a[tag=bw.play,scores={die=1..}] at @s run function minecraft:bedwars/during/player/loot
execute if score bw.state state matches 1.. run function minecraft:bedwars/testfor
## Shop
# 不可购买
execute as @a[tag=bw.player] if items entity @s player.cursor *[custom_data~{shop:1}] at @s run function bedwars/shop/resetshop2
execute as @a[tag=bw.player] if items entity @s container.* *[custom_data~{shop:1}] at @s run function bedwars/shop/resetshop2
execute as @a[tag=bw.player] if items entity @s weapon.offhand *[custom_data~{shop:1}] at @s run function bedwars/shop/resetshop2

# 可购买
execute as @a[tag=bw.player] if items entity @s player.cursor *[custom_data~{bwshopitem:1}] at @s run function bedwars/shop/shoptick
execute as @a[tag=bw.player] if items entity @s container.* *[custom_data~{bwshopitem:1}] at @s run function bedwars/shop/shoptick
execute as @a[tag=bw.player] if items entity @s weapon.offhand *[custom_data~{bwshopitem:1}] at @s run function bedwars/shop/shoptick

execute as @e[tag=tntsheep.spawn] at @s run function bedwars/item/tntsheep

## 火焰弹：影子标记跟住火球，火球炸开时在其位置做方块爆破
## 先用 on passengers 判定影子是否真的还挂在火球上（关系不存在时不会报错，只是选不中）
tag @e[tag=bw.fb.shadow] remove bw.fb.riding
execute as @e[type=fireball,tag=bw.fb] on passengers run tag @s add bw.fb.riding
execute as @e[tag=bw.fb.shadow] at @s run function minecraft:bedwars/item/fire_charge_shadow
## 兜底：火球飞出去一直没落地（比如朝天空打）就回收影子，避免残留
execute as @e[tag=bw.fb.shadow] run scoreboard players add @s cmdtnt.age 1
execute as @e[tag=bw.fb.shadow,scores={cmdtnt.age=600..}] run kill @s


## 速建防御塔
# ① 用计分板统计 minecraft.used:zombie_spawn_egg 确认「是谁放的」——正常路径（只计数，不发提示）
execute as @a[scores={bw.tower.use=1..}] at @s run function minecraft:bedwars/item/tower_owner
scoreboard players reset @a bw.tower.use
# ② 正在建造的标记：每 tick 搭一层；刚放下的标记：定朝向 → 校验边界 → 转入建造
#    （tower_owner 必须排在 tower_place 前面；兜底只在统计没触发时才会生效）
execute as @e[tag=bw.tower.building] at @s run function minecraft:bedwars/item/tower_build
execute as @e[tag=bw.tower.spawn] at @s run function minecraft:bedwars/item/tower_place

## 蠹虫雪球：影子 tick（照火焰弹影子的写法，见 item/bug_shadow）
tag @e[tag=bw.bug.shadow] remove bw.bug.riding
execute as @e[type=snowball,tag=bw.bug] on passengers run tag @s add bw.bug.riding
execute as @e[tag=bw.bug.shadow] at @s run function minecraft:bedwars/item/bug_shadow
# 蠹虫寿命：每秒 +1，超过 45 秒回收（见 second.mcfunction）

## 铁傀儡守卫
# ① 用计分板统计 minecraft.used:iron_golem_spawn_egg 确认「是谁放的」——正常路径（只计数，不发提示）
execute as @a[scores={bw.golem.use=1..}] at @s run function minecraft:bedwars/item/golem_owner
scoreboard players reset @a bw.golem.use
# ② 刚放下的傀儡：定队伍 → 校验上限 → 转入常驻（golem_owner 必须排在 golem_place 前面）
execute as @e[tag=bw.golem.spawn] at @s run function minecraft:bedwars/item/golem_place

## 职业模式
# ① 右键「职业选择」→ 弹对话框：走进度 minecraft:bedwars/class_select → item/class_use，不在这里派发
# ② 对话框里点了职业 → 立即生效并收走道具
execute as @a[scores={bw.class.pick=1..}] at @s run function minecraft:bedwars/item/class_pick
# ③ 丢掉「职业选择」→ 收回掉落物并还给他（等于不准丢弃）
execute as @a[scores={bw.class.drop=1..}] at @s run function minecraft:bedwars/item/class_drop

## 永久床模式：床被挖掉当 tick 就复原（placebed 每行都按 bw.mode board 分派，实际只执行约 8 个 setblock）
execute if score bw.mode state matches 7 run function minecraft:bedwars/resets/placebed

## 救援平台：黏液块不允许被挖掘 —— 每 tick 把被挖掉的格子补回来
##（keep = 只填空气，所以玩家自己放在平台上的方块不会被替换）
execute at @e[tag=bw.pf] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:slime_block keep
## 回城卷轴：咏唱计时 + 打断判定
## 必须排在下面「隐身」段里 hurt.1 被清零之前 —— hurt.1 就是「本 tick 受到的伤害」
execute as @a[tag=bw.scrolling] at @s run function minecraft:bedwars/item/scroll_tick


## Other
spawnpoint @a[tag=bw.player] -225 9 111 0 0

kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_bed"}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bw:1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{shop:1}}}}]

execute as @e[tag=bedwars.icon] at @s run rotate @s ~5 ~

execute as @e[tag=bedwars,type=area_effect_cloud] at @s run data merge entity @s {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
# [!]
function fix:bw/editnbt
#
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] run tag @s add flaged
scoreboard players reset @a bw.board
#Item:{id:"minecraft:emerald",Count:1b,tag:{HideFlags:63,Can1Destroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}

execute as @a[x=-225,y=9,z=111,distance=0..2,gamemode=!creative] at @s run function minecraft:bedwars/during/player/died

# 

execute as @e[x=-392,y=-64,z=299,dx=176,dy=140,dz=-178,type=egg] at @s run function minecraft:bedwars/item/eggtick
kill @e[type=chicken,x=-392,y=-64,z=299,dx=176,dy=140,dz=-178]

## Kill Shop Items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bwshopitem:1}}}}]

## Invis
tag @a[tag=INV] remove INV
tag @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] add INV
execute if entity @e[scores={attack.1=1..},tag=bw.player] run effect clear @a[tag=INV,scores={hurt.1=1..}] invisibility
execute if entity @e[scores={attack.1=1..},tag=bw.player] run tellraw @a[tag=INV,scores={hurt.1=1..}] ["§c你的隐身状态因为受到伤害被取消！"]
scoreboard players reset @a[scores={hurt.1=1..}] hurt.1
scoreboard players reset @a[scores={attack.1=1..}] attack.1
execute as @a[tag=INV] at @s run particle minecraft:dust{color:16449791,scale:0.5} ~ ~ ~ 0.05 0.05 0.05 1 1 force

execute if score bw.mode state matches 3 run function minecraft:bedwars/special/xp_change

execute as @a[tag=bw.player] if items entity @s container.* bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/bucket
execute as @a[tag=bw.player] if items entity @s weapon.offhand bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/bucket
execute as @a[tag=bw.player] if items entity @s container.* water_bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/water_bucket
execute as @a[tag=bw.player] if items entity @s weapon.offhand water_bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/water_bucket

function minecraft:bedwars/armor

execute as @e[type=#bw_entities, x=-216, y=67, z=299, dx=-176, dy=5, dz=-178] run kill @s
