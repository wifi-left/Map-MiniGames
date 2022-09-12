kill @e[type=marker,tag=GCAR.way]
# tag @a remove GCAR.stop
execute as @a[tag=GCAR.go,tag=riding] at @s run function gcar:gcar_go
tag @a remove GCAR.go