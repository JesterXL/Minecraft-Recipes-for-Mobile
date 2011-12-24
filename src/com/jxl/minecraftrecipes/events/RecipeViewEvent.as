package com.jxl.minecraftrecipes.events
{
	import flash.events.Event;
	
	public class RecipeViewEvent extends Event
	{
		public static const ADD_TO_FAVORITES:String = "addToFavorites";
		
		public function RecipeViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}