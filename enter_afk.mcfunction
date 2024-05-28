execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ scoreboard teams join afk_team @s
execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ tellraw @s {"text":"[click HERE to toggle AFK]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger afk add 1"},"hoverEvent":{"action":"show_text","value":["/trigger afk add 1"]}}

execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ tellraw @a [{"selector":"@s"},{"text":" has gone AFK"}]

execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ scoreboard players set @s afk_timer 0

execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ scoreboard players set @s afk 2