#ticki potrzebne do podniesienia hp o 1
scoreboard players set mage var_regenspeed 40
scoreboard players set gunner var_regenspeed 30
scoreboard players set tank var_regenspeed 20
scoreboard players set bard var_regenspeed 10

#maksymalne zycie
scoreboard players set mage var_maxhealth 60
scoreboard players set gunner var_maxhealth 100
scoreboard players set tank var_maxhealth 120
scoreboard players set bard var_maxhealth 80
#przy kazdej zmianie tej zmiennej zrobic cztery ponizsze komendy
execute store result bossbar minecraft:player1 max run scoreboard players get mage var_maxhealth
execute store result bossbar minecraft:player2 max run scoreboard players get gunner var_maxhealth
execute store result bossbar minecraft:player3 max run scoreboard players get tank var_maxhealth
execute store result bossbar minecraft:player4 max run scoreboard players get bard var_maxhealth

#maksymalne zycie do ktorego dziala naturalna regeneracja
scoreboard players set mage var_maxregen 20
scoreboard players set gunner var_maxregen 25
scoreboard players set tank var_maxregen 30
scoreboard players set bard var_maxregen 80

#redukcja obrazen 
scoreboard players set mage var_armor 0
scoreboard players set gunner var_armor 1
scoreboard players set tank var_armor 3
scoreboard players set bard var_armor 0

#cooldown umiejetnosci idac od lewej
scoreboard players set mage var_cooldown0 20
scoreboard players set mage var_cooldown1 20
scoreboard players set mage var_cooldown2 20
scoreboard players set mage var_cooldown3 20
scoreboard players set mage var_cooldown4 20
scoreboard players set mage var_cooldown5 20
scoreboard players set gunner var_cooldown0 20
scoreboard players set gunner var_cooldown1 20
scoreboard players set gunner var_cooldown2 20
scoreboard players set gunner var_cooldown3 20
scoreboard players set gunner var_cooldown4 20
scoreboard players set gunner var_cooldown5 20
scoreboard players set tank var_cooldown0 20
scoreboard players set tank var_cooldown1 20
scoreboard players set tank var_cooldown2 20
scoreboard players set tank var_cooldown3 20
scoreboard players set tank var_cooldown4 20
scoreboard players set tank var_cooldown5 20
scoreboard players set bard var_cooldown0 20
scoreboard players set bard var_cooldown1 20
scoreboard players set bard var_cooldown2 20
scoreboard players set bard var_cooldown3 20
scoreboard players set bard var_cooldown4 20
scoreboard players set bard var_cooldown5 20


scoreboard players set gunner var_bulletdmg 4

scoreboard players set mage var_firetime 500
scoreboard players set mage var_firedmg 2
scoreboard players set mage var_cloudtime 100
scoreboard players set mage var_throwertime 60

scoreboard players set tank var_hammerdmg 5
scoreboard players set tank var_shielddmg 2
scoreboard players set tank var_stuntime 100
scoreboard players set tank var_tauntingtime 200

scoreboard players set bard var_lutedmg 3
scoreboard players set bard var_sleeptime 100
scoreboard players set bard var_healamount 30
scoreboard players set bard var_dmgbuffdur 200
scoreboard players set bard var_dmgbuff 20
scoreboard players set bard var_conga 200

#team lives
scoreboard players set lives var 10