package
{
	import spark.components.ButtonBarButton;
	import spark.components.DataGroup;
	import spark.components.Scroller;
	import spark.layouts.HorizontalLayout;
	import spark.skins.mobile.ButtonBarSkin;
	import spark.skins.mobile.supportClasses.ButtonBarButtonClassFactory;
	import spark.skins.mobile.supportClasses.TabbedViewNavigatorTabBarHorizontalLayout;

	/**
	 *  A custom ButtonBar skin that enables horizontal scrolling in the tab bar.
	 */
	public class ScrollingTabBarSkin_2 extends ButtonBarSkin
	{
		/**
		* The Scroller that will hold the DataGroup
		*/
		private var scroller:Scroller;

		/**
		 *  Override createChildren() to create a Scroller and add the DataGroup
		 * as its viewport.
		 */
		override protected function createChildren():void
		{
			if (!firstButton)
			{
				firstButton = new ButtonBarButtonClassFactory(ButtonBarButton);
				firstButton.skinClass = spark.skins.mobile.TabbedViewNavigatorTabBarFirstTabSkin;
			}

			if (!lastButton)
			{
				lastButton = new ButtonBarButtonClassFactory(ButtonBarButton);
				lastButton.skinClass = spark.skins.mobile.TabbedViewNavigatorTabBarLastTabSkin;
			}

			if (!middleButton)
			{
				middleButton = new ButtonBarButtonClassFactory(ButtonBarButton);
				middleButton.skinClass = spark.skins.mobile.TabbedViewNavigatorTabBarLastTabSkin;
			}

			if (!dataGroup)
			{
				// use a standard HorizontalLayout instead of a specialized button bar layout
				var tabLayout:HorizontalLayout = new HorizontalLayout();
				tabLayout.useVirtualLayout = false;
				tabLayout.gap = 0;

				dataGroup = new DataGroup();
				dataGroup.layout = tabLayout;

				scroller = new Scroller();
				scroller.setStyle('interactionMode', 'touch');
				scroller.viewport = dataGroup;

				addChild(scroller);
			}
		}

		/**
		 * Size and position the Scroller
		 */
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
		{
			setElementPosition(scroller, 0, 0);
			setElementSize(scroller, unscaledWidth, unscaledHeight);
		}

		/**
		 *  @private
		 */
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.drawBackground(unscaledWidth, unscaledHeight);

			// backgroundAlpha style is not supported by ButtonBar
			// TabbedViewNavigatorSkin sets a hard-coded value to support
			// overlayControls
			var backgroundAlphaValue:* = getStyle("backgroundAlpha");
			var backgroundAlpha:Number = (backgroundAlphaValue === undefined) ? 1 : getStyle("backgroundAlpha");

			graphics.beginFill(getStyle("chromeColor"), backgroundAlpha);
			graphics.drawRect(0, 0, unscaledWidth, unscaledHeight);
			graphics.endFill();
		}
	}
}
