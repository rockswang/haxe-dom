package hxdom.html.idb;

import hxdom.html.Element;
import hxdom.html.NodeList;

#if js
typedef Index = js.html.idb.Index;
#else
class Index {
	
	public var keyPath(default,null) : Any;

	public var multiEntry(default,null) : Bool;

	public var name(default,null) : String;

	public var objectStore(default,null) : ObjectStore;

	public var unique(default,null) : Bool;

	/** <p>Returns an <a title="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest">IDBRequest</a> object, and in a separate thread, returns the number of records within a key range. For example, if you want to see how many records are between keys 1000 and 2000 in an object store, you can write the following: <code> var req = store.count(<a title="en/IndexedDB/IDBKeyRange" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBKeyRange">IDBKeyRange</a>.bound(1000, 2000));</code></p>
<pre>IDBRequest count (
  in optional any key
) raises (IDBDatabaseException);
</pre>
<div id="section_15"><span id="Parameters_3"></span><h5 class="editable">Parameters</h5>
<dl> <dt>key</dt> <dd>The key or key range that identifies the record to be counted.</dd>
</dl></div><div id="section_16"><span id="Returns_3"></span><h5 class="editable">Returns</h5>
<dl> <dt><code><a href="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal">IDBRequest</a></code></dt>
</dl>
<dl> <dd>A request object on which subsequent events related to this operation are fired.</dd>
</dl>
</div><div id="section_17"><span id="Exceptions_3"></span><h5 class="editable">Exceptions</h5>
<p>This method can raise a <a title="en/IndexedDB/IDBDatabaseException" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException">IDBDatabaseException</a> with the following code:</p>
<table class="standard-table"> <thead> <tr> <th scope="col" width="131">Attribute</th> <th scope="col" width="698">Description</th> </tr> </thead> <tbody> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#DATA ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#DATA_ERR">DATA_ERR</a></code></td> <td>The <code>key</code> parameter was not a valid value.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR">NOT_ALLOWED_ERR</a></code></td> <td>The request was made on a source object that has been deleted or removed.</td> </tr> </tbody>
</table>
</div> Throws DatabaseException. */
	@:overload( function( ?range : KeyRange ) :Request {} )
	public function count( key : Key ) : Request {
		return null;
	}

	/** <p>Returns an <a title="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest">IDBRequest</a> object, and, in a separate thread, finds either:</p>
<ul> <li>The value in the referenced object store that corresponds to the given key.</li> <li>The first corresponding value, if <code>key</code> is a key range.</li>
</ul>
<p>If a value is successfully found, then a structured clone of it is created and set as the <code><a title="en/IndexedDB/IDBRequest#attr result" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest#attr_result">result</a></code> of the request object.</p>
<p></p><div class="note"><strong>Note:</strong>&nbsp;This method produces the same result for: a) a record that doesn't exist in the database and b) a record that has an undefined value. To tell these situations apart, call the openCursor() method with the same key. That method provides a cursor if the record exists, and not if it does not.</div>
<p></p>
<pre>IDBRequest get (
  in any key
) raises (IDBDatabaseException);
</pre>
<div id="section_7"><span id="Parameters"></span><h5 class="editable">Parameters</h5>
<dl> <dt>key</dt> <dd>The key or key range that identifies the record to be retrieved.</dd>
</dl>
</div><div id="section_8"><span id="Returns"></span><h5 class="editable">Returns</h5>
<dl> <dt><code><a href="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal">IDBRequest</a></code></dt>
</dl>
<dl> <dd>A request object on which subsequent events related to this operation are fired.</dd>
</dl>
</div><div id="section_9"><span id="Exceptions"></span><h5 class="editable">Exceptions</h5>
<p>This method can raise an <a title="en/IndexedDB/IDBDatabaseException" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException">IDBDatabaseException</a> with the following code:</p>
<table class="standard-table"> <thead> <tr> <th scope="col" width="131">Attribute</th> <th scope="col" width="698">Description</th> </tr> </thead> <tbody> <tr> <td><a title="en/IndexedDB/IDBDatabaseException#TRANSACTION INACTIVE ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#TRANSACTION_INACTIVE_ERR"><code>TRANSACTION_INACTIVE_ERR</code></a></td> <td>The index's transaction is not active.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#DATA ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#DATA_ERR">DATA_ERR</a></code></td> <td>The <code>key</code> parameter was not a valid value.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR">NOT_ALLOWED_ERR</a></code></td> <td>The request was made on a source object that has been deleted or removed.</td> </tr> </tbody>
</table>
</div> Throws DatabaseException. */
	@:overload( function( key : KeyRange ) :Request {} )
	public function get( key : Key ) : Request {
		return null;
	}

