package model
{
	import mx.collections.ArrayCollection;

	public class NewsModel
	{
		[ArrayElementType("vo.VoNews")]
		public static var arrNewsItems:ArrayCollection = new ArrayCollection();

		public static var index:Number = 1;

		public static var newsPublished:Number = 0;

		public function NewsModel()
		{
		}
	}
}
