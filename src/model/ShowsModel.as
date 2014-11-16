package model
{
	import mx.collections.ArrayCollection;

	public class ShowsModel
	{
		[ArrayElementType("vo.VoShows")]
		public static var arrShowsItems:ArrayCollection = new ArrayCollection();

		public static var index:Number = 1;

		public static var showsPublished:Number = 0;

		public function ShowsModel()
		{
		}
	}
}
