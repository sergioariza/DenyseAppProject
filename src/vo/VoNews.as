package vo
{

	public class VoNews
	{
		public var id:Number;
		public var title:String;
		public var body:String;
		public var date:String;
		public var photoURL:String;
		public var cache:Object = null;

		public function VoNews(obj:Object = null):void
		{
			if (!obj)
				return;

			if (obj.id)
				id = obj.id;

			if (obj.title)
				title = obj.title;

			if (obj.body)
				body = obj.body;

			if (obj.date)
				date = obj.date;

			if (obj.photoURL)
				photoURL = obj.photoURL;
		}
	}
}
