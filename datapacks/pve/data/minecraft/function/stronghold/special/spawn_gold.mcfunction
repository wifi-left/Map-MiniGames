# scoreboard players set stronghold.gold.target board $(gold)


execute if score stronghold.gold.target board matches 99.. run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:99,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 99.. run scoreboard players remove stronghold.gold.target board 99

execute if score stronghold.gold.target board matches 64..98 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:64,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 64..98 run scoreboard players remove stronghold.gold.target board 64

execute if score stronghold.gold.target board matches 32..63 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:32,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 32..63 run scoreboard players remove stronghold.gold.target board 32

execute if score stronghold.gold.target board matches 16..31 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:16,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 16..31 run scoreboard players remove stronghold.gold.target board 16

execute if score stronghold.gold.target board matches 8..15 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:8,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 8..15 run scoreboard players remove stronghold.gold.target board 8

execute if score stronghold.gold.target board matches 4..7 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:4,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 4..7 run scoreboard players remove stronghold.gold.target board 4

execute if score stronghold.gold.target board matches 2..3 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:2,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 2..3 run scoreboard players remove stronghold.gold.target board 2

execute if score stronghold.gold.target board matches 1 run summon item ~ ~2 ~ {Item:{id:"gold_ingot",count:1,components:{"max_stack_size":99}}}
execute if score stronghold.gold.target board matches 1 run scoreboard players remove stronghold.gold.target board 1

execute if score stronghold.gold.target board matches 1.. run function minecraft:stronghold/special/spawn_gold