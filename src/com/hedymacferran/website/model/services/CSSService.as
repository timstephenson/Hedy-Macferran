package com.hedymacferran.website.model.services
{
	
	import com.hedymacferran.website.interfaces.ICSSService;
	
	import flash.text.StyleSheet;
	
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Ted Conn Feb 26, 2010
	 */
	
	public class CSSService extends Actor implements ICSSService
	{		
		//private var helvetica75:HelveticaNeueLTStd75Bold = new HelveticaNeueLTStd75Bold();
		//private var helvetica55:HelveticaNeueLTStd55Roman = new HelveticaNeueLTStd55Roman();
		
		private var gothamBlack:GothamBlack = new GothamBlack();
		private var palatinoBold:PalatinoBold = new PalatinoBold();
		private var isadora:Isadora = new Isadora();
		private var gillSansLight:GillSansLight = new GillSansLight();
		private var isonorm:Isonorm = new Isonorm();
		private var goudyHeavyFace:GoudyHeavyFace = new GoudyHeavyFace();
		
		public function getHomeStyles():StyleSheet
		{
			var styles:StyleSheet = new StyleSheet();
			
			var homeLink1:Object = new Object();
			homeLink1.fontFamily = isonorm.fontName;
			homeLink1.fontSize = 44;
			homeLink1.color = "#444444";
			homeLink1.textAlign = "center";
			
			var homeLink2:Object = new Object();
			homeLink2.fontFamily = goudyHeavyFace.fontName;
			homeLink2.fontSize = 32;
			homeLink2.color = "#444444";
			homeLink2.letterSpacing = 0;
			
			var homeLink3:Object = new Object();
			homeLink3.fontFamily = gillSansLight.fontName;
			homeLink3.fontSize = 73;
			homeLink3.color = "#444444";
			homeLink3.leading = -18;
			
			var homeLink4:Object = new Object();
			homeLink4.fontFamily = palatinoBold.fontName;
			homeLink4.fontSize = 63;
			homeLink4.color = "#444444";
			homeLink4.leading = -19;
			
			var homeLink5:Object = new Object();
			homeLink5.fontFamily = isadora.fontName;
			homeLink5.fontSize = 95;
			homeLink5.color = "#444444";
			
			styles.setStyle(".homeLink1", homeLink1);
			styles.setStyle(".homeLink2", homeLink2);
			styles.setStyle(".homeLink3", homeLink3);
			styles.setStyle(".homeLink4", homeLink4);
			styles.setStyle(".homeLink5", homeLink5);

			return styles;
		}
	}
}