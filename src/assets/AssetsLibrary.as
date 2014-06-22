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

		[Bindable]
		[Embed("assets/backgrounds/renderers/separator.png")]
		public static var separator:Class;

		[Bindable]
		[Embed("assets/icons/bands.png")]
		public static var bands:Class;

		[Bindable]
		[Embed("assets/icons/clock.png")]
		public static var clock:Class;

		[Bindable]
		[Embed("assets/icons/place.png")]
		public static var place:Class;

		public function AssetsLibrary()
		{
		}
	}
}
