   �      8http://chardev.org/js/adapter/facades/TalentFacade.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "23c-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Talent} talent
 * @param {Character} character
 */
function TalentFacade( talent, character ) {
	this._talent = talent;
	this._character = character;
}

TalentFacade.prototype= {
		_talent: null,
		_character: null,
		getIcon: function() {
			return this._talent.spell.icon;
		},
		getName: function() {
			return this._talent.spell.name;
		},
		getTooltip: function() {
			return SpellTooltip.getHtml(this._talent.spell, this._character);
		},
		isSelected: function() {
			return this._talent.selected;
			
		}
};