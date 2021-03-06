   �      7http://chardev.org/js/adapter/facades/SpellFacade.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "2da-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Spell} spell
 * @param {Character} characterScope
 */
function SpellFacade( spell, characterScope ) {
	this.__spell = spell;
	this.__character = characterScope;
	this.name = spell.name;
	this.id = spell.id;
	this.icon = spell.icon;
}

SpellFacade.prototype = {
	__spell: null, __character: null, name:'', icon: '', id: '',
	getDescription: function() {
		this.__spell.setLevel(this.__character.level);
		return this.__spell.getDescription( this.__character );
	},
	getTooltip: function() {		
		return SpellTooltip.getHtml(this.__spell, this.__character);
	},
	getExtendedTooltip: function( type, args) {		
		return SpellTooltip.getHtml(this.__spell, this.__character);
	}
};