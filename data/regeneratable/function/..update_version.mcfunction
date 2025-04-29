scoreboard players add *regeneratable.global regeneratable.version 1
tellraw @a [{"text": "<info> [regeneratable] Global holders' version got updated to "},\
{"score": {"name": "*regeneratable.global", "objective": "regeneratable.version"}},\
"!\nThe holders should start regnerating the entries by now!"]