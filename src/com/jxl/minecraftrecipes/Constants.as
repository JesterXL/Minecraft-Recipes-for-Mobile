package com.jxl.minecraftrecipes
{
	import com.jxl.minecraftrecipes.vo.IngredientVO;
	import com.jxl.minecraftrecipes.vo.RecipeVO;
	
	import flash.debugger.enterDebugger;
	
	import mx.collections.ArrayCollection;

	public class Constants
	{
		
		public static var allRecipes:ArrayCollection;
		public static const IMAGE_PATH:String = "/assets/images/";
		
		private static var classConstructed:Boolean = classConstruct();
		
		
		private static function getRecipe(title:String, description:String, ingredients:String, imageOrImages:*, value:uint, ... grids):RecipeVO
		{
			var recipe:RecipeVO 				= new RecipeVO();
			recipe.title 						= title;
			recipe.description					= description;
			recipe.ingredients					= ingredients;
			if(imageOrImages is String)
			{
				recipe.images					= [imageOrImages];
			}
			else
			{
				recipe.images 					= imageOrImages;
			}
			recipe.value 						= value;
			
			var innerGrids:Array 				= grids[0];
			var len:int 						= innerGrids.length;
			recipe.grids 						= [];
			
			for(var index:int = 0; index < len; index++)
			{
				var ingredientGrid:Array 		= getIngredientGrid(innerGrids[index]);
				recipe.grids[index] 			= ingredientGrid;
			}
			return recipe;
		}
		
		private static function getIngredientGrid(ingredientsArray:Array):Array
		{
			trace("ingredientsArray.length: " + ingredientsArray.length);
			if(ingredientsArray.length > 1)
			{
				flash.debugger.enterDebugger();
			}
			var grid:Array = [];
			const len:int = 9;
			var counter:int = -1;
			for(var row:int = 0; row < 3; row++)
			{
				grid[row] = [];
				for(var col:int = 0; col < 3; col++)
				{
					counter++;
					grid[row][col] = ingredientsArray[counter];
				}
			}
			return grid;
		}
		
		private static function addRecipe(title:String, description:String, ingredients:String, imageOrImages:*, value:uint, ... grids):void
		{
			var recipe:RecipeVO = getRecipe(title, description, ingredients, imageOrImages, value, grids);
			allRecipes.addItem(recipe);
		}
		
		private static function classConstruct():Boolean
		{
			allRecipes = new ArrayCollection();
			
			addRecipe("Wooden Planks", 
				"Used as a building material and can be crafted into many things. Any form of wood used will still result in the same output.", 
				"Wood",
				IMAGE_PATH + "Wooden_Plank.png",
				4,
				[null, null, null,
					null, null, null,
					null, new IngredientVO(IMAGE_PATH + "Wood.png"), null]);
			
			addRecipe("Sticks", 
						"Used to craft torches, arrows, signs,\n ladders, fences and as handles for tools and weapons.",
						"Wooden Plank",
						IMAGE_PATH + "Stick.png",
						4,
						[null, null, null,
						null, new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null,
						null, new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null]);
			
			addRecipe("Torches",
						"Used to create light. Torches also melt snow and ice.",
						"Stick + Coal (or Charcoal)",
						IMAGE_PATH + "Torch.png",
						4,
						[null, null, null,
						null, new IngredientVO(IMAGE_PATH + "Coal_(Item).png"), null,
						null, new IngredientVO(IMAGE_PATH + "Stick.png"), null]);
						
			addRecipe("Crafting Table",
						"Allows the player to craft on a 3x3 grid.",
						"Wooden Plank",
						IMAGE_PATH + "Crafting_Table.png",
						1,
						[null, null, null,
						new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null,
						new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null]);
			
			addRecipe("Furnace",
						"Allows the player to smelt.",
						"Cobblestone",
						IMAGE_PATH + "Furnace.png",
						1,
						[new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"),
							new IngredientVO(IMAGE_PATH + "Cobblestone.png"), null, new IngredientVO(IMAGE_PATH + "Cobblestone.png"),
							new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png")]);
			
			
			addRecipe("Chest",
						"Stores blocks and items inside. Place two chests side by side to create a larger chest with double the capacity.",
						"Wooden Plank",
						IMAGE_PATH + "Chest.png",
						1,
						[new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"),
							new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null, new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"),
							new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png")]);
			
			addRecipe("Ore Blocks",
						"Stores blocks and items inside. Place two chests side by side to create a larger chest with double the capacity.",
						"",
						[IMAGE_PATH + "Lapis_Lazuli_(Block).png",
							IMAGE_PATH + "Gold_(Block).png",
							IMAGE_PATH + "Iron_(Block).png",
							IMAGE_PATH + "Diamond_(Block).png"],
						1,
						[new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"), new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"), new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"),
							new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"), null, new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"),
							new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"), new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png"), new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Dye).png")],
						
						[new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"),
							new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), null, new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"),
							new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png")],
						
						[new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"),
							new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"),
							new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png")],
						
						[new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"),
							new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"),
							new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png")]);
						
			
			addRecipe("Glowstone",
						"Used to create brighter light than torches. Melts snow/ice and can be used underwater.",
						"Glowstone (Dust)",
						IMAGE_PATH + "Glowstone_(Block).png",
						1,
						[null, null, null,
							new IngredientVO(IMAGE_PATH + "Glowstone_(Dust).png"), new IngredientVO(IMAGE_PATH + "Glowstone_(Dust).png"), null,
							new IngredientVO(IMAGE_PATH + "Glowstone_(Dust).png"), new IngredientVO(IMAGE_PATH + "Glowstone_(Dust).png"), null]);
			
			addRecipe("Wool",
						"Used as a building material and can be colored with dyes. This recipe is not recommended because Wool can be easily obtained from Sheep.",
						"String",
						IMAGE_PATH + "White_Wool.png",
						1,
						[null, null, null,
							new IngredientVO(IMAGE_PATH + "String.png"), new IngredientVO(IMAGE_PATH + "String.png"), null,
							new IngredientVO(IMAGE_PATH + "String.png"), new IngredientVO(IMAGE_PATH + "String.png"), null]);
			
			addRecipe("TNT",
						"Used to cause explosions.",
						"Gunpowder + Sand",
						IMAGE_PATH + "TNT.png",
						1,
						[new IngredientVO(IMAGE_PATH + "Gunpowder.png"), new IngredientVO(IMAGE_PATH + "Sand.png"), new IngredientVO(IMAGE_PATH + "Gunpowder.png"),
							new IngredientVO(IMAGE_PATH + "Sand.png"), new IngredientVO(IMAGE_PATH + "Gunpowder.png"), new IngredientVO(IMAGE_PATH + "Sand.png"),
							new IngredientVO(IMAGE_PATH + "Gunpowder.png"), new IngredientVO(IMAGE_PATH + "Sand.png"), new IngredientVO(IMAGE_PATH + "Gunpowder.png")]);
						
			
			addRecipe("Slabs",
						"Used for making long staircases. Two slabs placed on top of each other will create a normal-sized double slab block.",
						"Stone, Sandstone, Wooden Planks, Cobblestone, Brick, or Stone Brick",
						[IMAGE_PATH  + "Stone_Slab.png",
							IMAGE_PATH + "Sandstone_Slab.png",
							IMAGE_PATH + "Wooden_Slab.png",
							IMAGE_PATH + "Cobblestone_Slab.png",
							IMAGE_PATH + "Brick_Slab.png",
							IMAGE_PATH + "Stone_Bricks_Slab.png"],
						1,
						[null, null, null,
							null, null, null,
							new IngredientVO(IMAGE_PATH + "Stone.png"), new IngredientVO(IMAGE_PATH + "Stone.png"), new IngredientVO(IMAGE_PATH + "Stone.png")],
						[null, null, null,
							null, null, null,
							new IngredientVO(IMAGE_PATH + "Sandstone.png"), new IngredientVO(IMAGE_PATH + "Sandstone.png"), new IngredientVO(IMAGE_PATH + "Sandstone.png")],
						[null, null, null,
							null, null, null,
							new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png")],
						[null, null, null,
							null, null, null,
							new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png")],
						[null, null, null,
							null, null, null,
							new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), new IngredientVO(IMAGE_PATH + "Brick_(Block).png")],
						[null, null, null,
							null, null, null,
							new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), new IngredientVO(IMAGE_PATH + "Stone_Brick.png")]
						
						);
			addRecipe("Stairs",
						"Used for compact staircases.",
						"Wooden Planks, Cobblestone, Brick, Stone Brick, Nether Brick",
						[IMAGE_PATH + "Wooden_Stairs.png",
							IMAGE_PATH + "Cobblestone_Stairs.png",
							IMAGE_PATH + "Brick_Stairs.png",
							IMAGE_PATH + "Stone_Brick_Stairs.png",
							IMAGE_PATH + "Nether_Brick_Stairs.png"],
						4,
						[new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null, null,
							new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null,
							new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png")],
						[new IngredientVO(IMAGE_PATH + "Cobblestone.png"), null, null,
							new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), null,
							new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png")],
						[new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), null, null,
							new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), null,
							new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), new IngredientVO(IMAGE_PATH + "Brick_(Block).png"), new IngredientVO(IMAGE_PATH + "Brick_(Block).png")],
						[new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), null, null,
							new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), null,
							new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), new IngredientVO(IMAGE_PATH + "Stone_Brick.png"), new IngredientVO(IMAGE_PATH + "Stone_Brick.png")],
						[new IngredientVO(IMAGE_PATH + "Nether_Brick.png"), null, null,
							new IngredientVO(IMAGE_PATH + "Nether_Brick.png"), new IngredientVO(IMAGE_PATH + "Nether_Brick.png"), null,
							new IngredientVO(IMAGE_PATH + "Nether_Brick.png"), new IngredientVO(IMAGE_PATH + "Nether_Brick.png"), new IngredientVO(IMAGE_PATH + "Nether_Brick.png")]);
			
			addRecipe("Snow Block",
						"Used as a building material.",
						"Snowballs",
						IMAGE_PATH + "Snow_(Block).png",
						1,
						[null, null, null,
							new IngredientVO(IMAGE_PATH + "Snowball.png"), new IngredientVO(IMAGE_PATH + "Snowball.png"), null,
							new IngredientVO(IMAGE_PATH + "Snowball.png"), new IngredientVO(IMAGE_PATH + "Snowball.png"), null]);
			
			addRecipe("Clay Block",
					"Used to store Clay Balls, or as a building material.",
					"Clay",
					IMAGE_PATH + "Clay_(Block).png",
					1,
					[null, null, null,
						new IngredientVO(IMAGE_PATH + "Clay_(Item).png"), new IngredientVO(IMAGE_PATH + "Clay_(Item).png"), null,
						new IngredientVO(IMAGE_PATH + "Clay_(Item).png"), new IngredientVO(IMAGE_PATH + "Clay_(Item).png"), null]);
			
			addRecipe("Brick (Block)",
						"Used as a building material.",
						"Clay Bricks",
						IMAGE_PATH + "Brick_(Block).png",
						1,
						[null, null, null,
							new IngredientVO(IMAGE_PATH + "Clay_(Brick).png"), new IngredientVO(IMAGE_PATH + "Clay_(Brick).png"), null,
							new IngredientVO(IMAGE_PATH + "Clay_(Brick).png"), new IngredientVO(IMAGE_PATH + "Clay_(Brick).png"), null]);
			
			addRecipe("Stone Brick",
						"Used as a building material.",
						"Stone",
						IMAGE_PATH + "Stone_Brick.png",
						4,
						[null, null, null,
							new IngredientVO(IMAGE_PATH + "Stone.png"), new IngredientVO(IMAGE_PATH + "Stone.png"), null,
							new IngredientVO(IMAGE_PATH + "Stone.png"), new IngredientVO(IMAGE_PATH + "Stone.png"), null]);
			
			addRecipe("Bookshelf",
						"Used as decoration, or to give an Enchantment Table knowledge.",
						"Wooden Plank + Books",
						IMAGE_PATH + "Bookshelf.png",
						1,
						[new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"),
							new IngredientVO(IMAGE_PATH + "Book.png"), new IngredientVO(IMAGE_PATH + "Book.png"), new IngredientVO(IMAGE_PATH + "Book.png"), 
							new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png")]);
			addRecipe("Sandstone",
						"Used as a building material. Is not influenced by gravity like normal Sand.",
						"Sand",
						IMAGE_PATH + "Sandstone.png",
						1,
						[null, null, null,
							new IngredientVO(IMAGE_PATH + "Sand.png"), new IngredientVO(IMAGE_PATH + "Sand.png"), null,
							new IngredientVO(IMAGE_PATH + "Sand.png"), new IngredientVO(IMAGE_PATH + "Sand.png"), null]);
			
			
			addRecipe("Jack-O-Lantern",
						"Used to create brighter light than torches. Melts snow/ice and can be used underwater.",
						"Pumpkin + Torch",
						IMAGE_PATH + "Jack-O-Lantern.png",
						1,
						[null, null, null,
							null, new IngredientVO(IMAGE_PATH + "Pumpkin.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Torch.png"), null]);
			return true;
		}
		
	}
}