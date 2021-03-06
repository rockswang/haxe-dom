package hxdom.html;

#if js
typedef AreaElement = js.html.AreaElement;
#else
class AreaElement extends Element {
	
	/** Reflects the 

<code><a rel="custom" href="https://developer.mozilla.org/en/HTML/Element/area#attr-alt">alt</a></code>
 HTML attribute, containing alternative text for the element. */
	public var alt:String;

	/** Reflects the 

<code><a rel="custom" href="https://developer.mozilla.org/en/HTML/Element/area#attr-coords">coords</a></code>
 HTML attribute, containing coordinates to define the hot-spot region. */
	public var coords:String;

	/** The fragment identifier (including the leading hash mark (#)), if any, in the referenced URL. */
	public var hash(default, null):String;

	/** The hostname and port (if it's not the default port) in the referenced URL. */
	public var host(default, null):String;

	/** The hostname in the referenced URL. */
	public var hostname(default, null):String;

	/** Reflects the 

<code><a rel="custom" href="https://developer.mozilla.org/en/HTML/Element/area#attr-href">href</a></code>
 HTML attribute, containing a valid URL&nbsp;of a linked resource. */
	public var href:String;

	/** Indicates that this area is inactive. 

<span title="">Obsolete</span> in 
<span><a rel="custom" href="https://developer.mozilla.org/en/HTML/HTML5">HTML5</a></span> */
	public var noHref:Bool;

	/** The path name component, if any, of the referenced URL. */
	public var pathname(default, null):String;

	public var ping:String;

	/** The port component, if any, of the referenced URL. */
	public var port(default, null):String;

	/** The protocol component (including trailing colon (:)), of the referenced URL. */
	public var protocol(default, null):String;

	/** The search element (including leading question mark (?)), if any, of the referenced URL */
	public var search(default, null):String;

	/** Reflects the 

<code><a rel="custom" href="https://developer.mozilla.org/en/HTML/Element/area#attr-shape">shape</a></code>
 HTML&nbsp;attribute, indicating the shape of the hot-spot, limited to known values. */
	public var shape:String;

	/** Reflects the 

<code><a rel="custom" href="https://developer.mozilla.org/en/HTML/Element/area#attr-target">target</a></code>
 HTML&nbsp;attribute, indicating the browsing context in which to open the linked resource. */
	public var target:String;
	
}
#end