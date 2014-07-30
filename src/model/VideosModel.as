package model
{
	import mx.collections.ArrayCollection;

	public class VideosModel
	{
		[ArrayElementType("vo.VoVideos")]
		public static var arrShowsItems:ArrayCollection = new ArrayCollection();

		public static var index:int = 1;

		public function VideosModel()
		{
		}
	}
}
