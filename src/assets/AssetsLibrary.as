package assets
{

	public class AssetsLibrary
	{
		[Bindable]
		[Embed("assets/next.png")]
		public static var nextIcon:Class;

		[Bindable]
		[Embed("assets/backgrounds/generalBackground.png")]
		public static var generalBackground:Class;

		[Bindable]
		[Embed("assets/backgrounds/renderers/backgroundList1.png")]
		public static var backgroundList1:Class;

		[Bindable]
		[Embed("assets/backgrounds/renderers/backgroundList2.png")]
		public static var backgroundList2:Class;

		[Bindable]
		[Embed("assets/backgrounds/renderers/backgroundList3.png")]
		public static var backgroundList3:Class;

		[Bindable]
		[Embed("assets/backgrounds/renderers/backgroundList4.png")]
		public static var backgroundList4:Class;

		public function AssetsLibrary()
		{
		}
	}
}
