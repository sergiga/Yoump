   �      2http://chardev.org/js/engine/cache/ItemCache.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "3c5-4d9ca3f4da51d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js var ItemCache = {};
(function() {
	var elements = {};
	/**
	 * @param {Array} data
	 * @param {Handler} handler
	 */
	function asyncGetHandler( data, handler ) {
		if ( data != null ) 
		{
			var itm = new Item(data);
			ItemCache.set(itm);
			handler.notify([itm]);
		}
	}
	/**
	 * @param {number} id 
	 */
	ItemCache.get = function( id ) {
		return elements[id];
	};
	/**
	 * @param {Item} itm
	 */
	ItemCache.set = function( itm ) {
		elements[itm.id] = itm.clone();
	};
	/**
	 * @param {number} id 
	 */
	ItemCache.contains = function(id) { 
		return elements[id] || false; 
	};
	/**
	 * @param {number} id
	 * @param {Handler} handler
	 */
	ItemCache.asyncGet = function( id, handler ){
		var itm = ItemCache.get(id);
		if(itm) {
			handler.notify([itm]);
		}
		else {
			Ajax.get(	
				'/api/item.php'+TextIO.queryString({ 'id': id }),
				new Handler(asyncGetHandler, this),
				[handler]
			);
		}
	};
})();