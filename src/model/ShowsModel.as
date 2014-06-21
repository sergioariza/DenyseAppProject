package model
{
	import mx.collections.ArrayCollection;

	public class ShowsModel
	{
		[ArrayElementType("vo.VoNews")]
		public static var arrShowsItems:ArrayCollection = new ArrayCollection();

		public static var index:int = 1;

		public function ShowsModel()
		{
		}
	}
}
