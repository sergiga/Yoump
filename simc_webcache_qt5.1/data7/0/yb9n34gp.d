   �      3http://chardev.org/js/engine/cache/SpellCache.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "460-4d9ca3f4da51d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js var SpellCache = {};
(function() {
	var elements = {};
	/**
	 * @param {Array} data
	 * @param {Handler} handler
	 */
	function asyncGetHandler( data, handler ) {
		if ( data !== null ) 
		{
			var spell = new Spell(data);
			SpellCache.set(spell);
			handler.notify([spell]);
		}
	}
	/**
	 * @param {number} id 
     * @return {Spell}
	 */
	SpellCache.get = function( id ) {
		return typeof elements[id] === "undefined" ? null : elements[id];
	};
	/**
	 * @param {Spell} spell
	 */
	SpellCache.set = function( spell ) {
		elements[spell.id] = spell.clone();
	};
	/**
	 * @param {number} id 
     * @return {boolean}
	 */
	SpellCache.contains = function(id) { 
		return typeof elements[id] === "undefined" ? false : true; 
	};
	/**
	 * @param {number} id
	 * @param {Handler} handler
	 */
	SpellCache.asyncGet = function( id, handler ){
		var spell = SpellCache.get(id);
		if(spell) {
			handler.notify([spell]);
		}
		else {
			Ajax.get(	
				'/api/spell.php'+TextIO.queryString({ 'id': id }),
				new Handler(asyncGetHandler, this),
				[handler]
			);
		}
	};
})();