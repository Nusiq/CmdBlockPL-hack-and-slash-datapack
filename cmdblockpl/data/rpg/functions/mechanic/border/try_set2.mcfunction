#Sprawdza warunek pierwszy (wszyscy gracze musza byc odpowiednio daleko od nowego borderu)

#Wczytuje pozycje graczy
execute as @e[tag=imposter] run function util:get_pos/2d/run

#Inicjalizuje wartosci PosX,Y i Z jakimis wartosciami jednego z graczy
scoreboard players operation @s borderMinPosX = @e[tag=imposter,limit=1] posX
scoreboard players operation @s borderMinPosZ = @e[tag=imposter,limit=1] posZ
scoreboard players operation @s borderMaxPosX = @e[tag=imposter,limit=1] posX
scoreboard players operation @s borderMaxPosZ = @e[tag=imposter,limit=1] posZ

#Upewniam sie zeby wartosci w border(Min/Max)Pos(X/Y/Z) byly takie jak trzeba
scoreboard players operation @s borderMinPosX < @e[tag=imposter] posX
scoreboard players operation @s borderMinPosZ < @e[tag=imposter] posZ
scoreboard players operation @s borderMaxPosX > @e[tag=imposter] posX
scoreboard players operation @s borderMaxPosZ > @e[tag=imposter] posZ

#Ustawiam dokladne wartosci srodka
scoreboard players operation @s posX = @s borderMaxPosX
scoreboard players operation @s posZ = @s borderMaxPosZ
scoreboard players operation @s posX -= @s borderMinPosX
scoreboard players operation @s posZ -= @s borderMinPosZ
scoreboard players operation @s posX /= 2 var
scoreboard players operation @s posZ /= 2 var
scoreboard players operation @s posX += @s borderMinPosX
scoreboard players operation @s posZ += @s borderMinPosZ


function util:tp_at_pos/2d/run

#Border sie moze ruszac tylko pod warunkiem ze gracze sa odpowiednio blisko jego centrum
execute at @s positioned ~-20 ~-500 ~-20 run tag @e[tag=imposter,dx=40,dy=1000,dz=40] add IN_BORDER_RANGE_TMP
execute if entity @e[tag=imposter,tag=!IN_BORDER_RANGE_TMP] run tag @s remove THIS_BORDER_TMP
tag @e remove IN_BORDER_RANGE_TMP