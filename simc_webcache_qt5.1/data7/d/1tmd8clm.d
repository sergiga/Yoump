   �      ;http://chardev.org/js/adapter/facades/CharacterFacade.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "74d-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Character} character
 */
function CharacterFacade( character ) {
	var itm, i, j;
	
	this.__character = character;
	
	this.level = character.level;
	this.name = character.name ? character.name : "";
	this.description = character.description ? character.description : "";
	
	this.items = [];
	for( i = 0; i<Inventory.SLOTS; i++ ) {
		itm = character.getEquippedItem(i, 0);
		if( itm ) {
			this.items[i] = new EquippedItem ( character, character.getEquippedItem(i, 0), i );
		}
		else {
			this.items[i] = null;
		}
	}
	
	this.glyphs = [];
	if( character.chrClass ) {
		var gs = character.chrClass.glyphs;
		for( i=0; i< gs.length; i++ ) {
			for( j=0; j< gs[i].length; j++ ) {
				if( ! gs[i][j] ) {
					continue;
				}
				this.glyphs.push( new GlyphFacade(gs[i][j], character));				
			}
		}
	}
}
CharacterFacade.prototype = {
	__character: null, level: 0, name: '', description: '', items: [],
	glyphs: [],
	getCharacterClassId: function() {
		return this.__character.chrClass ? this.__character.chrClass.id : 0;
	},
	getCharacterRaceId: function() {
		return this.chrRaceId = this.__character.chrRace ? this.__character.chrRace.id : 0;
	},
	getAvailableGlyphSlots: function() {
		if( this.getCharacterClassId() != 0 ) {
			return GameInfo.getAvailabelGlyphSlots(this.__character.level);
		}
		else {
			return 0;
		}
	},
	getStatTooltip: function( group, index ) {
		return StatTooltip.getHtml(this.__character, group, index);
	},
	getStats: function() {
		return this.__character.stats;
	},
	getShapeform: function() {
		return this.__character.chrClass ? this.__character.chrClass.shapeform : 0;
	},
	getTalentDistribution: function() {
		return this.__character.getTalentDistribution();
	},
	getTalents: function() {
		return this.__character.getTalents();
	}
};