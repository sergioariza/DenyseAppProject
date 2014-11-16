package model
{
	import mx.collections.ArrayCollection;

	public class VideosModel
	{
		[ArrayElementType("vo.VoVideos")]
		public static var arrShowsItems:ArrayCollection = new ArrayCollection();

		public static var index:Number = 1;

		public static var videosPublished:Number = 0;

		public function VideosModel()
		{
		}
	}
}
