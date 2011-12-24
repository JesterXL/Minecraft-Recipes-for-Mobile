package com.jxl.minecraftrecipes.rl
{
	import com.jxl.minecraftrecipes.rl.mediators.RecipeViewMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	
	import views.RecipeView;
	
	public class MainContext extends Context
	{
		public function MainContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		public override function startup():void
		{
			this.injector.mapSingleton(FavoritesModel);
			
			mediatorMap.mapView(RecipeView, RecipeViewMediator);
			
			super.startup();
		}
	}
}