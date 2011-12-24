package com.jxl.minecraftrecipes.rl.mediators
{
	import com.jxl.minecraftrecipes.controls.AddToFavoritesButton;
	import com.jxl.minecraftrecipes.events.RecipeViewEvent;
	import com.jxl.minecraftrecipes.rl.FavoritesModel;
	import com.jxl.minecraftrecipes.vo.RecipeVO;
	
	import flash.debugger.enterDebugger;
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	import views.RecipeView;
	
	public class RecipeViewMediator extends Mediator
	{
		
		[Inject]
		public var view:RecipeView;
		
		[Inject]
		public var model:FavoritesModel;
		
		private function get recipe():RecipeVO { return view.data as RecipeVO; }
		
		public function RecipeViewMediator()
		{
			super();
		}
		
		public override function onRegister():void
		{
			if(model.favorites.contains(recipe))
			{
				view.addToFavoritesButton.favorite = true;
			}
			else
			{
				view.addToFavoritesButton.favorite = false;
			}
			
			addViewListener(RecipeViewEvent.ADD_TO_FAVORITES, onAddToFavorites, RecipeViewEvent);
		}
		
		private function onAddToFavorites(event:RecipeViewEvent):void
		{
			if(model.favorites.contains(recipe) == false)
			{
				model.addRecipe(recipe);
				view.addToFavoritesButton.favorite = true;
			}
			else
			{
				model.favorites.removeItemAt(model.favorites.getItemIndex(recipe));
				view.addToFavoritesButton.favorite = false;
			}
		}
	}
}