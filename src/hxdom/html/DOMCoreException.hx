package hxdom.html;

#if js
typedef DOMCoreException = js.html.DOMCoreException;
#else
class DOMCoreException {
	
	public static inline var ABORT_ERR : Int = 20;

	public static inline var DATA_CLONE_ERR : Int = 25;

	public static inline var DOMSTRING_SIZE_ERR : Int = 2;

	public static inline var HIERARCHY_REQUEST_ERR : Int = 3;

	public static inline var INDEX_SIZE_ERR : Int = 1;

	public static inline var INUSE_ATTRIBUTE_ERR : Int = 10;

	public static inline var INVALID_ACCESS_ERR : Int = 15;

	public static inline var INVALID_CHARACTER_ERR : Int = 5;

	public static inline var INVALID_MODIFICATION_ERR : Int = 13;

	public static inline var INVALID_NODE_TYPE_ERR : Int = 24;

	public static inline var INVALID_STATE_ERR : Int = 11;

	public static inline var NAMESPACE_ERR : Int = 14;

	public static inline var NETWORK_ERR : Int = 19;

	public static inline var NOT_FOUND_ERR : Int = 8;

	public static inline var NOT_SUPPORTED_ERR : Int = 9;

	public static inline var NO_DATA_ALLOWED_ERR : Int = 6;

	public static inline var NO_MODIFICATION_ALLOWED_ERR : Int = 7;

	public static inline var QUOTA_EXCEEDED_ERR : Int = 22;

	public static inline var SECURITY_ERR : Int = 18;

	public static inline var SYNTAX_ERR : Int = 12;

	public static inline var TIMEOUT_ERR : Int = 23;

	public static inline var TYPE_MISMATCH_ERR : Int = 17;

	public static inline var URL_MISMATCH_ERR : Int = 21;

	public static inline var VALIDATION_ERR : Int = 16;

	public static inline var WRONG_DOCUMENT_ERR : Int = 4;

	public var code(default,null) : Int;

	public var message(default,null) : String;

	public var name(default,null) : String;

	public function toString() : String {
		return null;
	}
	
}
#end