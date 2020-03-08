## Defaulttags
tag @a[tag=!randomblock] add randomblock
tag @a[tag=randomblockplace] remove randomblockplace

### Bodytouch
execute as @a[tag=randomblock] at @s run function randomblock:clone
scoreboard players reset @a[scores={randomblocksneak=1..}] randomblocksneak

## Kill armor_stands if no player is in 5block range
execute as @e[type=armor_stand,tag=norandomblock] at @s unless entity @p[distance=..5] run kill @s

## Test for sneaking is just to make sure the block above you doesn't get replaced while sneaking

### Handtouch
## Command for COAS: /give @s minecraft:carrot_on_a_stick{Unbreakable:1b,CustomModelData:1}
# execute as @a[scores={randomblockcoas=1..},nbt={SelectedItem:{tag:{CustomModelData:1,Unbreakable:1b}}}] run tag @s add randomblockplace
# scoreboard players reset @a[scores={randomblockcoas=1..}] randomblockcoas

## Setblock
# execute as @e[tag=randomblockplace] at @s anchored eyes unless block ^ ^ ^1 #randomblock:nonsolid run setblock ^ ^ ^1 minecraft:bedrock
# execute as @e[tag=randomblockplace] at @s anchored eyes if block ^ ^ ^1 #randomblock:nonsolid unless block ^ ^ ^2 #randomblock:nonsolid run setblock ^ ^ ^2 minecraft:bedrock
# execute as @e[tag=randomblockplace] at @s anchored eyes if block ^ ^ ^1 #randomblock:nonsolid if block ^ ^ ^2 #randomblock:nonsolid unless block ^ ^ ^3 #randomblock:nonsolid run setblock ^ ^ ^3 minecraft:bedrock
# execute as @e[tag=randomblockplace] at @s anchored eyes if block ^ ^ ^1 #randomblock:nonsolid if block ^ ^ ^2 #randomblock:nonsolid if block ^ ^ ^3 #randomblock:nonsolid unless block ^ ^ ^4 #randomblock:nonsolid run setblock ^ ^ ^4 minecraft:bedrock
# execute as @e[tag=randomblockplace] at @s anchored eyes if block ^ ^ ^1 #randomblock:nonsolid if block ^ ^ ^2 #randomblock:nonsolid if block ^ ^ ^3 #randomblock:nonsolid if block ^ ^ ^4 #randomblock:nonsolid unless block ^ ^ ^5 #randomblock:nonsolid run setblock ^ ^ ^5 minecraft:bedrock
