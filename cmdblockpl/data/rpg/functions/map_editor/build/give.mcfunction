give @s minecraft:iron_ingot{display:{Name:"{\"text\":\"Kwadrat\",\"color\":\"yellow\"}"}}
give @s minecraft:slime_ball{display:{Name:"{\"text\":\"Koło\",\"color\":\"yellow\"}"}}

tellraw @s ["",{"text":"(i) ","color":"white"},{"text":"Aby rysować ustaw sobie wartość na scoreboardzie \"brush-size\" (domyślnie 1) od ","color":"none"},{"text":"1 do 10","color":"yellow"},{"text":", a następnie włóż odpowiedni item do drugiej ręki.","color":"none"}]

execute unless score @s brush_size matches 0..10 run scoreboard players set @p brush_size 1