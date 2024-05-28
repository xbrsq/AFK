# starting AFK:
execute @a[score_afk_min=1,score_afk=1] ~ ~ ~ function afk:enter_afk

# while in AFK:
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ title @s times 0 10 20
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ title @s subtitle {"text":"'/trigger afk add 1' to leave AFK"}
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ title @s title {"text":"You are AFK"}
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ scoreboard players add @s afk_timer 1
execute @a[score_afk_min=2,score_afk=2] ~ ~ ~ scoreboard players operation @s afk_timer %= twentyMinutes dummy
execute @a[score_afk_timer_min=0,score_afk_timer=0] ~ ~ ~ tellraw @s {"text":"[click HERE to toggle AFK]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger afk add 1"},"hoverEvent":{"action":"show_text","value":["/trigger afk add 1"]}}


# leaving AFK:
execute @a[score_afk_min=3,score_afk=3] ~ ~ ~ function afk:exit_afk

scoreboard players enable @a afk
