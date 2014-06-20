package model
{
	import mx.collections.ArrayCollection;

	public class ShowsModel
	{
		[ArrayElementType("vo.VoNews")]
		public static var arrShowsItems:ArrayCollection = new ArrayCollection();

		public function ShowsModel()
		{
		}
	}
}
