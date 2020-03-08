tag @a[tag=!randomblock] add randomblock
tag @a[tag=randomblockplace] remove randomblockplace

execute as @a[tag=randomblock] at @s run function touchtorandom:clone
scoreboard players reset @a[scores={randomblocksneak=1..}] randomblocksneak

execute as @e[type=armor_stand,tag=norandomblock] at @s unless entity @p[distance=..5] run kill @s