	/** <p>Returns an <a title="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest">IDBRequest</a> object, and, in a separate thread, finds either:</p>
<ul> <li>The value in the index that corresponds to the given key</li> <li>The first corresponding value, if <code>key</code> is a key range.</li>
</ul>
<p>If a value is successfully found, then a structured clone of it is created and set as the <code><a title="en/IndexedDB/IDBRequest#attr result" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest#attr_result">result</a></code> of the request object.</p>
<p></p><div class="note"><strong>Note:</strong>&nbsp;This method produces the same result for: a) a record that doesn't exist in the database and b) a record that has an undefined value. To tell these situations apart, call the openCursor() method with the same key. That method provides a cursor if the record exists, and not if it does not.</div>
<p></p>
<pre>IDBRequest getKey (
  in any key
) raises (IDBDatabaseException);
</pre>
<div id="section_11"><span id="Parameters_2"></span><h5 class="editable">Parameters</h5>
<dl> <dt>key</dt> <dd>The key or key range that identifies the record to be retrieved.</dd>
</dl>
</div><div id="section_12"><span id="Returns_2"></span><h5 class="editable">Returns</h5>
<dl> <dt><code><a href="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal">IDBRequest</a></code></dt>
</dl>
<dl> <dd>A request object on which subsequent events related to this operation are fired.</dd>
</dl>
</div><div id="section_13"><span id="Exceptions_2"></span><h5 class="editable">Exceptions</h5>
<p>This method can raise a <a title="en/IndexedDB/IDBDatabaseException" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException">IDBDatabaseException</a> with the following code:</p>
<table class="standard-table"> <thead> <tr> <th scope="col" width="131">Attribute</th> <th scope="col" width="698">Description</th> </tr> </thead> <tbody> <tr> <td><a title="en/IndexedDB/IDBDatabaseException#TRANSACTION INACTIVE ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#TRANSACTION_INACTIVE_ERR"><code>TRANSACTION_INACTIVE_ERR</code></a></td> <td>The index's transaction is not active.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#DATA ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#DATA_ERR">DATA_ERR</a></code></td> <td>The <code>key</code> parameter was not a valid value.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR">NOT_ALLOWED_ERR</a></code></td> <td>The request was made on a source object that has been deleted or removed.</td> </tr> </tbody>
</table>
</div> Throws DatabaseException. */
	@:overload( function( key : KeyRange ) :Request {} )
	public function getKey( key : Key ) : Request {
		return null;
	}

	/** <p>Returns an <a title="en/IndexedDB/IDBRequest" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest">IDBRequest</a> object, and, in a separate thread, creates a <a title="en/IndexedDB#gloss cursor" rel="internal" href="https://developer.mozilla.org/en/IndexedDB#gloss_cursor">cursor</a> over the specified key range. The method sets the position of the cursor to the appropriate record, based on the specified direction.</p>
<ul> <li>If the key range is not specified or is null, then the range includes all the records.</li> <li>If at least one record matches the key range, then a <a title="en/IndexedDB/IDBSuccessEvent" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBSuccessEvent">success event</a> is fired on the result object, with its <a title="en/IndexedDB/IDBSuccessEvent#attr result" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBSuccessEvent#attr_result">result</a> set to the new <a title="en/IndexedDB/IDBCursor" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBCursor">IDBCursor</a> object; the <code><a title="en/IndexedDB/IDBCursor#attr value" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBCursor#attr_value">value</a></code> of the cursor object is set to a structured clone of the referenced value.</li> <li>If no records match the key range, then then an <a title="en/IndexedDB/IDBErrorEvent" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBErrorEvent">error event</a> is fired on the request object, with its <code><a title="en/IndexedDB/IDBErrorEvent#attr code" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBErrorEvent#attr_code">code</a></code> set to <code><a href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_FOUND_ERR" rel="internal">NOT_FOUND_ERR</a></code> and a suitable <code><a title="en/IndexedDB/IDBErrorEvent#attr message" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBErrorEvent#attr_message">message</a></code>.</li>
</ul>
<pre>IDBRequest openCursor (
  in optional any? range, 
  in optional unsigned short direction
) raises (IDBDatabaseException);
</pre>
<div id="section_19"><span id="Parameters_4"></span><h5 class="editable">Parameters</h5>
<dl> <dt>range</dt> <dd><em>Optional.</em> The key range to use as the cursor's range.</dd> <dt>direction</dt> <dd><em>Optional.</em> The cursor's required <a title="en/indexedDB#gloss direction" rel="internal" href="https://developer.mozilla.org/en/IndexedDB#gloss_direction">direction</a>. See <a title="en/IndexedDB/IDBCursor#Constants" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBCursor#Constants">IDBCursor Constants</a> for possible values.</dd>
</dl>
</div><div id="section_20"><span id="Returns_4"></span><h5 class="editable">Returns</h5>
<dl> <dt><code><a href="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal">IDBRequest</a></code></dt>
</dl>
<dl> <dd>A request object on which subsequent events related to this operation are fired.</dd>
</dl>
</div><div id="section_21"><span id="Exceptions_4"></span><h5 class="editable">Exceptions</h5>
<p>This method can raise an <a title="en/IndexedDB/IDBDatabaseException" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException">IDBDatabaseException</a> with the following code:</p>
<table class="standard-table"> <thead> <tr> <th scope="col" width="131">Attribute</th> <th scope="col" width="698">Description</th> </tr> </thead> <tbody> <tr> <td><a title="en/IndexedDB/IDBDatabaseException#TRANSACTION INACTIVE ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#TRANSACTION_INACTIVE_ERR"><code>TRANSACTION_INACTIVE_ERR</code></a></td> <td>The index's transaction is not active.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#DATA ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#DATA_ERR">DATA_ERR</a></code></td> <td>The <code>key</code> parameter was not a valid value.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR">NOT_ALLOWED_ERR</a></code></td> <td>The request was made on a source object that has been deleted or removed.</td> </tr> </tbody>
</table>
</div> Throws DatabaseException. */
	@:overload( function( ?range : KeyRange, ?direction : String ) :Request {} )
	public function openCursor( key : Key, ?direction : String ) : Request {
		return null;
	}

