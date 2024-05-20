# starting AFK:
execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ function afk:enter_afk

# while in AFK:
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ title @s times 0 10 20
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ title @s subtitle {"text":"'/trigger afk add 1' to leave AFK"}
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ title @s title {"text":"You are AFK"}

# leaving AFK:
execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ function afk:exit_afk

scoreboard players enable @a afk
