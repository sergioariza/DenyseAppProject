package model
{
	import mx.collections.ArrayCollection;

	public class NewsModel
	{
		[ArrayElementType("vo.VoNews")]
		public static var arrNewsItems:ArrayCollection = new ArrayCollection();

		public static var index:int = 1;

		public function NewsModel()
		{
		}
	}
}