	/** <p>Returns an <a title="en/IndexedDB/IDBRequest" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBRequest">IDBRequest</a> object, and, in a separate thread, creates a cursor over the specified key range, as arranged by this index. The method sets the position of the cursor to the appropriate record, based on the specified direction.</p>
<ul> <li>If the key range is not specified or is null, then the range includes all the records.</li> <li>If at least one record matches the key range, then a <a title="en/IndexedDB/IDBSuccessEvent" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBSuccessEvent">success event</a> is fired on the result object, with its <a title="en/IndexedDB/IDBSuccessEvent#attr result" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBSuccessEvent#attr_result">result</a> set to the new <a title="en/IndexedDB/IDBCursor" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBCursor">IDBCursor</a> object; the <code><a title="en/IndexedDB/IDBCursor#attr value" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBCursor#attr_value">value</a></code> of the cursor object is set to the value of the found record.</li> <li>If no records match the key range, then then an <a title="en/IndexedDB/IDBErrorEvent" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBErrorEvent">error event</a> is fired on the request object, with its <code><a title="en/IndexedDB/IDBErrorEvent#attr code" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBErrorEvent#attr_code">code</a></code> set to <code><a href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_FOUND_ERR" rel="internal">NOT_FOUND_ERR</a></code> and a suitable <code><a title="en/IndexedDB/IDBErrorEvent#attr message" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBErrorEvent#attr_message">message</a></code>.</li>
</ul>
<pre>IDBRequest openKeyCursor (
  in optional any? range, 
  in optional unsigned short direction
) raises (IDBDatabaseException);
</pre>
<div id="section_23"><span id="Parameters_5"></span><h5 class="editable">Parameters</h5>
<dl> <dt>range</dt> <dd><em>Optional.</em> The key range to use as the cursor's range.</dd> <dt>direction</dt> <dd><em>Optional.</em> The cursor's required direction. See <a title="en/IndexedDB/IDBCursor#Constants" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBCursor#Constants">IDBCursor Constants</a> for possible values.</dd>
</dl>
</div><div id="section_24"><span id="Returns_5"></span><h5 class="editable">Returns</h5>
<dl> <dt><code><a href="https://developer.mozilla.org/en/IndexedDB/IDBRequest" rel="internal">IDBRequest</a></code></dt>
</dl>
<dl> <dd>A request object on which subsequent events related to this operation are fired.</dd>
</dl>
</div><div id="section_25"><span id="Exceptions_5"></span><h5 class="editable">Exceptions</h5>
<p>This method can raise an <a title="en/IndexedDB/IDBDatabaseException" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException">IDBDatabaseException</a> with the following code:</p>
<table class="standard-table"> <thead> <tr> <th scope="col" width="131">Attribute</th> <th scope="col" width="698">Description</th> </tr> </thead> <tbody> <tr> <td><a title="en/IndexedDB/IDBDatabaseException#TRANSACTION INACTIVE ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#TRANSACTION_INACTIVE_ERR"><code>TRANSACTION_INACTIVE_ERR</code></a></td> <td>The index's transaction is not active.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#DATA ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#DATA_ERR">DATA_ERR</a></code></td> <td>The <code>key</code> parameter was not a valid value.</td> </tr> <tr> <td><code><a title="en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR" rel="internal" href="https://developer.mozilla.org/en/IndexedDB/IDBDatabaseException#NOT_ALLOWED_ERR">NOT_ALLOWED_ERR</a></code></td> <td>The request was made on a source object that has been deleted or removed.</td> </tr> </tbody>
</table>
</div> Throws DatabaseException. */
	@:overload( function( ?range : KeyRange, ?direction : String ) :Request {} )
	public function openKeyCursor( key : Key, ?direction : String ) : Request {
		return null;
	}
	
}
#end