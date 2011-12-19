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
		
		//private static var classConstructed:Boolean = classConstruct();
		
		
		
		private static function getRecipe(title:String, description:String, ingredients:String, imageOrImages:*, values:*, ... grids):RecipeVO
		{
			var recipe:RecipeVO 				= new RecipeVO();
			recipe.title 						= title;
			recipe.description					= description;
			recipe.ingredients					= ingredients;
			if(imageOrImages is IngredientVO)
			{
				recipe.images					= [imageOrImages];
			}
			else
			{
				recipe.images 					= imageOrImages;
			}
			
			if(values is Array)
			{
				recipe.values 					= values;
			}
			else
			{
				recipe.values 					= [values];
			}
			
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
		
		private static function addRecipe(title:String, description:String, ingredients:String, imageOrImages:*, values:*, ... grids):void
		{
			var recipe:RecipeVO = getRecipe(title, description, ingredients, imageOrImages, values, grids);
			allRecipes.addItem(recipe);
		}
		
		private static const WOODEN_PLANK:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Plank.png");
		private static const STICK:IngredientVO = new IngredientVO(IMAGE_PATH + "Stick.png");
		private static const TORCH:IngredientVO = new IngredientVO(IMAGE_PATH + "Torch.png");
		private static const CRAFTING_TABLE:IngredientVO = new IngredientVO(IMAGE_PATH + "Crafting_Table.png");
		private static const COBBLESTONE:IngredientVO = new IngredientVO(IMAGE_PATH + "Cobblestone.png");
		private static const IRON_INGOT:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png");
		private static const GOLD_INGOT:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png");
		private static const DIAMOND_GEM:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png");
		private static const COAL:IngredientVO = new IngredientVO(IMAGE_PATH + "Coal_(Item).png");
		private static const REDSTONE_DUST:IngredientVO = new IngredientVO(IMAGE_PATH + "Redstone_(Dust).png");
		private static const PAPER:IngredientVO = new IngredientVO(IMAGE_PATH + "Paper.png");
		private static const COMPASS:IngredientVO = new IngredientVO(IMAGE_PATH + "Compass.png");
		private static const STRING:IngredientVO = new IngredientVO(IMAGE_PATH + "String.png");
		private static const FLINT:IngredientVO = new IngredientVO(IMAGE_PATH + "Flint.png");
		private static const FEATHER:IngredientVO = new IngredientVO(IMAGE_PATH + "Feather.png");
		private static const ARROW:IngredientVO = new IngredientVO(IMAGE_PATH + "Arrow.png");
		private static const LEATHER:IngredientVO = new IngredientVO(IMAGE_PATH + "Leather.png");
		private static const FIRE:IngredientVO = new IngredientVO(IMAGE_PATH + "Fire.png");
		private static const FURNACE:IngredientVO = new IngredientVO(IMAGE_PATH + "Furnace.png");
		private static const CHEST:IngredientVO = new IngredientVO(IMAGE_PATH + "Chest.png");
		private static const MINECART:IngredientVO = new IngredientVO(IMAGE_PATH + "Minecart.png");
		private static const STONE_PRESSURE_PLATE:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Pressure_Plate.png");
		private static const STONE:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone.png");
		private static const BOW:IngredientVO = new IngredientVO(IMAGE_PATH + "Bow.png");
		private static const REDSTONE_TORCH:IngredientVO = new IngredientVO(IMAGE_PATH + "Redstone_Torch.png");
		private static const PISTON:IngredientVO = new IngredientVO(IMAGE_PATH + "Piston.png");
		private static const SLIMEBALL:IngredientVO = new IngredientVO(IMAGE_PATH + "Slimeball.png");
		private static const BROWN_MUSHROOM:IngredientVO = new IngredientVO(IMAGE_PATH + "Brown_Mushroom.png");
		private static const RED_MUSHROOM:IngredientVO = new IngredientVO(IMAGE_PATH + "Red_Mushroom.png");
		private static const BOWL:IngredientVO = new IngredientVO(IMAGE_PATH + "Bowl.png");
		private static const WHEAT:IngredientVO = new IngredientVO(IMAGE_PATH + "Wheat.png");
		private static const BREAD:IngredientVO = new IngredientVO(IMAGE_PATH + "Bread.png");
		private static const SUGAR_CANE:IngredientVO = new IngredientVO(IMAGE_PATH + "Sugar_Cane.png");
		private static const SUGAR:IngredientVO = new IngredientVO(IMAGE_PATH + "Sugar.png");
		private static const CAKE:IngredientVO = new IngredientVO(IMAGE_PATH + "Cake.png");
		private static const MILK:IngredientVO = new IngredientVO(IMAGE_PATH + "Milk.png");
		private static const EGG:IngredientVO = new IngredientVO(IMAGE_PATH + "Egg.png");
		private static const COOKIE:IngredientVO = new IngredientVO(IMAGE_PATH + "Cookie.png");
		private static const COCOA_BEANS:IngredientVO = new IngredientVO(IMAGE_PATH + "Cocoa_Beans.png");
		private static const GOLDEN_APPLE:IngredientVO = new IngredientVO(IMAGE_PATH + "Golden_Apple.png");
		private static const GOLD_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Block.png");
		private static const MELON_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Melon_Block.png");
		private static const MELON_SLICE:IngredientVO = new IngredientVO(IMAGE_PATH + "Melon_Slice.png");
		private static const MELON_SEEDS:IngredientVO = new IngredientVO(IMAGE_PATH + "Melon_Seeds.png");
		private static const PUMPKIN_SEEDS:IngredientVO = new IngredientVO(IMAGE_PATH + "Pumpkin_Seeds.png");
		private static const PUMPKIN:IngredientVO = new IngredientVO(IMAGE_PATH + "Pumpkin.png");
		private static const LAPIS_LAZULI_GEM:IngredientVO = new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Gem).png");
		private static const LAPIS_LAZULI_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Lapis_Lazuli_(Block).png");
		private static const IRON_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_(Block).png");
		private static const DIAMOND_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_(Block).png");
		private static const PAINTING:IngredientVO = new IngredientVO(IMAGE_PATH + "Painting.png");
		private static const SIGN:IngredientVO = new IngredientVO(IMAGE_PATH + "Sign.png");
		private static const GLASS:IngredientVO = new IngredientVO(IMAGE_PATH + "Glass.png");
		private static const GLASS_PANE:IngredientVO = new IngredientVO(IMAGE_PATH + "Glass_Pane.png");
		private static const LADDERS:IngredientVO = new IngredientVO(IMAGE_PATH + "Ladders.png");
		private static const IRON_BARS:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Bars.png");
		private static const FENCES:IngredientVO = new IngredientVO(IMAGE_PATH + "Fences.png");
		private static const BOOK:IngredientVO = new IngredientVO(IMAGE_PATH + "Book.png");
		private static const NETHER_BRICK:IngredientVO = new IngredientVO(IMAGE_PATH + "Nether_Brick.png");
		private static const NETHER_BRICK_FENCE:IngredientVO = new IngredientVO(IMAGE_PATH + "Nether_Brick_Fence.png");
		private static const FENCE_GATE:IngredientVO = new IngredientVO(IMAGE_PATH + "Fence_Gate.png");
		private static const WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "White_Wool.png");
		private static const BED:IngredientVO = new IngredientVO(IMAGE_PATH + "Bed.png");
		private static const GOLD_NUGGET:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Nugget.png");
		private static const ENDER_PEARL:IngredientVO = new IngredientVO(IMAGE_PATH + "Ender_Pearl.png");
		private static const BLAZE_POWDER:IngredientVO = new IngredientVO(IMAGE_PATH + "Blaze_Powder.png");
		private static const EYE_OF_ENDER:IngredientVO = new IngredientVO(IMAGE_PATH + "Eye_of_Ender.png");
		private static const BONE_MEAL:IngredientVO = new IngredientVO(IMAGE_PATH + "Bone_Meal.png");
		private static const BONE:IngredientVO = new IngredientVO(IMAGE_PATH + "Bone.png");
		private static const LIGHT_GRAY_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Light_Gray_Dye.png");
		private static const INK_SAC:IngredientVO = new IngredientVO(IMAGE_PATH + "Ink_Sac.png");
		private static const GRAY_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Gray_Dye.png");
		private static const ROSE:IngredientVO = new IngredientVO(IMAGE_PATH + "Rose.png");
		private static const ROSE_RED:IngredientVO = new IngredientVO(IMAGE_PATH + "Rose_Red.png");
		
		
		public static function initializeRecipes():Boolean
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
			
			addRecipe("Axes",
					"Used to chop wood-related blocks faster than by hand.",
					"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
					[IMAGE_PATH + "Wooden_Axe.png",
						IMAGE_PATH + "Stone_Axe.png",
						IMAGE_PATH + "Iron_Axe.png",
						IMAGE_PATH + "Gold_Axe.png",
						IMAGE_PATH + "Diamond_Axe.png"],
					1,
					[new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), null,
						new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Stick.png"), null,
						null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
					[new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), null,
						new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Stick.png"), null,
						null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
					[new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), null,
						new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Stick.png"), null,
						null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
					[new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), null,
						new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Stick.png"), null,
						null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
					[new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), null,
						new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Stick.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null]);
			
			addRecipe("Pickaxes",
						"Required to mine stone-related blocks and ore.",
						"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[IMAGE_PATH + "Wooden_Pickaxe.png",
							IMAGE_PATH + "Stone_Pickaxe.png",
							IMAGE_PATH + "Iron_Pickaxe.png",
							IMAGE_PATH + "Gold_Pickaxe.png",
							IMAGE_PATH + "Diamond_Pickaxe.png"],
						1,
						[new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"), new IngredientVO(IMAGE_PATH + "Wooden_Plank.png"),
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
						[new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"), new IngredientVO(IMAGE_PATH + "Cobblestone.png"),
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
						[new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Iron_(Ingot).png"),
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
						[new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"), new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png"),
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null],
						[new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"), new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png"),
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null,
							null, new IngredientVO(IMAGE_PATH + "Stick.png"), null]);
			
			addRecipe("Shovels",
						"Used to dig dirt, grass, sand, gravel and snow faster than by hand. Shovels are required to dig snowballs.",
						"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[IMAGE_PATH + "Wooden_Shovel.png",
							IMAGE_PATH + "Stone_Shovel.png",
							IMAGE_PATH + "Iron_Shovel.png",
							IMAGE_PATH + "Gold_Shovel.png",
							IMAGE_PATH + "Diamond_Shovel.png"],
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							null, STICK, null,
							null, STICK, null],
						[COBBLESTONE, COBBLESTONE, COBBLESTONE,
							null, STICK, null,
							null, STICK, null],
						[IRON_INGOT, IRON_INGOT, IRON_INGOT,
							null, STICK, null,
							null, STICK, null],
						[GOLD_INGOT, GOLD_INGOT, GOLD_INGOT,
							null, STICK, null,
							null, STICK, null],
						[DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM,
							null, STICK, null,
							null, STICK, null]);
			
			addRecipe("Hoes",
						"Used to till dirt and grass blocks to prepare for crops.",
						"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[IMAGE_PATH + "Wooden_Hoe.png",
							IMAGE_PATH + "Stone_Hoe.png",
							IMAGE_PATH + "Iron_Hoe.png",
							IMAGE_PATH + "Gold_Hoe.png",
							IMAGE_PATH + "Diamond_Hoe.png"],
						1,
						[WOODEN_PLANK, WOODEN_PLANK, null,
							null, STICK, null,
							null, STICK, null],
						[COBBLESTONE, COBBLESTONE, null,
							null, STICK, null,
							null, STICK, null],
						[IRON_INGOT, IRON_INGOT, null,
							null, STICK, null,
							null, STICK, null],
						[GOLD_INGOT, GOLD_INGOT, null,
							null, STICK, null,
							null, STICK, null],
						[DIAMOND_GEM, DIAMOND_GEM, null,
							null, STICK, null,
							null, STICK, null]);
			
			addRecipe("Flint and Steel",
						"Used to create fire.",
						"Iron Ingot + Flint",
						IMAGE_PATH + "Flint_and_Steel.png",
						1,
						[null, null, null,
							IRON_INGOT, null, null,
							null, COAL, null]);
			
			addRecipe("Bucket",
						"Used to hold and transport water, lava and milk.",
						"Iron Ingots",
						IMAGE_PATH + "Bucket.png",
						1,
						[null, null, null,
							IRON_INGOT, null, IRON_INGOT,
							null, IRON_INGOT, null]);
			
			addRecipe("Compass",
						"Points to the player's spawn point.",
						"Iron Ingots + Redstone Dust",
						IMAGE_PATH + "Compass.png",
						1,
						[null, IRON_INGOT, null,
						IRON_INGOT, REDSTONE_DUST, IRON_INGOT,
						null, IRON_INGOT, null]);
			
			addRecipe("Maps",
						"Will create an image of an area explored while held. This can be used for path-finding.",
						"Paper + Compass",
						IMAGE_PATH + "Map_(Item).png",
						1,
						[PAPER, PAPER, PAPER,
							PAPER, COMPASS, PAPER,
							PAPER, PAPER, PAPER]);
			
			addRecipe("Clock",
						"Displays positions of the Sun and Moon.",
						"Gold Ingots + Redstone Dust",
						IMAGE_PATH + "Clock.png",
						1,
						[null, GOLD_INGOT, null,
							GOLD_INGOT, REDSTONE_DUST, GOLD_INGOT,
							null, GOLD_INGOT, null]);
			
			addRecipe("Fishing Rod",
						"Used to catch fish. Can also be used to pull mobs and other entities.",
						"Sticks + String",
						IMAGE_PATH + "Fishing_Rod.png",
						1,
						[null, null, STICK,
							null, STICK, STRING,
							STICK, null, STRING]);
			addRecipe("Shears",
						"Used to collect leaves, tall grass, vines and wool from Sheep. Also breaks Wool faster than by hand.",
						"Iron Ingots",
						IMAGE_PATH + "Shears.png",
						1,
						[null, null, null,
							null, IRON_INGOT, null,
							IRON_INGOT, null, null]);
			
			addRecipe("Swords",
						"Deals mobs more damage than by hand.",
						"Stick + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[IMAGE_PATH + "Wooden_Sword.png",
							IMAGE_PATH + "Stone_Sword.png",
							IMAGE_PATH + "Iron_Sword.png",
							IMAGE_PATH + "Gold_Sword.png",
							IMAGE_PATH + "Diamond_Sword.png"],
						1,
						[null, WOODEN_PLANK, null,
							null, WOODEN_PLANK, null,
							null, STICK, null],
						[null, COBBLESTONE, null,
							null, COBBLESTONE, null,
							null, STICK, null],
						[null, IRON_INGOT, null,
							null, IRON_INGOT, null,
							null, STICK, null],
						[null, GOLD_INGOT, null,
							null, GOLD_INGOT, null,
							null, STICK, null],
						[null, DIAMOND_GEM, null,
							null, DIAMOND_GEM, null,
							null, STICK, null]);
			
			addRecipe("Bows",
						"Allows for ranged attacks by using arrows.",
						"Sticks + String",
						IMAGE_PATH + "Bow.png",
						1,
						[null, STICK, STRING,
						STICK, null, STRING,
						null, STICK, STRING]);
			
			addRecipe("Arrows",
						"Used as ammunition for bows.",
						"Flint + Stick + Feather",
						IMAGE_PATH + "Arrow.png",
						1,
						[null, FLINT, null,
							null, STICK, null,
							null, FEATHER, null]);
			
			addRecipe("Helmets",
						"",
						"Leather or Gold Ingots or Iron Ingots or Diamond Gems or Fire*",
						[IMAGE_PATH + "Leather_Cap.png",
							IMAGE_PATH + "Gold_Helmet.png",
							IMAGE_PATH + "Iron_Helmet.png",
							IMAGE_PATH + "Diamond_Helmet.png",
							IMAGE_PATH + "Chain_Helmet.png"],
						1,
						[null, null, null,
							LEATHER, LEATHER, LEATHER,
							LEATHER, null, LEATHER],
						[null, null, null,
							GOLD_INGOT, GOLD_INGOT, GOLD_INGOT,
							GOLD_INGOT, null, GOLD_INGOT],
						[null, null, null,
							IRON_INGOT, IRON_INGOT, IRON_INGOT,
							IRON_INGOT, null, IRON_INGOT],
						[null, null, null,
							DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM,
							DIAMOND_GEM, null, DIAMOND_GEM],
						[null, null, null,
							FIRE, FIRE, FIRE,
							FIRE, null, FIRE]);
			
			addRecipe("Chestplates",
						"",
						"Leather or Gold Ingots or Iron Ingots or Diamond Gems or Fire*",
						[IMAGE_PATH + "Leather_Tunic.png",
							IMAGE_PATH + "Gold_Chestplate.png",
							IMAGE_PATH + "Iron_Chestplate.png",
							IMAGE_PATH + "Diamond_Chestplate.png",
							IMAGE_PATH + "Chain_Chestplate.png"],
						1,
						[LEATHER, null, LEATHER,
							LEATHER, LEATHER, LEATHER,
							LEATHER, LEATHER, LEATHER],
						[GOLD_INGOT, null, GOLD_INGOT,
							GOLD_INGOT, GOLD_INGOT, GOLD_INGOT, 
							GOLD_INGOT, GOLD_INGOT, GOLD_INGOT],
						[IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT],
						[DIAMOND_GEM, null, DIAMOND_GEM,
							DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM,
							DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM],
						[FIRE, null, FIRE,
							FIRE, FIRE, FIRE,
							FIRE, FIRE, FIRE]);
			
			addRecipe("Leggings",
						"",
						"Leather or Gold Ingots or Iron Ingots or Diamond Gems or Fire*",
						[IMAGE_PATH + "Leather_Pants.png",
							IMAGE_PATH + "Gold_Leggings.png",
							IMAGE_PATH + "Iron_Leggings.png",
							IMAGE_PATH + "Diamond_Leggings.png",
							IMAGE_PATH + "Chain_Leggings.png"],
						1,
						[LEATHER, LEATHER, LEATHER,
							LEATHER, null, LEATHER,
							LEATHER, null, LEATHER],
						[GOLD_INGOT, GOLD_INGOT, GOLD_INGOT,
							GOLD_INGOT, null, GOLD_INGOT,
							GOLD_INGOT, null, GOLD_INGOT],
						[IRON_INGOT, IRON_INGOT, IRON_INGOT,
							IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, null, IRON_INGOT],
						[DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM,
							DIAMOND_GEM, null, DIAMOND_GEM, 
							DIAMOND_GEM, null, DIAMOND_GEM],
						[FIRE, FIRE, FIRE,
							FIRE, null, FIRE,
							FIRE, null, FIRE]);
			
			addRecipe("Boots",
						"",
						"Leather or Gold Ingots or Iron Ingots or Diamond Gems or Fire*",
						[IMAGE_PATH + "Leather_Boots.png",
							IMAGE_PATH + "Gold_Boots.png",
							IMAGE_PATH + "Iron_Boots.png",
							IMAGE_PATH + "Diamond_Boots.png",
							IMAGE_PATH + "Chain_Boots.png"],
						1,
						[null, null, null,
							LEATHER, null, LEATHER,
							LEATHER, null, LEATHER],
						[null, null, null,
							GOLD_INGOT, null, GOLD_INGOT,
							GOLD_INGOT, null, GOLD_INGOT],
						[null, null, null,
							IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, null, IRON_INGOT],
						[null, null, null,
							DIAMOND_GEM, null, DIAMOND_GEM,
							DIAMOND_GEM, null, DIAMOND_GEM],
						[null, null, null,
							FIRE, null, FIRE,
							FIRE, null, FIRE]);
			
			addRecipe("Minecart",
						"Used to transport the player or a mob along rails.",
						"Iron Ingots",
						IMAGE_PATH + "Minecart.png",
						1,
						[null, null, null,
							IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT]);
			
			addRecipe("Powered Minecart",
						"Used to push other Minecarts along rails using fuel.",
						"Furnace + Minecart",
						IMAGE_PATH + "Powered_Minecart.png",
						1,
						[null, null, null,
							null, FURNACE, null,
							null, MINECART, null]);
			
			addRecipe("Storage Minecart",
						"Used to transport goods along rails.",
						"Chest + Minecart",
						IMAGE_PATH + "Storage_Minecart.png",
						1,
						[null, null, null,
							null, CHEST, null,
							null, MINECART, null]);
			
			addRecipe("Rails",
						"Used to guide minecarts.",
						"Stick + Iron Ingots",
						IMAGE_PATH + "Rail.png",
						4,
						[IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, STICK, IRON_INGOT,
							IRON_INGOT, STICK, IRON_INGOT]);
			
			addRecipe("Powered Rail",
						"Used to speed up or brake minecarts.",
						"Stick + Gold Ingots + Redstone Dust",
						IMAGE_PATH + "Powered_Rail.png",
						4,
						[GOLD_INGOT, null, GOLD_INGOT,
							GOLD_INGOT, STICK, GOLD_INGOT, 
							GOLD_INGOT, REDSTONE_DUST, GOLD_INGOT]);
			
			addRecipe("Detector Rail",
						"Functions like a Pressure Plate (sends a Redstone signal when powered) but can only be activated by a minecart.",
						"Stone Pressure Plate + Iron Ingots + Redstone Dust",
						IMAGE_PATH + "Detector_Rail.png",
						4,
						[IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, STONE_PRESSURE_PLATE, IRON_INGOT,
							IRON_INGOT, REDSTONE_DUST, IRON_INGOT]);
			
			
			addRecipe("Boat",
						"Used to travel in water quicker than swimming.",
						"Wooden Planks",
						IMAGE_PATH + "Boat.png",
						1,
						[null, null, null,
							WOODEN_PLANK, null, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Doors",
						"Wooden doors are activated by clicking or with redstone. Iron doors are similar but can only be opened by redstone, buttons, or switches.",
					"Wooden Planks or Iron Ingots",
					[IMAGE_PATH + "Wooden_Door.png",
						IMAGE_PATH + "Iron_Door.png"],
					1,
					[WOODEN_PLANK, WOODEN_PLANK, null,
						WOODEN_PLANK, WOODEN_PLANK, null,
						WOODEN_PLANK, WOODEN_PLANK, null],
					[IRON_INGOT, IRON_INGOT, null,
						IRON_INGOT, IRON_INGOT, null,
						IRON_INGOT, IRON_INGOT, null]);
			
			addRecipe("Trapdoors",
						"Trapdoors are activated by clicking, and function as normal doors, but are a 1x1 one block and lay flat on the ground. Can also be activated with redstone.",
						"Wooden Planks",
						IMAGE_PATH + "Trapdoor.png",
						2,
						[null, null, null, 
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Pressure Plates",
						"Used to send an electrical charge when stepped on by a player or a mob. Wooden Pressure Plates can also be activated by dropping something on them.",
						"Wooden Planks or Stone",
						IMAGE_PATH + "Pressure_Plate.png",
						1,
						[null, null, null,
							null, null, null,
							WOODEN_PLANK, WOODEN_PLANK, null],
						[null, null, null,
							null, null, null,
							STONE, STONE, null]);
						
			addRecipe("Stone Button",
						"Used to send an electrical charge by being pressed. Stays activated for approximately a second before shutting off again.",
						"Stone",
						IMAGE_PATH + "Stone_Button.png",
						1,
						[null, null, null,
							null, STONE, null,
							null, STONE, null]);
			
			addRecipe("Redstone Torch",
						"Constantly sends an electrical charge, or can be used as a receiver/transmitter when connected the side of a block. Can also be used for low-level lighting.",
						"Redstone Dust + Stick",
						IMAGE_PATH + "Redstone_Torch.png",
						1,
						[null, null, null,
							null, REDSTONE_DUST, null,
							null, STICK, null]);
			
			addRecipe("Lever",
						"Used to send an electrical charge by being turned on or off. Stays in on or off state until clicked again.",
						"Cobblestone + Stick",
						IMAGE_PATH + "Lever.png",
						1,
						[null, null, null,
							null, STICK, null,
							null, COBBLESTONE, null]);
			
			
			addRecipe("Note Block",
						"Plays a note when triggered. Right click it to change the pitch of the note. Placing this on top of different blocks changes its type of instrument.",
						"Wooden Planks + Redstone Dust",
						IMAGE_PATH + "Note_Block.png",
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, REDSTONE_DUST, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Jukebox",
						"Plays Music Discs.",
						"Wooden Planks + Diamond Gem",
						IMAGE_PATH + "Jukebox.png",
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, DIAMOND_GEM, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Dispenser",
						"Used to hold and shoot out items in a random order when given a Redstone charge.",
						"Cobblestone + Redstone Dust + Bow",
						IMAGE_PATH + "Dispenser.png",
						1,
						[COBBLESTONE, COBBLESTONE, COBBLESTONE,
							COBBLESTONE, BOW, COBBLESTONE,
							COBBLESTONE, REDSTONE_DUST, COBBLESTONE]);
			
			addRecipe("Redstone Repeater",
						"Used in redstone circuits as repeater, a delayer, and/or a diode.",
						"Stone + Redstone Dust + Redstone Torch",
						IMAGE_PATH + "Redstone_Repeater.png",
						1,
						[null, null, null,
							REDSTONE_TORCH, REDSTONE_DUST, REDSTONE_TORCH,
							STONE, STONE, STONE]);
			
			addRecipe("Piston",
						"Pushes blocks and entities.",
						"Cobblestone + Redstone Dust + Wooden Planks + Iron Ingot",
						IMAGE_PATH + "Piston.png",
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							COBBLESTONE, IRON_INGOT, COBBLESTONE,
							COBBLESTONE, REDSTONE_DUST, COBBLESTONE]);
			
			addRecipe("Sticky Piston",
						"Pushes blocks and entities, and will pull back the block next to the end when retracted.",
						"Piston + Slimeball",
						IMAGE_PATH + "Sticky_Piston.png",
						1,
						[null, null, null,
							null, SLIMEBALL, null,
							null, PISTON, null]);
			
			addRecipe("Bowls",
						"Used to hold mushroom stew. The player keeps the bowl when they eat the stew. Also used to milk a Mooshroom.",
						"Wooden Planks",
						IMAGE_PATH + "Bowl.png",
						4,
						[null, null, null,
							WOODEN_PLANK, null, WOODEN_PLANK,
							null, WOODEN_PLANK, null]);
			
			addRecipe("Mushroom Stew",
						"Restores 4. Bowl is re-usable.",
						IMAGE_PATH + "Stew.png",
						1,
						[null, BROWN_MUSHROOM, null,
							null, RED_MUSHROOM, null,
							null, BOWL, null],
						[null, RED_MUSHROOM, null,
							null, BROWN_MUSHROOM, null,
							null, BOWL, null]);
			
			addRecipe("Bread",
						"Restores 3.",
						"Wheat",
						IMAGE_PATH + "Bread.png",
						1,
						[null, null, null,
							null, null, null,
							WHEAT, WHEAT, WHEAT]);
			
			addRecipe("Sugar",
						"Is used in the cake recipe.",
						"Sugar Cane",
						SUGAR,
						1,
						[null, null, null,
							null, null, null,
							null, SUGAR_CANE, null]);
			
			addRecipe("Cake",
						"Restores 2 on every use. Can be used 6 times, for a total of 9 restored. The buckets are not lost in the process.",
						"Wheat + Sugar + Egg + Milk",
						CAKE,
						1,
						[MILK, MILK, MILK,
							SUGAR, EGG, SUGAR,
							WHEAT, WHEAT, WHEAT]);
			
			addRecipe("Cookie",
						"Restores 1/2 per Cookie.",
						"Wheat + Cocoa Beans",
						COOKIE,
						1,
						[null, null, null,
							null, null, null,
							WHEAT, COCOA_BEANS, WHEAT]);
						
			addRecipe("Golden Apple",
						"Restores 5, and also heals hearts automatically. It is the only food that you can eat with a full Hunger bar.",
						"Gold Blocks + Red Apple",
						GOLDEN_APPLE,
						1,
						[GOLD_BLOCK, GOLD_BLOCK, GOLD_BLOCK,
							GOLD_BLOCK, APPLE, GOLD_BLOCK,
							GOLD_BLOCK, GOLD_BLOCK, GOLD_BLOCK]);
			
			addRecipe("Melon Block",
						"Compact storage of melon slices. Each slice restores . However, breaking one melon block only gives 3-7 melon slices.",
						"Melon Slice",
						MELON_BLOCK,
						1,
						[MELON_SLICE, MELON_SLICE, MELON_SLICE,
							MELON_SLICE, MELON_SLICE, MELON_SLICE,
							MELON_SLICE, MELON_SLICE, MELON_SLICE]);
			
			addRecipe("Melon Seeds",
						"Plantable on farmland. Will produce one Melon Block each harvest.",
						"Melon Slice",
						MELON_SEEDS,
						1,
						[null, null, null,
							null, null, null,
							null, MELON_SLICE, null]);
			
			addRecipe("Pumpkin Seeds",
						"Used in farming to obtain more Pumpkins.",
						"Pumpkin",
						PUMPKIN_SEEDS,
						1,
						[null, null, null,
							null, PUMPKIN, null,
							null, null, null]);
			
			addRecipe("Minerals",
						"Used to reclaim ingots/gems/dyes from blocks.",
						"Iron Block or Gold Block or Diamond Block or Lapis Lazuli Block",
						[IRON_INGOT,
							GOLD_INGOT,
							DIAMOND_GEM,
							LAPIS_LAZULI_GEM],
						1,
						[null, null, null,
							null, null, null,
							null, IRON_BLOCK, null],
						[null, null, null,
							null, null, null,
							null, GOLD_BLOCK, null],
						[null, null, null,
							null, null, null,
							null, DIAMOND_BLOCK, null],
						[null, null, null,
							null, null, null,
							null, LAPIS_LAZULI_BLOCK, null]);
			
			addRecipe("Painting",
						"Used as decoration.",
						"Sticks + Wool",
						PAINTING,
						1,
						[STICK, STICK, STICK,
							STICK, WOOL, STICK,
							STICK, STICK, STICK]);
			
			addRecipe("Sign",
						"Shows text entered by the player.",
						"Wooden Planks + Stick",
						SIGN,
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							null, STICK, null]);
			
			addRecipe("Ladders",
						"Used to climb vertically.",
						"Sticks",
						LADDERS,
						4,
						[STICK, null, STICK,
							STICK, STICK, STICK,
							STICK, null, STICK]);
			
			addRecipe("Glass Pane",
						"Have similar placement behavior as Redstone and Fences and use the same texture as Glass. They cannot currently be placed horizontally. As of the 1.9 pre-release 2, they drop nothing when broken, just like normal glass blocks.",
						"Glass",
						GLASS_PANE,
						4,
						[null, null, null,
							GLASS, GLASS, GLASS,
							GLASS, GLASS, GLASS]);
			
			addRecipe("Iron Bars",
						"Have similar placement behavior as Fences, however their height is counted as only 1 block.",
						"Iron (Ingot)",
						IRON_BARS,
						4,
						[null, null, null,
							IRON_INGOT, IRON_INGOT, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT]);
			
			addRecipe("Paper",
						"Used to create books and maps.",
						"Sugar Cane",
						PAPER,
						1,
						[null, null, null,
							null, null, null,
							SUGAR_CANE, SUGAR_CANE, SUGAR_CANE]);
			
			addRecipe("Book",
						"Used to create a bookshelf or an enchantment table.",
						"Paper",
						BOOK,
						1,
						[null, PAPER, null,
							null, PAPER, null,
							null, PAPER, null]);
			
			addRecipe("Fences",
						"Used as a barrier that cannot be jumped over. Counts as 1.5 blocks high for mobs and players, but 1 block high for other blocks.",
						"Sticks",
						FENCES,
						4,
						[null, null, null,
							STICK, STICK, STICK,
							STICK, STICK, STICK]);
			
			addRecipe("Nether Brick Fence",
						"Like Fences, but the version created from Nether Bricks. Also found naturally in Nether Fortresses.",
						"Nether Brick",
						NETHER_BRICK_FENCE,
						4,
						[null, null, null,
							NETHER_BRICK, NETHER_BRICK, NETHER_BRICK,
							NETHER_BRICK, NETHER_BRICK, NETHER_BRICK]);
			
			addRecipe("Fence Gate",
						"Used as a gate that can be opened like a door. However Fence gates are only opened by right-clicking (unlike doors and trapdoors, which can be opened by left- or right-clicking) and are not affected by Redstone. Fence gates also open differently, depending on which way you are facing it. But it will always open away from you.",
						"Sticks + Wooden Planks",
						FENCE_GATE,
						1,
						[null, null, null,
							STICK, WOODEN_PLANK, STICK,
							STICK, WOODEN_PLANK, STICK]);
			
			addRecipe("Beds",
						"Used to forward time from any time at night to morning if all the players in the world are in bed, and changes the spawn point of the player. (The colors of the bed are always the same, regardless of the colors of wool used in the crafting.)",
						"Sticks + Wooden Planks",
						BED,
						1,
						[null, null, null,
							WOOL, WOOL, WOOL,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Gold Ingot",
						"Used in Tools, Armor, Clock and Powered Rail.",
						"Gold Nugget",
						GOLD_INGOT,
						1,
						[GOLD_NUGGET, GOLD_NUGGET, GOLD_NUGGET,
							GOLD_NUGGET, GOLD_NUGGET, GOLD_NUGGET,
							GOLD_NUGGET, GOLD_NUGGET, GOLD_NUGGET]);
			
			addRecipe("Eye of Ender",
						"Used to locate Strongholds, and repair an End Portal Frame.",
						"Ender Pearl + Blaze Powder",
						EYE_OF_ENDER,
						1,
						[null, null, null,
							null, ENDER_PEARL, null,
							null, BLAZE_POWDER, null]);
			
			addRecipe("Bone Meal",
						"Used to instantly grow crops, trees, tall grass, huge mushrooms and flowers, and can be used in dye recipes.",
						"Bone",
						BONE_MEAL,
						4,
						[null, null, null,
							null, BONE, null,
							null, BONE, null]);
			
			addRecipe("Light Gray Dye",
						"Used as a dye to create light gray wool. (Note: light gray dye can also be made by combining gray dye with bone meal, thus letting you make 4 light gray dyes from every ink sac instead of 3.)",
						"Ink Sac + Bone Meals or Gray Deye + Bone Meal",
						LIGHT_GRAY_DYE,
						[3, 4],
						[null, null, null,
							null, null, null,
							INK_SAC, BONE_MEAL, BONE_MEAL],
						[null, null, null,
							null, null, null,
							LIGHT_GRAY_DYE, null, BONE_MEAL]);
			
			addRecipe("Gray Dye",
						"Used as a dye to create gray wool.",
						"Ink Sac + Bone Meal",
						GRAY_DYE,
						4,
						[null, null, null,
							null, null, null,
							INK_SAC, null, BONE_MEAL]);
			
			addRecipe("Rose Red",
						"Used as a dye to create red wool.",
						"Rose",
						ROSE_RED,
						4,
						[null, null, null,
							null, null, null,
							null, ROSE, null]);
			
			addRecipe("Orange Dye",
						"Used as a dye to create orange wool.",
						
			
						
			
			return true;
		}
		
	}
}