// Change reed blocks to be craftable with 4 sugarcane instead of 9
var reeds = <minecraft:reeds>;
var reedblock = <quark:reed_block>;

// Craft reed blocks with 4 reeds
recipes.removeShapeless(reedblock, [reeds]);
recipes.addShapeless(reedblock, [reeds, reeds, reeds, reeds]);

// Craft 4 reeds with 1 reed block
recipes.removeShapeless(reeds, [reedblock]);
recipes.addShapeless(reeds*4, [reedblock]);