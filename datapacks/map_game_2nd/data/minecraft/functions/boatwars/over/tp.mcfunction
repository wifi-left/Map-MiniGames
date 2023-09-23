tag @a[team=btw.play.a] add tmp
tag @a[team=btw.play.b] add tmp
tag @a[team=btw.wait] add tmp
execute as @a[tag=tmp] run function boatwars/join
tag @a[tag=tmp] remove tmp