   �      -http://chardev.org/js/common/LinkedList.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:30:59 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "618-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * Constructs a new double linked list element, may only be called by {@link LinkedList}
 * @constructor
 * @param {Object} value
 */
function ListElement ( value ) {
	this.next = null;
	this.prev = null;
	this.value = value;
}

ListElement.prototype = {
	next: new ListElement(null),
	prev: new ListElement(null),
	isLast: false,
	isFirst: false,
	value: null,
	/**
	 * Removes this element from the parent list
	 * @returns {boolean} <code>true</code>, if successful, false if the element is not removable (start/end padding element)
	 */
	remove: function() {
		if( this.isFirst || this.isLast ) {
			return false;
		}
	
		this.prev.next = this.next;
		this.next.prev = this.prev;
		return true;
	}
};

/**
 * Constructs a new double linked list
 * @constructor
 */
function LinkedList (){
	this.first = new ListElement(null);
	this.last = new ListElement(null);
	
	this.last.prev = this.first;
	this.first.next = this.last;
	this.last.isLast = true;
	this.first.isFirst = true;
}
LinkedList.prototype = {
	first: new ListElement(null),
	last: new ListElement(null),
	
	/**
	 * Adds a new element to the end of the list
	 * @param value
	 * @returns {ListElement} addedElement
	 */
	push: function( value ) {
		var e = new ListElement( value );
		e.next = this.last;
		e.prev = this.last.prev;
		this.last.prev.next = e;
		this.last.prev = e;
		return e;
	},
	
	/**
	 *	Removes all Elements
	 */
	clear: function(){
		this.first.next = this.last;
		this.last.prev = this.first;
	}
};