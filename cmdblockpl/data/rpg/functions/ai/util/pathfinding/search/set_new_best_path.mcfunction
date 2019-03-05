#Zapisz nowy indeks poprzednika oraz cene
scoreboard players operation @s pathPrev = @s tableIndex
scoreboard players operation @s pathScore = @s pathScoreTMP

#Jesli to jest wierzcholek koncowy to zapisz na fakeplayers cene wiercholka koncowego
execute if entity @s[tag=PATH_SOURCE] run scoreboard players operation FINAL_SCORE pathScore = @s pathScore

#Zaznacz ten wierzcholek jako taki od ktorego nalezy wykonac sprawdzenie chyba ze to wierzcholek koncowy
tag @s[tag=!PATH_SOURCE] add CHCECK_PATH

#Jesli znana jest cena wierzcholka koncowego i jest ona nizsza od tej ktora jest teraz badana to nie
#rob dalszych sprawdzen
execute if score @s pathScore >= FINAL_SCORE pathScore run tag @s remove CHCECK_PATH
