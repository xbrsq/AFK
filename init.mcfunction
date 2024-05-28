# setup AFK team
scoreboard teams add afk_team AFK
scoreboard teams option afk_team color gray

# setup AFK objective
scoreboard objectives add afk trigger AFK

# setup AFK timer
scoreboard objectives add afk_timer dummy Ticks AFK

scoreboard players set two dummy 2
scoreboard players set twentyMinutes dummy 1200