advancement revoke @s only job_pvp/player_kill
execute unless entity @a[tag=job_pvp.died] run return 0
tag @a[team=job_pvp] add job_pvp.listen
tag @a[team=wait.job_pvp] add job_pvp.listen

tellraw @a[tag=job_pvp.listen] ["\u00a7c[DEATH] ",{"translate":"death.attack.genericKill.player",with:[{selector:"@a[tag=job_pvp.died]"},{selector:"@s"}],fallback:"%1$s在与%2$s战斗时被杀死了 (资源包出错，FALLBACK)",color:gold}]

tag @a[tag=job_pvp.died] remove job_pvp.died
tag @a[tag=job_pvp.listen] remove job_pvp.listen