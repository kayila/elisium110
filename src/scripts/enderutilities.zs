// Add ore dictionary chests for the memory card recipe
var chest = <ore:chest>;
var gold = <ore:ingotGold>;
var alloy = <enderutilities:enderpart>;
var memcard = <enderutilities:enderpart:51>;

recipes.addShaped(memcard * 2, [
			  [ null,  gold,  null  ],
			  [ alloy, chest, alloy ],
			  [ alloy, chest, alloy ]]);