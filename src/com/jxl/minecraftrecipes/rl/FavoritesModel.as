package com.jxl.minecraftrecipes.rl
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class FavoritesModel extends Actor
	{
		
		public var favorites:ArrayCollection = new ArrayCollection();
		
		public function FavoritesModel()
		{
			super();
		}
	}
}