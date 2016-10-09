// Remove conflict from Actually Additons cheese and Pam's milk

var cheese = <actuallyadditions:itemFood>;
var milkbucket = <minecraft:milk_bucket>;
var freshmilk = <harvestcraft:freshmilkItem>;

recipes.removeShapeless(cheese);

// Add in Pam's Fresh milk -> cheese
recipes.addShapeless(cheese, [freshmilk]);