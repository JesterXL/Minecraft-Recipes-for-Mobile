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
		private static var initialized:Boolean = false;
		
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
		private static const BUCKET:IngredientVO = new IngredientVO(IMAGE_PATH + "Bucket.png");
		private static const GOLD_INGOT:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_(Ingot).png");
		private static const DIAMOND_GEM:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_(Gem).png");
		private static const COAL:IngredientVO = new IngredientVO(IMAGE_PATH + "Coal_(Item).png");
		private static const REDSTONE_DUST:IngredientVO = new IngredientVO(IMAGE_PATH + "Redstone_(Dust).png");
		private static const PAPER:IngredientVO = new IngredientVO(IMAGE_PATH + "Paper.png");
		private static const COMPASS:IngredientVO = new IngredientVO(IMAGE_PATH + "Compass.png");
		private static const STRING:IngredientVO = new IngredientVO(IMAGE_PATH + "String.png");
		private static const SAND:IngredientVO = new IngredientVO(IMAGE_PATH + "Sand");
		private static const GUNPOWDER:IngredientVO = new IngredientVO(IMAGE_PATH + "Gunpowder.png");
		private static const FLINT:IngredientVO = new IngredientVO(IMAGE_PATH + "Flint.png");
		private static const FEATHER:IngredientVO = new IngredientVO(IMAGE_PATH + "Feather.png");
		private static const ARROW:IngredientVO = new IngredientVO(IMAGE_PATH + "Arrow.png");
		private static const LEATHER:IngredientVO = new IngredientVO(IMAGE_PATH + "Leather.png");
		private static const FIRE:IngredientVO = new IngredientVO(IMAGE_PATH + "Fire.png");
		private static const FURNACE:IngredientVO = new IngredientVO(IMAGE_PATH + "Furnace.png");
		private static const CHEST:IngredientVO = new IngredientVO(IMAGE_PATH + "Chest.png");
		private static const MINECART:IngredientVO = new IngredientVO(IMAGE_PATH + "Minecart.png");
		private static const STONE_PRESSURE_PLATE:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Pressure_Plate.png");
		private static const STONE:IngredientVO = STONE;
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
		private static const BOOK:IngredientVO = BOOK;
		private static const NETHER_BRICK:IngredientVO = NETHER_BRICK;
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
		private static const DANDELION_YELLOW:IngredientVO = new IngredientVO(IMAGE_PATH + "Dandelion_Yellow.png");
		private static const ORANGE_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Orange_Dye.png");
		private static const DANDELION:IngredientVO = new IngredientVO(IMAGE_PATH + "Dandelion.png");
		private static const LIME_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Lime_Dye.png");
		private static const CACTUS_GREEN:IngredientVO = new IngredientVO(IMAGE_PATH + "Cactus_Green.png");
		private static const LIGHT_BLUE_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Light_Blue_Dye.png");
		private static const CYAN_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Cyan_Dye.png");
		private static const PURPLE_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Purple_Dye.png");
		private static const MAGENTA_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Magenta_Dye.png");
		private static const PINK_DYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Pink_Dye.png");
		private static const LIGHT_GRAY_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Light_Gray_Wool.png");
		private static const GRAY_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Gray_Wool.png");
		private static const BLACK_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Black_Wool.png");
		private static const RED_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Red_Wool.png");
		private static const ORANGE_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Orange_Wool.png");
		private static const YELLOW_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Yellow_Wool.png");
		private static const LIME_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Lime_Wool.png");
		private static const GREEN_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Green_Wool.png");
		private static const LIGHT_BLUE_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Light_Blue_Wool.png");
		private static const CYAN_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Cyan_Wool.png");
		private static const BLUE_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Blue_Wool.png");
		private static const PURPLE_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Purple_Wool.png");
		private static const MAGENTA_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Magenta_Wool.png");
		private static const PINK_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Pink_Wool.png");
		private static const BROWN_WOOL:IngredientVO = new IngredientVO(IMAGE_PATH + "Brown_Wool.png");
		private static const GLASS_BOTTLE:IngredientVO = new IngredientVO(IMAGE_PATH + "Glass_Bottle.png");
		private static const CAULDRON:IngredientVO = new IngredientVO(IMAGE_PATH + "Cauldron.png");
		private static const BREWING_STAND:IngredientVO = new IngredientVO(IMAGE_PATH + "Brewing_Stand.png");
		private static const BLAZE_ROD:IngredientVO = new IngredientVO(IMAGE_PATH + "Blaze_Rod.png");
		private static const MAGMA_CREAM:IngredientVO = new IngredientVO(IMAGE_PATH + "Magma_Cream.png");
		private static const FERMENTED_SPIDER_EYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Fermented_Spider_Eye.png");
		private static const GLISTERING_MELON:IngredientVO = new IngredientVO(IMAGE_PATH + "Glistering_Melon.png");
		private static const ENCHANTMENT_TABLE:IngredientVO = new IngredientVO(IMAGE_PATH + "Enchantment_Table.png");
		private static const SPIDER_EYE:IngredientVO = new IngredientVO(IMAGE_PATH + "Spider_Eye.png");
		private static const OBSIDIAN:IngredientVO = new IngredientVO(IMAGE_PATH + "Obsidian.png");
		private static const APPLE:IngredientVO = new IngredientVO(IMAGE_PATH + "Apple.png");
		private static const GLOWSTONE_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Glowstone_(Block).png");
		private static const GLOWSTONE_DUST:IngredientVO = new IngredientVO(IMAGE_PATH + "Glowstone_(Dust).png");
		private static const TNT:IngredientVO = new IngredientVO(IMAGE_PATH + "TNT.png");
		private static const STONE_SLAB:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Slab.png");
		private static const SANDSTONE_SLAB:IngredientVO = new IngredientVO(IMAGE_PATH + "Sandstone_Slab.png");
		private static const WOODEN_SLAB:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Slab.png");
		private static const COBBLESTONE_SLAB:IngredientVO = new IngredientVO(IMAGE_PATH + "Cobblestone_Slab.png");
		private static const BRICK_SLAB:IngredientVO = new IngredientVO(IMAGE_PATH + "Brick_Slab.png");
		private static const STONE_BRICKS_SLAB:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Bricks_Slab.png");
		private static const WOODEN_STAIRS:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Stairs.png");
		private static const COBBLESTONE_STAIRS:IngredientVO = new IngredientVO(IMAGE_PATH + "Cobblestone_Stairs.png");
		private static const BRICK_STAIRS:IngredientVO = new IngredientVO(IMAGE_PATH + "Brick_Stairs.png");
		private static const STONE_BRICKS_STAIRS:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Bricks_Stairs.png");
		private static const NETHER_BRICK_STAIRS:IngredientVO = new IngredientVO(IMAGE_PATH + "Nether_Brick_Stairs.png");
		private static const SNOW_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Snow_(Block).png");
		private static const CLAY_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Clay_(Block).png");
		private static const BRICK_BLOCK:IngredientVO = BRICK_BLOCK;
		private static const STONE_BRICK:IngredientVO = STONE_BRICK;
		private static const BOOKSHELF:IngredientVO = new IngredientVO(IMAGE_PATH + "Bookshelf.png");
		private static const JACK_O_LANTERN:IngredientVO = new IngredientVO(IMAGE_PATH + "Jack_O_Lantern.png");
		private static const SANDSTONE:IngredientVO = new IngredientVO(IMAGE_PATH + "Sandstone.png");
		private static const WOODEN_AXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Axe.png");
		private static const STONE_AXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Axe.png");
		private static const IRON_AXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Axe.png");
		private static const GOLD_AXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Axe.png");
		private static const DIAMOND_AXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_Axe.png");
		private static const WOODEN_PICKAXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Pickaxe.png");
		private static const STONE_PICKAXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Pickaxe.png");
		private static const IRON_PICKAXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Pickaxe.png");
		private static const GOLD_PICKAXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Pickaxe.png");
		private static const DIAMOND_PICKAXE:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_Pickaxe.png");
		private static const WOODEN_SHOVEL:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Shovel.png");
		private static const STONE_SHOVEL:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Shovel.png");
		private static const IRON_SHOVEL:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Shovel.png");
		private static const GOLD_SHOVEL:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Shovel.png");
		private static const DIAMOND_SHOVEL:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_Shovel.png");
		private static const WOODEN_SWORD:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Sword.png");
		private static const STONE_SWORD:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Sword.png");
		private static const IRON_SWORD:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Sword.png");
		private static const GOLD_SWORD:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Sword.png");
		private static const DIAMOND_SWORD:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_Sword.png");
		private static const WOODEN_HOE:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Hoe.png");
		private static const STONE_HOE:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Hoe.png");
		private static const IRON_HOE:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Hoe.png");
		private static const GOLD_HOE:IngredientVO = new IngredientVO(IMAGE_PATH + "Gold_Hoe.png");
		private static const DIAMOND_HOE:IngredientVO = new IngredientVO(IMAGE_PATH + "Diamond_Hoe.png");
		private static const FLINT_AND_STEEL:IngredientVO = new IngredientVO(IMAGE_PATH + "Flint_and_Steel.png");
		private static const WOOD:IngredientVO = new IngredientVO(IMAGE_PATH + "Wood.png");
		private static const SNOWBALL:IngredientVO = new IngredientVO(IMAGE_PATH + "Snowball.png");
		private static const CLAY:IngredientVO = new IngredientVO(IMAGE_PATH + "Clay_(Item).png");
		private static const CLAY_BRICK:IngredientVO = new IngredientVO(IMAGE_PATH + "Clay_(Brick).png");
		private static const MAP:IngredientVO = new IngredientVO(IMAGE_PATH + "Map_(Item).png");
		private static const CLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Clock.png");
		private static const FISHING_ROD:IngredientVO = new IngredientVO(IMAGE_PATH + "Fishing_Rod.png");
		private static const SHEARS:IngredientVO = new IngredientVO(IMAGE_PATH + "Shears.png");
		private static const BOAT:IngredientVO = new IngredientVO(IMAGE_PATH + "Boat.png");
		private static const DETECTOR_RAIL:IngredientVO = new IngredientVO(IMAGE_PATH + "Detector_Rail.png");
		private static const DISPENSER:IngredientVO = new IngredientVO(IMAGE_PATH + "Dispenser.png");
		private static const IRON_DOOR:IngredientVO = new IngredientVO(IMAGE_PATH + "Iron_Door.png");
		private static const JUKEBOX:IngredientVO = new IngredientVO(IMAGE_PATH + "Jukebox");
		private static const LEVER:IngredientVO = new IngredientVO(IMAGE_PATH + "Lever.png");
		private static const NOTE_BLOCK:IngredientVO = new IngredientVO(IMAGE_PATH + "Note_Block.png");
		private static const POWERED_MINECART:IngredientVO = new IngredientVO(IMAGE_PATH + "Powered_Minecart.png");
		private static const POWERED_RAIL:IngredientVO = new IngredientVO(IMAGE_PATH + "Powered_Rail.png");
		private static const PRESSURE_PLATE:IngredientVO = new IngredientVO(IMAGE_PATH + "Pressure_Plate.png");
		private static const RAIL:IngredientVO = new IngredientVO(IMAGE_PATH + "Rail.png");
		private static const REDSTONE_REPEATER:IngredientVO = new IngredientVO(IMAGE_PATH + "Redstone_Repeater.png");
		private static const STEW:IngredientVO = new IngredientVO(IMAGE_PATH + "Stew.png");
		private static const STICK_PISTON:IngredientVO = new IngredientVO(IMAGE_PATH + "Stick_Piston.png");
		private static const STONE_BUTTON:IngredientVO = new IngredientVO(IMAGE_PATH + "Stone_Button.png");
		private static const STORAGE_MINECART:IngredientVO = new IngredientVO(IMAGE_PATH + "Storage_Minecart.png");
		private static const TRAPDOOR:IngredientVO = new IngredientVO(IMAGE_PATH + "Trapdoor.png");
		private static const WOODEN_DOOR:IngredientVO = new IngredientVO(IMAGE_PATH + "Wooden_Door.png");
		
		public static function initializeRecipes():void
		{
			if(initialized == true)
				return;
			
			initialized = true;
			
			allRecipes = new ArrayCollection();
			
			addRecipe("Wooden Planks", 
				"Used as a building material and can be crafted into many things. Any form of wood used will still result in the same output.", 
				"Wood",
				WOODEN_PLANK,
				4,
				[null, null, null,
					null, null, null,
					null, WOOD, null]);
			
			addRecipe("Sticks", 
						"Used to craft torches, arrows, signs,\n ladders, fences and as handles for tools and weapons.",
						"Wooden Plank",
						STICK,
						4,
						[null, null, null,
						null, WOODEN_PLANK, null,
						null, WOODEN_PLANK, null]);
			
			addRecipe("Torches",
						"Used to create light. Torches also melt snow and ice.",
						"Stick + Coal (or Charcoal)",
						TORCH,
						4,
						[null, null, null,
						null, COAL, null,
						null, STICK, null]);
						
			addRecipe("Crafting Table",
						"Allows the player to craft on a 3x3 grid.",
						"Wooden Plank",
						CRAFTING_TABLE,
						1,
						[null, null, null,
						WOODEN_PLANK, WOODEN_PLANK, null,
						WOODEN_PLANK, WOODEN_PLANK, null]);
			
			addRecipe("Furnace",
						"Allows the player to smelt.",
						"Cobblestone",
						FURNACE,
						1,
						[COBBLESTONE, COBBLESTONE, COBBLESTONE,
							COBBLESTONE, null, COBBLESTONE,
							COBBLESTONE, COBBLESTONE, COBBLESTONE]);
			
			
			addRecipe("Chest",
						"Stores blocks and items inside. Place two chests side by side to create a larger chest with double the capacity.",
						"Wooden Plank",
						CHEST,
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, null, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Ore Blocks",
						"Stores blocks and items inside. Place two chests side by side to create a larger chest with double the capacity.",
						"",
						[LAPIS_LAZULI_BLOCK,,
							GOLD_BLOCK,
							IRON_BLOCK,
							DIAMOND_BLOCK],
						1,
						[LAPIS_LAZULI_GEM, LAPIS_LAZULI_GEM, LAPIS_LAZULI_GEM,
							LAPIS_LAZULI_GEM, LAPIS_LAZULI_GEM, LAPIS_LAZULI_GEM,
							LAPIS_LAZULI_GEM, LAPIS_LAZULI_GEM, LAPIS_LAZULI_GEM],
						
						[GOLD_INGOT, GOLD_INGOT, GOLD_INGOT,
							GOLD_INGOT, GOLD_INGOT, GOLD_INGOT,
							GOLD_INGOT, GOLD_INGOT, GOLD_INGOT],
						
						[IRON_INGOT, IRON_INGOT, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT],
						
						[DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM,
							DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM,
							DIAMOND_GEM, DIAMOND_GEM, DIAMOND_GEM]);
						
			
			addRecipe("Glowstone",
						"Used to create brighter light than torches. Melts snow/ice and can be used underwater.",
						"Glowstone (Dust)",
						GLOWSTONE_BLOCK,
						1,
						[null, null, null,
							GLOWSTONE_DUST, GLOWSTONE_DUST, null,
							GLOWSTONE_DUST, GLOWSTONE_DUST, null]);
			
			addRecipe("Wool",
						"Used as a building material and can be colored with dyes. This recipe is not recommended because Wool can be easily obtained from Sheep.",
						"String",
						WOOL,
						1,
						[null, null, null,
							STRING, STRING, null,
							STRING, STRING, null]);
			
			addRecipe("TNT",
						"Used to cause explosions.",
						"Gunpowder + Sand",
						TNT,
						1,
						[GUNPOWDER, SAND, GUNPOWDER,
							SAND, GUNPOWDER, SAND,
							GUNPOWDER, SAND, GUNPOWDER]);
						
			
			addRecipe("Slabs",
						"Used for making long staircases. Two slabs placed on top of each other will create a normal-sized double slab block.",
						"Stone, Sandstone, Wooden Planks, Cobblestone, Brick, or Stone Brick",
						[STONE_SLAB,
							SANDSTONE_SLAB,
							WOODEN_SLAB,
							COBBLESTONE_SLAB,
							BRICK_SLAB,
							STONE_BRICKS_SLAB],
						1,
						[null, null, null,
							null, null, null,
							STONE, STONE, STONE],
						[null, null, null,
							null, null, null,
							SANDSTONE, SANDSTONE, SANDSTONE],
						[null, null, null,
							null, null, null,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK],
						[null, null, null,
							null, null, null,
							COBBLESTONE, COBBLESTONE, COBBLESTONE],
						[null, null, null,
							null, null, null,
							BRICK_BLOCK, BRICK_BLOCK, BRICK_BLOCK],
						[null, null, null,
							null, null, null,
							STONE_BRICK, STONE_BRICK, STONE_BRICK]
						
						);
			addRecipe("Stairs",
						"Used for compact staircases.",
						"Wooden Planks, Cobblestone, Brick, Stone Brick, Nether Brick",
						[WOODEN_STAIRS,
							COBBLESTONE_STAIRS,
							BRICK_STAIRS,
							STONE_BRICKS_STAIRS,
							NETHER_BRICK_STAIRS],
						4,
						[WOODEN_PLANK, null, null,
							WOODEN_PLANK, WOODEN_PLANK, null,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK],
						[COBBLESTONE, null, null,
							COBBLESTONE, COBBLESTONE, null,
							COBBLESTONE, COBBLESTONE, COBBLESTONE],
						[BRICK_BLOCK, null, null,
							BRICK_BLOCK, BRICK_BLOCK, null,
							BRICK_BLOCK, BRICK_BLOCK, BRICK_BLOCK],
						[STONE_BRICK, null, null,
							STONE_BRICK, STONE_BRICK, null,
							STONE_BRICK, STONE_BRICK, STONE_BRICK],
						[NETHER_BRICK, null, null,
							NETHER_BRICK, NETHER_BRICK, null,
							NETHER_BRICK, NETHER_BRICK, NETHER_BRICK]);
			
			addRecipe("Snow Block",
						"Used as a building material.",
						"Snowballs",
						SNOW_BLOCK,
						1,
						[null, null, null,
							SNOWBALL, SNOWBALL, null,
							SNOWBALL, SNOWBALL, null]);
			
			addRecipe("Clay Block",
					"Used to store Clay Balls, or as a building material.",
					"Clay",
					CLAY_BLOCK,
					1,
					[null, null, null,
						CLAY, CLAY, null,
						CLAY, CLAY, null]);
			
			addRecipe("Brick (Block)",
						"Used as a building material.",
						"Clay Bricks",
						BRICK_BLOCK,
						1,
						[null, null, null,
							CLAY_BRICK, CLAY_BRICK, null,
							CLAY_BRICK, CLAY_BRICK, null]);
			
			addRecipe("Stone Brick",
						"Used as a building material.",
						"Stone",
						STONE_BRICK,
						4,
						[null, null, null,
							STONE, STONE, null,
							STONE, STONE, null]);
			
			addRecipe("Bookshelf",
						"Used as decoration, or to give an Enchantment Table knowledge.",
						"Wooden Plank + Books",
						BOOKSHELF,
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							BOOK, BOOK, BOOK, 
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			addRecipe("Sandstone",
						"Used as a building material. Is not influenced by gravity like normal Sand.",
						"Sand",
						SANDSTONE,
						1,
						[null, null, null,
							SAND, SAND, null,
							SAND, SAND, null]);
			
			
			addRecipe("Jack-O-Lantern",
						"Used to create brighter light than torches. Melts snow/ice and can be used underwater.",
						"Pumpkin + Torch",
						JACK_O_LANTERN,
						1,
						[null, null, null,
							null, PUMPKIN, null,
							null, TORCH, null]);
			
			addRecipe("Axes",
					"Used to chop wood-related blocks faster than by hand.",
					"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
					[WOODEN_AXE,
						STONE_AXE,
						IRON_AXE,
						GOLD_AXE,
						DIAMOND_AXE],
					1,
					[WOODEN_PLANK, WOODEN_PLANK, null,
						WOODEN_PLANK, STICK, null,
						null, STICK, null],
					[COBBLESTONE, COBBLESTONE, null,
						COBBLESTONE, STICK, null,
						null, STICK, null],
					[IRON_INGOT, IRON_INGOT, null,
						IRON_INGOT, STICK, null,
						null, STICK, null],
					[GOLD_INGOT, GOLD_INGOT, null,
						GOLD_INGOT, STICK, null,
						null, STICK, null],
					[DIAMOND_GEM, DIAMOND_GEM, null,
						DIAMOND_GEM, STICK, null,
							null, STICK, null]);
			
			addRecipe("Pickaxes",
						"Required to mine stone-related blocks and ore.",
						"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[WOODEN_PICKAXE,
							STONE_PICKAXE,
							IRON_PICKAXE,
							GOLD_PICKAXE,
							DIAMOND_PICKAXE],
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
			
			addRecipe("Shovels",
						"Used to dig dirt, grass, sand, gravel and snow faster than by hand. Shovels are required to dig snowballs.",
						"Sticks + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[WOODEN_SHOVEL,
							STONE_SHOVEL,
							IRON_SHOVEL,
							GOLD_SHOVEL,
							DIAMOND_SHOVEL],
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
						[WOODEN_HOE,
							STONE_HOE,
							IRON_HOE,
							GOLD_HOE,
							DIAMOND_HOE],
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
						FLINT_AND_STEEL,
						1,
						[null, null, null,
							IRON_INGOT, null, null,
							null, COAL, null]);
			
			addRecipe("Bucket",
						"Used to hold and transport water, lava and milk.",
						"Iron Ingots",
						BUCKET,
						1,
						[null, null, null,
							IRON_INGOT, null, IRON_INGOT,
							null, IRON_INGOT, null]);
			
			addRecipe("Compass",
						"Points to the player's spawn point.",
						"Iron Ingots + Redstone Dust",
						COMPASS,
						1,
						[null, IRON_INGOT, null,
						IRON_INGOT, REDSTONE_DUST, IRON_INGOT,
						null, IRON_INGOT, null]);
			
			addRecipe("Maps",
						"Will create an image of an area explored while held. This can be used for path-finding.",
						"Paper + Compass",
						MAP,
						1,
						[PAPER, PAPER, PAPER,
							PAPER, COMPASS, PAPER,
							PAPER, PAPER, PAPER]);
			
			addRecipe("Clock",
						"Displays positions of the Sun and Moon.",
						"Gold Ingots + Redstone Dust",
						CLOCK,
						1,
						[null, GOLD_INGOT, null,
							GOLD_INGOT, REDSTONE_DUST, GOLD_INGOT,
							null, GOLD_INGOT, null]);
			
			addRecipe("Fishing Rod",
						"Used to catch fish. Can also be used to pull mobs and other entities.",
						"Sticks + String",
						FISHING_ROD,
						1,
						[null, null, STICK,
							null, STICK, STRING,
							STICK, null, STRING]);
			addRecipe("Shears",
						"Used to collect leaves, tall grass, vines and wool from Sheep. Also breaks Wool faster than by hand.",
						"Iron Ingots",
						SHEARS,
						1,
						[null, null, null,
							null, IRON_INGOT, null,
							IRON_INGOT, null, null]);
			
			addRecipe("Swords",
						"Deals mobs more damage than by hand.",
						"Stick + Wooden Plank or Cobblestone or Iron Ingots or Gold Ingots or Diamond Gems",
						[WOODEN_SWORD,
							STONE_SWORD,
							IRON_SWORD,
							GOLD_SWORD,
							DIAMOND_SWORD],
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
						BOW,
						1,
						[null, STICK, STRING,
						STICK, null, STRING,
						null, STICK, STRING]);
			
			addRecipe("Arrows",
						"Used as ammunition for bows.",
						"Flint + Stick + Feather",
						ARROW,
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
						MINECART,
						1,
						[null, null, null,
							IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT]);
			
			addRecipe("Powered Minecart",
						"Used to push other Minecarts along rails using fuel.",
						"Furnace + Minecart",
						POWERED_MINECART,
						1,
						[null, null, null,
							null, FURNACE, null,
							null, MINECART, null]);
			
			addRecipe("Storage Minecart",
						"Used to transport goods along rails.",
						"Chest + Minecart",
						STORAGE_MINECART,
						1,
						[null, null, null,
							null, CHEST, null,
							null, MINECART, null]);
			
			addRecipe("Rails",
						"Used to guide minecarts.",
						"Stick + Iron Ingots",
						RAIL,
						4,
						[IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, STICK, IRON_INGOT,
							IRON_INGOT, STICK, IRON_INGOT]);
			
			addRecipe("Powered Rail",
						"Used to speed up or brake minecarts.",
						"Stick + Gold Ingots + Redstone Dust",
						POWERED_RAIL,
						4,
						[GOLD_INGOT, null, GOLD_INGOT,
							GOLD_INGOT, STICK, GOLD_INGOT, 
							GOLD_INGOT, REDSTONE_DUST, GOLD_INGOT]);
			
			addRecipe("Detector Rail",
						"Functions like a Pressure Plate (sends a Redstone signal when powered) but can only be activated by a minecart.",
						"Stone Pressure Plate + Iron Ingots + Redstone Dust",
						DETECTOR_RAIL,
						4,
						[IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, STONE_PRESSURE_PLATE, IRON_INGOT,
							IRON_INGOT, REDSTONE_DUST, IRON_INGOT]);
			
			
			addRecipe("Boat",
						"Used to travel in water quicker than swimming.",
						"Wooden Planks",
						BOAT,
						1,
						[null, null, null,
							WOODEN_PLANK, null, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Doors",
						"Wooden doors are activated by clicking or with redstone. Iron doors are similar but can only be opened by redstone, buttons, or switches.",
					"Wooden Planks or Iron Ingots",
					[WOODEN_DOOR,
						IRON_DOOR],
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
						TRAPDOOR,
						2,
						[null, null, null, 
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Pressure Plates",
						"Used to send an electrical charge when stepped on by a player or a mob. Wooden Pressure Plates can also be activated by dropping something on them.",
						"Wooden Planks or Stone",
						PRESSURE_PLATE,
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
						STONE_BUTTON,
						1,
						[null, null, null,
							null, STONE, null,
							null, STONE, null]);
			
			addRecipe("Redstone Torch",
						"Constantly sends an electrical charge, or can be used as a receiver/transmitter when connected the side of a block. Can also be used for low-level lighting.",
						"Redstone Dust + Stick",
						REDSTONE_TORCH,
						1,
						[null, null, null,
							null, REDSTONE_DUST, null,
							null, STICK, null]);
			
			addRecipe("Lever",
						"Used to send an electrical charge by being turned on or off. Stays in on or off state until clicked again.",
						"Cobblestone + Stick",
						LEVER,
						1,
						[null, null, null,
							null, STICK, null,
							null, COBBLESTONE, null]);
			
			
			addRecipe("Note Block",
						"Plays a note when triggered. Right click it to change the pitch of the note. Placing this on top of different blocks changes its type of instrument.",
						"Wooden Planks + Redstone Dust",
						NOTE_BLOCK,
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, REDSTONE_DUST, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Jukebox",
						"Plays Music Discs.",
						"Wooden Planks + Diamond Gem",
						JUKEBOX,
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							WOODEN_PLANK, DIAMOND_GEM, WOODEN_PLANK,
							WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK]);
			
			addRecipe("Dispenser",
						"Used to hold and shoot out items in a random order when given a Redstone charge.",
						"Cobblestone + Redstone Dust + Bow",
						DISPENSER,
						1,
						[COBBLESTONE, COBBLESTONE, COBBLESTONE,
							COBBLESTONE, BOW, COBBLESTONE,
							COBBLESTONE, REDSTONE_DUST, COBBLESTONE]);
			
			addRecipe("Redstone Repeater",
						"Used in redstone circuits as repeater, a delayer, and/or a diode.",
						"Stone + Redstone Dust + Redstone Torch",
						REDSTONE_REPEATER,
						1,
						[null, null, null,
							REDSTONE_TORCH, REDSTONE_DUST, REDSTONE_TORCH,
							STONE, STONE, STONE]);
			
			addRecipe("Piston",
						"Pushes blocks and entities.",
						"Cobblestone + Redstone Dust + Wooden Planks + Iron Ingot",
						PISTON,
						1,
						[WOODEN_PLANK, WOODEN_PLANK, WOODEN_PLANK,
							COBBLESTONE, IRON_INGOT, COBBLESTONE,
							COBBLESTONE, REDSTONE_DUST, COBBLESTONE]);
			
			addRecipe("Sticky Piston",
						"Pushes blocks and entities, and will pull back the block next to the end when retracted.",
						"Piston + Slimeball",
						STICK_PISTON,
						1,
						[null, null, null,
							null, SLIMEBALL, null,
							null, PISTON, null]);
			
			addRecipe("Bowls",
						"Used to hold mushroom stew. The player keeps the bowl when they eat the stew. Also used to milk a Mooshroom.",
						"Wooden Planks",
						BOWL,
						4,
						[null, null, null,
							WOODEN_PLANK, null, WOODEN_PLANK,
							null, WOODEN_PLANK, null]);
			
			addRecipe("Mushroom Stew",
						"Restores 4. Bowl is re-usable.",
						"Red Mushroom + Brown Mushroom + Bowl",
						STEW,
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
						BREAD,
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
						"Rose Red + Dandelion Yellow",
						ORANGE_DYE,
						4,
						[null, null, null,
							null, null, null,
							ROSE_RED, null, DANDELION_YELLOW]);
			
			addRecipe("Dandelion Yellow",
						"Used as a dye to create yellow wool.",
						"Dandelion",
						DANDELION_YELLOW,
						4,
						[null, null, null,
							null, null, null,
							null, DANDELION, null]);
			
			addRecipe("Lime Dye",
						"Used as a dye to create lime wool.",
						"Cactus Green + Bone Meal",
						LIME_DYE,
						4,
						[null, null, null,
							null, null, null,
							CACTUS_GREEN, null, BONE_MEAL]);
			
			addRecipe("Light Blue Dye",
						"Used as a dye to create light blue wool.",
						"Lapis Lazuli Dye + Bone Meal",
						LIGHT_BLUE_DYE,
						4,
						[null, null, null,
							null, null, null,
							LAPIS_LAZULI_GEM, null, BONE_MEAL]);
			
			addRecipe("Cyan Dye",
						"Used as a dye to create cyan wool.",
						"Lapis Lazuli Dye + Cactus Green",
						CYAN_DYE,
						[null, null, null,
							null, null, null,
							LAPIS_LAZULI_GEM, null, CACTUS_GREEN]);
			
			addRecipe("Purple Dye",
						"Used as a dye to create purple wool.",
						"Lapis Lazuli Dye + Rose Red",
						PURPLE_DYE,
						4,
						[null, null, null,
							null, null, null,
							LAPIS_LAZULI_GEM, null, ROSE_RED]);
			
			addRecipe("Magenta Dye",
						"Used as a dye to create magenta wool.",
						"Purple Dye + Pink Dye or Lapis Lazuli Dye + Bone Meal + 2 Rose Red or Lapis Lazuli Dye + Pink Dye + Rose Red",
						MAGENTA_DYE,
						4,
						[null, null, null,
							null, null, null,
							PURPLE_DYE, null, PINK_DYE],
						[null, null, null,
							null, null, null,
							PINK_DYE, ROSE_RED, LAPIS_LAZULI_GEM],
						[null, null, null,
							LAPIS_LAZULI_GEM, BONE_MEAL, null,
							ROSE_RED, ROSE_RED, null]);
			
			addRecipe("Pink Dye",
						"Used as a dye to create pink wool.",
						"Rose Red + Bone Meal",
						PINK_DYE,
						4,
						[null, null, null,
							null, null, null,
							ROSE_RED, null, BONE_MEAL]);
			
			addRecipe("Light Gray Wool",
						"Decoration.",
						"Wool + Light Gray Dye",
						LIGHT_GRAY_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, LIGHT_GRAY_DYE]);
			
			addRecipe("Gray Wool",
						"Decoration.",
						"Wool + Gray Dye",
						GRAY_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, GRAY_DYE]);
			
			addRecipe("Black Wool",
						"Decoration.",
						"Wool + Ink Sac",
						BLACK_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, INK_SAC]);
			
			addRecipe("Red Wool",
						"Decoration.",
						"Wool + Rose Red",
						RED_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, ROSE_RED]);
			
			addRecipe("Orange Wool",
						"Decoration.",
						"Wool + Orange Dye",
						ORANGE_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, ORANGE_DYE]);
			
			addRecipe("Yellow Wool",
						"Decoration.",
						"Wool + Dandelion Yellow",
						YELLOW_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, DANDELION_YELLOW]);
			
			addRecipe("Lime Wool",
						"Decoration.",
						"Wool + Lime Dye",
						LIME_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, LIME_DYE]);
			
			addRecipe("Green Wool",
						"Decoration.",
						"Wool + Cactus Green",
						GREEN_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, CACTUS_GREEN]);
			
			addRecipe("Light Blue Wool",
						"Decoration.",
						"Wool + Light Blue Dye",
						GREEN_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, LIGHT_BLUE_DYE]);
			
			addRecipe("Cyan Wool",
						"Decoration.",
						"Wool + Cyan Dye",
						CYAN_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, CYAN_DYE]);
			
			addRecipe("Blue Wool",
						"Decoration.",
						"Wool + Lapis Lazuli Dye",
						BLUE_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, LAPIS_LAZULI_GEM]);
			
			addRecipe("Purple Wool",
						"Decoration.",
						"Wool + Purple Dye",
						PURPLE_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, PURPLE_DYE]);
				
			addRecipe("Magenta Wool",
						"Decoration.",
						"Wool + Magenta Dye",
						MAGENTA_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, MAGENTA_DYE]);
			
			addRecipe("Pink Wool",
						"Decoration.",
						"Wool + Pink Dye",
						PINK_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, PINK_DYE]);
			
			addRecipe("Brown Wool",
						"Decoration.",
						"Wool + Cocoa Beans",
						BROWN_WOOL,
						1,
						[null, null, null,
							null, null, null,
							WOOL, null, COCOA_BEANS]);
			
			addRecipe("Glass Bottle",
						"Used in Brewing.",
						"Glass",
						GLASS_BOTTLE,
						4,
						[null, null, null,
							GLASS, null, GLASS,
							null, GLASS, null]);
			
			addRecipe("Cauldron",
						"Used to store water for Glass Bottle.",
						"Iron Ingot",
						CAULDRON,
						1,
						[IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, null, IRON_INGOT,
							IRON_INGOT, IRON_INGOT, IRON_INGOT]);
			
			addRecipe("Brewing Stand",
						"Used to Brew.",
						"Blaze Rod + Cobblestone",
						BREWING_STAND,
						1,
						[null, null, null,
							null, BLAZE_ROD, null,
							COBBLESTONE, COBBLESTONE, COBBLESTONE]);
			
			addRecipe("Blaze Powder",
						"Can be crafted together with a Ender Pearl, to create an Eye of Ender. Can also be used to craft Magma Cream.",
						"Blaze Rod",
						BLAZE_POWDER,
						4,
						[null, null, null,
							null, BLAZE_ROD, null,
							null, null, null]);
			
			addRecipe("Magma Cream",
						"Used in Potions, mostly for fire-resistance.",
						"Slimeball + Blaze Powder",
						MAGMA_CREAM,
						1,
						[null, null, null,
							null, SLIMEBALL, null,
							null, BLAZE_POWDER, null]);
			
			addRecipe("Fermented Spider Eye",
						"Used in Potions. All potions with Fermented Spider Eye have negative effects, which makes it useful in splash potions.",
						"Spider Eye + Brown Mushroom + Sugar",
						FERMENTED_SPIDER_EYE,
						1,
						[SPIDER_EYE, null, null,
							BROWN_MUSHROOM, SUGAR, null,
							null, null, null]);
			
			addRecipe("Glistering Melon",
						"Used in Brewing to create health restoration Potions.",
						"Melon Slice + Gold Nugget",
						GLISTERING_MELON,
						1,
						[null, null, null,
							MELON_SLICE, GOLD_NUGGET, null,
							null, null, null]);
			
			addRecipe("Gold Nugget",
						"Used to craft Glistering Melon with Melon Slices.",
						"Gold Ingot",
						GOLD_NUGGET,
						1,
						[null, null, null,
							null, GOLD_INGOT, null,
							null, null, null]);
			
			addRecipe("Enchantment Table",
						"Used to Enchant Tools.",
						"Book + Diamond + Obsidian",
						ENCHANTMENT_TABLE,
						1,
						[null, BOOK, null,
							DIAMOND_GEM, OBSIDIAN, DIAMOND_GEM,
							OBSIDIAN, OBSIDIAN, OBSIDIAN]);
		}
		
	}
}