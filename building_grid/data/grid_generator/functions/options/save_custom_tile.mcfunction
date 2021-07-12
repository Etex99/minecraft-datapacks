
#SAVES NEW CUSTOM TILE PATTERN

fill ~ ~3 ~ ~63 ~3 ~63 minecraft:structure_void replace minecraft:air

setblock ~ ~4 ~ minecraft:structure_block[mode=save]{name:"grid_generator:custom1",posY:-1,sizeX:32,sizeY:1,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"SAVE"} replace
setblock ~ ~5 ~ minecraft:redstone_block
fill ~ ~4 ~ ~ ~5 ~ minecraft:air

setblock ~32 ~4 ~ minecraft:structure_block[mode=save]{name:"grid_generator:custom2",posY:-1,sizeX:32,sizeY:1,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"SAVE"} replace
setblock ~32 ~5 ~ minecraft:redstone_block
fill ~32 ~4 ~ ~32 ~5 ~ minecraft:air

setblock ~32 ~4 ~32 minecraft:structure_block[mode=save]{name:"grid_generator:custom3",posY:-1,sizeX:32,sizeY:1,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"SAVE"} replace
setblock ~32 ~5 ~32 minecraft:redstone_block
fill ~32 ~4 ~32 ~32 ~5 ~32 minecraft:air

setblock ~ ~4 ~32 minecraft:structure_block[mode=save]{name:"grid_generator:custom4",posY:-1,sizeX:32,sizeY:1,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"SAVE"} replace
setblock ~ ~5 ~32 minecraft:redstone_block
fill ~ ~4 ~32 ~ ~5 ~32 minecraft:air

fill ~ ~3 ~ ~63 ~3 ~63 minecraft:air replace minecraft:structure_void

function grid_generator:generation/regenerate_tiles