   �      7http://chardev.org/js/adapter/facades/GlyphFacade.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "24f-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Glyph} glyph
 * @param {Character} characterScope
 */
function GlyphFacade( glyph, characterScope ) {
	this.__glyph = glyph;
	this.__character = characterScope;
	this.id = glyph.id;
}

GlyphFacade.prototype = {
	__glyph: null,
	__character: null,
	id: 0,
	getName: function() {
		return this.__glyph.spell.name;
	},
	getType: function() {
		return this.__glyph.type;
	},
	getTooltip: function() {
		return SpellTooltip.getHtml( this.__glyph.spell, this.__character);
	},
	getIcon: function() {
		return this.__glyph.spell.icon;
	}
};