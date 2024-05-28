execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ title @s subtitle ""
execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ title @s title {"text":"Leaving AFK"}
execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ scoreboard teams leave afk_team @s

execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ tellraw @a [{"selector":"@s"},{"text":" is no longer AFK"}]

execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ scoreboard players set @s afk 0
