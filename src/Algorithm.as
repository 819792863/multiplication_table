package src
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author wenjie
	 */
	public class Algorithm
	{
		
		public function Algorithm()
		{
		
		}
		
		public function abox():MovieClip
		{
			//new click mode use this box
			var clickedRange:MovieClip = new MovieClip()
			clickedRange.graphics.beginFill(0, 1)
			clickedRange.graphics.drawRect(-25, -25, 50, 50)
			clickedRange.graphics.endFill()
			clickedRange.name = "rect"
			return clickedRange
		}
		
		public function nineNine(tx:TextField):void
		{
			//as3 print 9*9
			//自己写的乘法表
			
			var s:String = ""
			var i:int = 1
			while (10 - i)
			{
				var si:String = String(i)
				s += si
				var result:String = ""
				var numAndNum:String = ""
				var line:String = ""
				
				for (var k:int = 0; k < s.length; k++)
				{
					numAndNum = s.charAt(k) + "x" + i + "="
					result = String(int(s.charAt(k)) * s.length)
					line += numAndNum + result + " "
				}
				//trace(line)
				tx.appendText(line+"\n")
				i++
			}
		}
	
	}

}