gamemode adventure @s
clear @s *[!custom_data~{"douzi":1}]
spreadplayers 183 373 0 10 under 23 false @s
effect give @s instant_health 2 25 true
tag @s remove t_says.finished
tag @s remove t_says.failed
rotate @s facing 183 22 373
recipe take @s *
