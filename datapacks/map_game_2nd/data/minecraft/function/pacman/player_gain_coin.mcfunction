execute if block ~ ~-1 ~ gold_block run give @s sunflower[max_stack_size=99,item_name="豆子",custom_data={"douzi":1}] 1
execute if block ~ ~-1 ~ gold_block run title @s actionbar ["\u00a76得到豆子*1","\u00a78 | \u00a7b倒计时：",{score:{objective:board,name:"pacman.time"},color:gold},"\u00a76s"]
execute if block ~ ~-1 ~ gold_block run playsound entity.experience_orb.pickup player @s ~ ~15 ~ 1 1 0
execute if block ~ ~-1 ~ gold_block align xyz run particle dust{color:16772614,scale:1} ~0.5 ~0.5 ~0.5 0.1 0.1 0.1 1 10 normal
execute if block ~ ~-1 ~ gold_block run setblock ~ ~-1 ~ white_concrete