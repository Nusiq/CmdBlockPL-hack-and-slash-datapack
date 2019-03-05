#Sprawdza warunek pierwszy (wszyscy gracze musza byc odpowiednio daleko od aktualnego borderu)
#W srodku tej funkcji sprawdzam warunek 2
#Jesli oba sa spelnione to ustawia sie nowy border

#Usuwam byty od bordera jesli w jakis sposob pojawi sie ich wiecej niz jeden
tag @s add THIS_BORDER_TMP


kill @e[tag=!THIS_BORDER_TMP,tag=BORDER_CENTER]

#Border sie moze ruszac tylko pod warunkiem ze gracze sa odpowiednio blisko jego centrum
#execute at @s positioned ~-20 ~-500 ~-20 run tag @e[tag=imposter,dx=40,dy=1000,dz=40] add IN_BORDER_RANGE_TMP
#say @e[tag=imposter,tag=!IN_BORDER_RANGE_TMP]
#execute if entity @e[tag=imposter,tag=!IN_BORDER_RANGE_TMP] run tag @s remove THIS_BORDER_TMP
#tag @e remove IN_BORDER_RANGE_TMP

execute if entity @s[tag=THIS_BORDER_TMP] run function rpg:mechanic/border/try_set2
#execute if entity @s[tag=!THIS_BORDER_TMP] run teleport @s ~ ~ ~
execute if entity @s[tag=THIS_BORDER_TMP] at @s run worldborder center ~ ~


tag @a remove IN_BORDER_RANGE_TMP
tag @s remove THIS_BORDER_TMP