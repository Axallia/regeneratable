scoreboard players add *regeneratable.global.timer regeneratable.update_order 1

execute if score *regeneratable.global.timer regeneratable.update_order \
    >= *regeneratable.global regeneratable.update_order \
    run scoreboard players set *regeneratable.global.timer regeneratable.update_order 0

execute as @e[\
    type=marker,tag=regeneratable.holder,\
    predicate=regeneratable:is_my_order,\
    predicate=regeneratable:version_dismatch\
    ] run function regeneratable:regenerate/as_holder

schedule function regeneratable:tick.runtime 10t replace