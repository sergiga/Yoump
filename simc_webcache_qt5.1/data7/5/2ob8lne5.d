   �      8http://chardev.org/js/engine/entities/item/ItemSet.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "327-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function ItemSet(serialized) {
	var i;
	//
	this.id = serialized[0];
	this.name = serialized[1];
	this.itemIds = serialized[2];
	this.bonuses = [];
	for (i = 0; i < serialized[3].length; i++) {
		this.bonuses[i] = (serialized[3][i] != null ? new Spell(
				serialized[3][i]) : null);
	}
	this.requiredPieces = serialized[4];
	this.itemCount = serialized[5];
	this.items = serialized[6]; // [[slot,normalized_name],...]
}
ItemSet.prototype = {
	id : 0,
	name : "",
	bonuses : [],
	requiredPieces : [],
	getActiveSpells : function(characterScope) {
		for ( var i = 0; i < 8; i++) {
			if (this.bonuses[i] != null
					&& characterScope.getEquippedSetItems(this.id) >= this.requiredPieces[i]) {
				characterScope.auras.add(this.bonuses[i]);
			}
		}
	}
};
