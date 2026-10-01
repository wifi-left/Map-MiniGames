##
## 保证 @s 拥有 park.uuid（缺失时补分配，不发送调试消息）
##

scoreboard players add p.uid park.uuid 1
scoreboard players operation @s park.uuid = p.uid park.uuid
