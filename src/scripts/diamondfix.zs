// Remove recipe conflict between opencomputers and inventorypets
recipes.removeShapeless(<inventorypets:nugget_diamond>, [<minecraft:diamond>]);
// Remove recipe conflict between opencomputers and extra bit manipulation
recipes.removeShapeless(<extrabitmanipulation:DiamondNugget>, [<minecraft:diamond>]);

// Add opencomputers diamond chip to ore dictionary
<ore:nuggetDiamond>.add(<opencomputers:material:30>);
