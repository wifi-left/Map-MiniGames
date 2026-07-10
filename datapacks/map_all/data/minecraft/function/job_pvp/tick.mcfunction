execute as @e[tag=job_pvp.creeper] run function minecraft:job_pvp/jobs/creeper_whether_clicked
execute as @a[team=job_pvp,scores={JOBPVP.die=1..}] at @s run function job_pvp/over
execute as @a[team=job_pvp] at @s run kill @e[type=item,distance=0..6,nbt=!{Item:{components:{"minecraft:custom_data":{job_pvp:1}}}}]
execute as @a[team=wait.jobpvp] at @s run kill @e[type=item,distance=0..6,nbt=!{Item:{components:{"minecraft:custom_data":{job_pvp:1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{job_pvp:2}}}}]

execute as @a[team=job_pvp] at @s if items entity @s armor.chest *[custom_data~{job:uma}] run function minecraft:job_pvp/jobs/flight_control