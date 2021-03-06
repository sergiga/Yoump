   �      Dhttp://chardev.org/js/engine/character/CharacterSpecialisation.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "305-4d9ca3f4da51d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function CharacterSpecialisation( serialized ) {
	this.id = serialized[0];
	this.bg = serialized[1];
	this.spell = serialized[2] ? new Spell(serialized[2]) : null;
	this.name = serialized[3];
	this.description = serialized[4];
	this.icon = serialized[5];
	this.spells = [];
	for( var i=0; i<serialized[6].length; i++  ) {
		this.spells.push(new Spell(serialized[6][i]));
	}
}

CharacterSpecialisation.prototype = {
		id: 0,
		bg: "",
		spell: null,
		name: "",
		description: "",
		icon: "",
		spells: null,
		/**
		 * @param {Auras} auras
		 */
		getActiveSpells: function( auras ) {
			auras.add(this.spell);
			for( var k in this.spells ) {
				auras.add(this.spells[k]);
			}
		}
};