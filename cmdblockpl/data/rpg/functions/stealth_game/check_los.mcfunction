#Sprawdza linie widzenia miedzy wykonujacym funkcje a celem (LOS_TARGET_TMP). Wybor celu: @e[tag=LOS_TARGET_TMP,sort=arbitrary,limit=1]
#powinien byc tylko 1 cel wszystkie byty z tagiem LOS_TARGET_TMP traca ten tag po wywolaniu tej funkcji
execute positioned ~ ~1.5 ~ facing entity @e[tag=LOS_TARGET_TMP,sort=arbitrary,limit=1] eyes run function rpg:stealth_game/check_los_loop
#tag @e[tag=LOS_TARGET_TMP] remove LOS_TARGET_TMP