tellraw @a ["\u00a7b[GCAR] \u00a7a数据包成功加载！"]
scoreboard objectives remove GCAR.long
scoreboard objectives remove GCAR.tick
scoreboard objectives add GCAR.tick dummy "GCAR 行驶路程"
scoreboard objectives add GCAR.long dummy "GCAR 行驶路程"