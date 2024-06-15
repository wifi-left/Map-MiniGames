execute as @s[team=bw.blue,tag=bw.play] run tag @e[distance=0..3,type=egg,sort=nearest,limit=1] add blue
execute as @s[team=bw.yellow,tag=bw.play] run tag @e[distance=0..3,type=egg,sort=nearest,limit=1] add yellow
execute as @s[team=bw.red,tag=bw.play] run tag @e[distance=0..3,type=egg,sort=nearest,limit=1] add red
execute as @s[team=bw.green,tag=bw.play] run tag @e[distance=0..3,type=egg,sort=nearest,limit=1] add green