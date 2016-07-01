   �      6http://chardev.org/js/engine/entities/Profession.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:30:59 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "5e2-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Character}
 *            character
 * @param {Array}
 *            serialized
 */
function Profession(character, serialized) {
	this.skillLine = new SkillLine(serialized[0]);
	
	this.id = this.skillLine.id;
	this.name = this.skillLine.name;
	this.description = this.skillLine.description;
	
	this.buffSkills = [];
	for ( var i = 0; i < serialized[1].length; i++) {
		var bs = new SkillLineAbility(serialized[1][i]);
		if (bs) {
			this.buffSkills.push(bs);
			SpellCache.set(bs.spell);
		}
	}

	this.character = character;

	this.setLevel(GameInfo.getMaximumProfessionLevel(this.id, character.level));
}

Profession.prototype = {
	id:0, name:"", description: "", buffSkills: [], level: 0, chararcter: null,
	/**
	 * @param {number} level
	 */
	setLevel : function(level) {
		var ml = GameInfo.getMaximumProfessionLevel(this.id, this.character.level);
		if (level > ml) {
			this.level = ml;
		} else {
			this.level = level;
		}
	},
	/**
	 * @returns {Spell}
	 */
	getBuffSpell : function() {
		var hl = 0;
		var b = null;
		for ( var i = 0; i < this.buffSkills.length; i++) {
			var s = this.buffSkills[i];
			if (s.requiredSkillLevel > hl && s.requiredSkillLevel <= this.level) {
				hl = s.requiredSkillLevel;
				b = s;
			}
		}
		if( b == null ) {
			return null;
		}
		return b.spell;
	}
};
///** @private * */
//Profession.prototype.onCharacterLevelChange = function() {
//	this.setLevel(this.level);
//};