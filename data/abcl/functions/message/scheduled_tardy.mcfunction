execute store result score $abcl.temp abcl.scheduled run time query gametime

execute if score @s abcl.scheduled <= $abcl.temp abcl.scheduled run function abcl:message/end

scoreboard players reset @s chroma.leaves