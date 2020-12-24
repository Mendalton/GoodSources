#=========================
# What does this do?
#=========================

# In this example, this is how a carrot_on_a_stick can detect if a player right clicks it. 
#This can be useful if the player is using it for a speical function such as a blaster shooting a projectile or a remote that activates some settings. 

# Example
#=====================================================================================

# Adds scoreboard
scoreboard objectives add exampleobj minecraft.used:minecraft_carrot_on_a_stick

# Right Click detection
execute as @a[scores={exampleobj=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1234}}}] run function folder:file

# This command helps run the right click function again

scoreboard players remove @a[scores={exampleobj=1..}] exampleobj 1

