package hxdom.html;

#if js
typedef ContentElement = js.html.ContentElement;
#else
class ContentElement extends Element {
	
	public var resetStyleInheritance:Bool;

	public var select:String;

	public function getDistributedNodes ():NodeList {
		return null;
	}
	
}
#end