tag @a[scores={hp.gethurt=0..},team=play.hotpot,limit=1,sort=nearest] add hp.flag
execute if entity @a[tag=hp.flag] run function hotpotever/changeto
execute unless entity @a[tag=hp.flag] run function hotpotever/changetofaild