   �      <http://chardev.org/js/engine/entities/SkillLineAbility.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "1e1-4d9ca3f4db4bd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} serialized
 */
function SkillLineAbility(serialized) {
	this.id = serialized[0];
	this.spell = serialized[1] ? new Spell(serialized[1]) : null;
	this.raceMask = serialized[2];
	this.classMask = serialized[3];
	this.requiredSkillLevel = serialized[4];
	this.replaceSpellId = serialized[5];
}
SkillLineAbility.prototype = {
	id : 0,
	spell : null,
	classMast : 0,
	raceMask : 0,
	requiredSkillLevel : 0,
	replaceSpellId : 0
};