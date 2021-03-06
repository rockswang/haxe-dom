package hxdom.html.svg;

import hxdom.html.Element;
import hxdom.html.NodeList;

#if js
typedef Angle = js.html.svg.Angle;
#else
class Angle {
	
	/** The unit type was explicitly set to degrees. */
	public static inline var SVG_ANGLETYPE_DEG:Int = 2;

	/** The unit type is gradians. */
	public static inline var SVG_ANGLETYPE_GRAD:Int = 4;

	/** The unit type is radians. */
	public static inline var SVG_ANGLETYPE_RAD:Int = 3;

	/** The unit type is not one of predefined unit types. It is invalid to attempt to define a new value of this type or to attempt to switch an existing value to this type. */
	public static inline var SVG_ANGLETYPE_UNKNOWN:Int = 0;

	/** No unit type was provided (i.e., a unitless value was specified). For angles, a unitless value is treated the same as if degrees were specified. */
	public static inline var SVG_ANGLETYPE_UNSPECIFIED:Int = 1;

	/** The type of the value as specified by one of the SVG_ANGLETYPE_* constants defined on this interface. */
	public var unitType(default, null):Int;

	/** <p>The value as a floating point value, in user units. Setting this attribute will cause <code>valueInSpecifiedUnits</code> and <code>valueAsString</code> to be updated automatically to reflect this setting.</p> <p><strong>Exceptions on setting:</strong> a <code><a rel="custom" href="https://developer.mozilla.org/en/DOM/DOMException">DOMException</a></code>
 with code <code>NO_MODIFICATION_ALLOWED_ERR</code> is raised when the length corresponds to a read only attribute or when the object itself is read only.</p> */
	public var value:Float;

	/** <p>The value as a string value, in the units expressed by <code>unitType</code>. Setting this attribute will cause <code>value</code>, <code>valueInSpecifiedUnits</code> and <code>unitType</code> to be updated automatically to reflect this setting.</p> <p><strong>Exceptions on setting:</strong></p> <ul> <li>a <code><a rel="custom" href="https://developer.mozilla.org/en/DOM/DOMException">DOMException</a></code>
 with code <code>SYNTAX_ERR</code> is raised if the assigned string cannot be parsed as a valid <a title="https://developer.mozilla.org/en/SVG/Content_type#Angle" rel="internal" href="https://developer.mozilla.org/en/SVG/Content_type#Angle">&lt;angle&gt;</a>.</li> <li>a <code><a rel="custom" href="https://developer.mozilla.org/en/DOM/DOMException">DOMException</a></code>
 with code <code>NO_MODIFICATION_ALLOWED_ERR</code> is raised when the length corresponds to a read only attribute or when the object itself is read only.</li> </ul> Setter throws DOMException. */
	public var valueAsString:String;

	/** <p>The value as a floating point value, in the units expressed by <code>unitType</code>. Setting this attribute will cause <code>value</code> and <code>valueAsString</code> to be updated automatically to reflect this setting.</p> <p><strong>Exceptions on setting:</strong> a <code><a rel="custom" href="https://developer.mozilla.org/en/DOM/DOMException">DOMException</a></code>
 with code <code>NO_MODIFICATION_ALLOWED_ERR</code> is raised when the length corresponds to a read only attribute or when the object itself is read only.</p> */
	public var valueInSpecifiedUnits:Float;

	public function convertToSpecifiedUnits (unitType:Int):Void {
		
	}

	public function newValueSpecifiedUnits (unitType:Int, valueInSpecifiedUnits:Float):Void {
		
	}
	
}
#end