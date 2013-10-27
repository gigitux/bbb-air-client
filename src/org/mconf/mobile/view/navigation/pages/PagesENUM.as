package org.mconf.mobile.view.navigation.pages
{
	import flash.utils.Dictionary;
	
	import org.mconf.mobile.view.navigation.pages.app.AppPageView;
	import org.mconf.mobile.view.navigation.pages.login.LoginPageView;

	public class PagesENUM
	{
		public static const APPLICATION:String = "app";
		public static const LOGIN:String = "login";
		
		protected static function init():void
		{
			if(!dicInitiated) 
			{
				dic[APPLICATION] = AppPageView;
				dic[LOGIN] = LoginPageView;
				
				dicInitiated = true;
			}
		}
				
		protected static var dic:Dictionary = new Dictionary();
		protected static var dicInitiated:Boolean = false;
				
		public static function contain(name:String):Boolean
		{
			init();
			return (dic[name] != null)
		}
		
		public static function getClassfromName(name:String):Class
		{
			init();
			var klass:Class = null;
			if(contain(name))
			{
				klass = dic[name];
			}
			return klass;
		}
	}
}