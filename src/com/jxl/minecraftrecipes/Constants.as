package com.jxl.minecraftrecipes
{
	import com.jxl.minecraftrecipes.vo.IngredientVO;
	import com.jxl.minecraftrecipes.vo.RecipeVO;
	
	import mx.collections.ArrayCollection;

	public class Constants
	{
		
		public static var allRecipes:ArrayCollection;
		public static const IMAGE_PATH:String = "/assets/images/";
		
		private static var classConstructed:Boolean = classConstruct();
		
		
		private static function getRecipe(title:String, description:String, ingredients:String, image:String, value:uint, grid:Array):RecipeVO
		{
			var recipe:RecipeVO 				= new RecipeVO();
			recipe.title 						= title;
			recipe.description					= description;
			recipe.ingredients					= ingredients;
			recipe.image						= image;
			recipe.value 						= value;
			recipe.grid							= getIngredientGrid(grid);
			return recipe;
		}
		
		private static function getIngredientGrid(ingredientsArray:Array):Array
		{
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
		
		private static function addRecipe(title:String, description:String, ingredients:String, image:String, value:uint, grid:Array):void
		{
			var recipe:RecipeVO = getRecipe(title, description, ingredients, image, value, grid);
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
			
			return true;
		}
		
		
		/*
		
		
		chestRecipe = 
		{
			title = "Chest",
				recipe =
				{
					image="Chest.png", 
						value=1,
						{{image="Wooden_Plank.png"}, {image="Wooden_Plank.png"}, {image="Wooden_Plank.png"}},
						{{image="Wooden_Plank.png"}, {}, 							{image="Wooden_Plank.png"}},
						{{image="Wooden_Plank.png"}, {image="Wooden_Plank.png"}, {image="Wooden_Plank.png"}}
				},
				description = "Stores blocks and items inside. Place two chests side by side to create a larger chest with double the capacity.",
				ingredients = "Wooden Plank"
		},
		
		oreRecipe = 
		{
			title = "Ore Blocks",
				recipes =
				{
					{
						image="Lapis_Lazuli_(Block).png", 
							value=1,
							{{image="Lapis_Lazuli_(Dye).png"}, {image="Lapis_Lazuli_(Dye)"}, {image="Lapis_Lazuli_(Dye).png"}},
							{{image="Lapis_Lazuli_(Dye).png"}, {}, 								{image="Lapis_Lazuli_(Dye).png"}},
							{{image="Lapis_Lazuli_(Dye).png"}, {image="Lapis_Lazuli_(Dye).png"}, {image="Lapis_Lazuli_(Dye).png"}}
					},
					
					{
						image="Gold_(Block).png", 
							value=1,
							{{image="Gold_(Ingot).png"}, {image="Gold_(Ingot).png"}, {image="Gold_(Ingot).png"}},
							{{image="Gold_(Ingot).png"}, {}, 						{image="Gold_(Ingot).png"}},
							{{image="Gold_(Ingot).png"}, {image="Gold_(Ingot).png"}, {image="Gold_(Ingot).png"}}
					},
				},
				description = "Stores blocks and items inside. Place two chests side by side to create a larger chest with double the capacity.",
				ingredients = "Wooden Plank"
		},
		*/
	}
}