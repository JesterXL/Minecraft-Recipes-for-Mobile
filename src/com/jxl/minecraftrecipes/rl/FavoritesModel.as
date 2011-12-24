package com.jxl.minecraftrecipes.rl
{
	import com.jxl.minecraftrecipes.vo.RecipeVO;
	
	import flash.net.SharedObject;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.events.CollectionEvent;
	import mx.events.CollectionEventKind;
	
	import org.robotlegs.mvcs.Actor;
	
	public class FavoritesModel extends Actor
	{
		
		public var favorites:ArrayCollection;
		
		private var so:SharedObject;
		
		public function FavoritesModel()
		{
			super();
			init();
		}
		
		public function addRecipe(recipe:RecipeVO):void
		{
			if(favorites.contains(recipe) == false && containsType(recipe) == false)
				favorites.addItem(recipe);
		}
		
		private function containsType(recipe:RecipeVO):Boolean
		{
			var i:int = favorites.source.length;
			while(i--)
			{
				if(favorites.source[i].title == recipe.title)
					return true;
			}
			return false;
		}
		
		private function init():void
		{
			so = SharedObject.getLocal("FavoritesModel");
			if(so.data.favorites == null)
				so.data.favorites = [];
			
			var len:int;
			var index:int;
			var recipe:RecipeVO;
			var item:Object;
			// first, sanitize the array just in case bad stuff got in
			for(index = 0; index < so.data.favorites.length; index++)
			{
				item = so.data.favorites[index];
				if(item == null || (item as RecipeVO) == null)
				{
					so.data.favorites.splice(index, 1);
					index--;
				}
			}
			
			favorites = new ArrayCollection(so.data.favorites);
			
		}
		
		
	}
}