package volute;
import haxe.PosInfos;
import starling.display.DisplayObject;
/**
 * ...
 * @author de
 */
class Lib 
{
	public static inline function w() return flash.Lib.current.stage.stageWidth
	public static inline function h() return flash.Lib.current.stage.stageHeight
	
	public static inline function assert(b:Bool, ?msg:String, ?PosInfos) if(!b) throw msg == null?b:cast msg
	
	public static inline function detach( doc:DisplayObject ) {
		if ( doc.parent != null) 
			doc.parent.removeChild( doc );
	}
	
	public static function toFront( mc : DisplayObject ){
		if( mc.parent != null)
			mc.parent.setChildIndex( mc , mc.parent.numChildren-1 );
	}
	
	public static function toBack( mc : DisplayObject){
		if( mc.parent != null)
			mc.parent.setChildIndex( mc , 0);
	}
		
}