# 僵尸潮：一个基地刷 5 只僵尸（执行位置 = 该队床标记）
# DeathLootTable 用自定义掉落表：被打死后掉 1 铁锭
# 寿命 90 秒，见 second.mcfunction（比 2 分钟一波的间隔短，下一波来之前会清干净）
summon minecraft:zombie ~ ~1 ~ {PersistenceRequired:1b,DeathLootTable:"minecraft:bedwars/zombie",Tags:["bw.zombie"]}
summon minecraft:zombie ~1 ~1 ~ {PersistenceRequired:1b,DeathLootTable:"minecraft:bedwars/zombie",Tags:["bw.zombie"]}
summon minecraft:zombie ~-1 ~1 ~ {PersistenceRequired:1b,DeathLootTable:"minecraft:bedwars/zombie",Tags:["bw.zombie"]}
summon minecraft:zombie ~ ~1 ~1 {PersistenceRequired:1b,DeathLootTable:"minecraft:bedwars/zombie",Tags:["bw.zombie"]}
summon minecraft:zombie ~ ~1 ~-1 {PersistenceRequired:1b,DeathLootTable:"minecraft:bedwars/zombie",Tags:["bw.zombie"]}
