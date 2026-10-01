fill 203 40 393 163 20 353 air replace #t_says/scene_blocks strict
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"t_says_can_throw":true}}}}]
# 战斗类任务的靶子（击杀木乃伊）与箭雨的临时标记
kill @e[tag=t_says.target]
kill @e[tag=t_says.rain]
kill @e[tag=t_says.huskspot]
# 竞技场内的残留实体（限定在竞技场范围：x 163..203 y 20..40 z 353..393）
# 箭（躲避/被射中箭雨）、鸡蛋与雪球（使用类任务扔出去的）、鱼漂（钓鱼任务）、鸡蛋孵出的小鸡
kill @e[type=arrow,x=163,y=20,z=353,dx=40,dy=20,dz=40]
kill @e[type=egg,x=163,y=20,z=353,dx=40,dy=20,dz=40]
kill @e[type=snowball,x=163,y=20,z=353,dx=40,dy=20,dz=40]
kill @e[type=fishing_bobber,x=163,y=20,z=353,dx=40,dy=20,dz=40]
kill @e[type=chicken,x=163,y=20,z=353,dx=40,dy=20,dz=40]

# 清掉"使用物品"类统计的历史分数（大厅里用过也算），避免开局就误判完成
scoreboard players reset @a t_says.egg
scoreboard players reset @a t_says.snowball
scoreboard players reset @a t_says.bow
scoreboard players reset @a t_says.rod
scoreboard players reset @a t_says.bread
scoreboard players reset @a t_says.potion
scoreboard players reset @a t_says.wool
scoreboard players reset @a t_says.kills