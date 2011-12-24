package com.jxl.minecraftrecipes.rl.mediators
{
	import com.jxl.minecraftrecipes.rl.FavoritesModel;
	
	import org.robotlegs.mvcs.Mediator;
	
	import views.FavoritesRecipeView;
	
	public class FavoritesRecipeViewMediator extends Mediator
	{
		[Inject]
		public var view:FavoritesRecipeView;
		
		[Inject]
		public var model:FavoritesModel;
		
		public function FavoritesRecipeViewMediator()
		{
			super();
		}
		
		public override function onRegister():void
		{
			view.favorites = model.favorites;
		}
	}
}