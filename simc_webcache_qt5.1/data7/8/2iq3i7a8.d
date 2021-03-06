   �      ;http://chardev.org/js/engine/character/CharacterClass.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "26c4-4d9ca3f4da51d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param serialized
 */
function CharacterClass( serialized ) {
	this.eventMgr = new GenericSubject();
	this.eventMgr.registerEvent('shapeform_change', ['new_shape','old_shape']);
	this.eventMgr.registerEvent('presence_change', ['new_presence','old_presence']);
	this.eventMgr.registerEvent('glyph_added', ['glyph']);
	this.eventMgr.registerEvent('glyph_removed', ['glyph']);
	this.eventMgr.registerEvent("specialisation_change", ["index"]);
	//
	var i,j=0;
	this.serialized = serialized;
	this.stats = [];
	this.level = -1; 
	this.shapes = null;
	this.glyphs = [[null,null,null],[null,null,null]/*,[null,null,null]*/];
	this.id = serialized[0];
	this.name = serialized[1];
	this.talents = new Talents(serialized[2]);
	this.baseStats = serialized[3]; // str, agi, ... , dodge_per_agi
	this.shapesRef = {};
	
	this.classSpells = [];
	for( i=0;i<serialized[4].length;i++){
		this.classSpells[i] = new SkillLineAbility(serialized[4][i]);
	}
	this.availableGlyphs = [];
	for( j=0;j<serialized[5].length;j++) {
		for( i=0;i<serialized[5][j].length;i++){
			this.availableGlyphs.push(new Glyph(serialized[5][j][i]));
		}
	}
	if( serialized[6] ) {
		this.shapes = [];
		for( i=0;i<serialized[6].length; i++ ) {
			this.shapes[i] = new Shapeform(serialized[6][i]);
			this.shapesRef[this.shapes[i].id] = this.shapes[i];
		}
	}
	if( serialized[7] ) {
		this.presences = [];
		for( i=0;i<serialized[7].length; i++ ) {
			var s = new Spell(serialized[7][i]);
			this.presences.push(s); 
			SpellCache.set(s);
		}
	}
	
	this.conditionalBuffs = serialized[8];
	
	this.specs = [];
	for( i=0; i<serialized[9].length; i++ ) {
        
        if( serialized[9][i] === null ) {
            continue;
        }
        
		this.specs.push(new CharacterSpecialisation(serialized[9][i]));
	}
}
CharacterClass.prototype = {
	/** @type{GenericSubject} **/
	eventMgr : null,
	/** @type{number} **/
	id: 0,
	/** @type{string} **/
	name: "",
	/** @type{number} **/
	level: 0,
	/** @type{number} **/
	shapeform: 0,
	/** @type{Shapeform} **/
	shape: null,
	shapes: null,
	shapesRef: null,
	/** @type{Array} **/
	glyphs: null,
	availableGlyphs: null,
	availableGlyphSlots: 0,
	talents: null,
	/** @type{Buff} **/
	presence: null,
	presences: null,
	classSpells: null,
	baseStats: null,
	selectedSpec: -1,
	/** @type {Array} */
	specs: null,
	//
	//#########################################################################
	//
	//	METHODS
	//
	//#########################################################################
	//
	addPropagator: function( event, propagator ) {
		this.eventMgr.addPropagator(event, propagator);
	},
	removePropagator: function( event, propagator ) {
		this.eventMgr.removePropagator(event, propagator);
	},
	addObserver: function( observer ) {
		this.eventMgr.addObserver(observer);
	},
	removeObserver: function( observer ) {
		this.eventMgr.removeObserver(observer);
	},
	setLevel: function( level ) {
		this.level = level;
		this.talents.setLevel(level);
		
		this.availableGlyphSlots = GameInfo.getAvailabelGlyphSlots(level);
		
		for( var i=this.availableGlyphSlots; i<3; i++ ) {
			this.glyphs[0][i] = null;
			this.glyphs[1][i] = null;
//			this.glyphs[2][i] = null;
		}
	},
	//
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	//
	//	PRESENSE AND SHAPEFORM
	//
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	//
	setShapeform: function( shapeform ) {
		var oldShape = this.shape;
		this.shapeform = shapeform;
		if( this.shapeform != 0 ) {
			
			if( this.shapesRef[this.shapeform] ) {
				this.shape = this.shapesRef[this.shapeform];
			}
			else {
				throw new Error("Invalid shapeform");
			}
		}
		else {
			this.shape = null;
		}

		this.eventMgr.fire('shapeform_change', {'new_shape': this.shape, 'old_shape': oldShape} );
		
	},
	setPresence: function( presenceId ) {
		var oldPresence = this.presence;
		if( presenceId == 0 ) {
			
			this.presence = null;
			
			this.eventMgr.fire('presence_change', {'new_presence': this.presence, 'old_presence': oldPresence} );
		}
		else {
			for( var i=0; i<this.presences.length; i++ ) {
				
				if( this.presences[i].id == presenceId ) {
					
					this.presence = new Buff( this.presences[i], 1 );
					
					this.eventMgr.fire('presence_change', {'new_presence': this.presence, 'old_presence': oldPresence} );
					
					return;
				}
			}
			throw new Error('Unable to set presence '+presenceId);
		}
	},
	//
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	//
	//	ACTIVE SPELLS
	//
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	//
	/**
	 * @param {Auras} auras
	 */
	getActiveSpells: function( auras ) {
		var cr, i, j;
		
		if( this.shapeform != 0 ) {
			var shape = this.shapesRef[this.shapeform];
			//
			//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			//
			//
			// Recent Changes:
			//
			// 02 / 21 / 2011
			//
			// auras.addBuff( shape.buff, 1 );
			//
			// --	Obsolete, the Shape Buff is added like a Buff and therefore handled 
			// --	by the Buffs.getActiveSpells Method.
			//
			// 02 / 25 / 2011
			//
			for( i=0; i<shape.buffs.length; i++ ) {
				auras.addBuff( shape.buffs[i] );
			}
			//
			// Not anymore, any buff added internally by chardev is not handled as
			// buff. This shall prevent any spell from being added twice, or not
			// at all, if the buff is not added, but the spell is actually active,
			// e.g. talents with aura-effects.
			//
			// 04 / 28 / 2011
			//
			// Now, only these internally added buffs marked as "dummy" are not 
			// taken into account when calculating. As shape buffs are handled as
			// active spells (See Character and Shapeform), the buffs are mere
			// dummies
			//
			//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
			//
			//
			//	Add passive Auras
			//
			for( i=0;i<shape.auras.length;i++) {
				auras.add(shape.auras[i]);
			}
		}
		
		if( this.presence ) {
			auras.addBuff( this.presence );
		}

		this.talents.getActiveSpells(auras);
		
		for( i=0;i<this.glyphs.length;i++) {
			for( j=0;j<this.glyphs[i].length;j++) {
				if( this.glyphs[i][j] ){
					auras.add( this.glyphs[i][j].spell );
				}
			}
		}
		
		if( this.selectedSpec >= 0 ) {
			this.specs[this.selectedSpec].getActiveSpells(auras);
		}
		
		for( i=0;i<this.classSpells.length;i++){
			cr = this.classSpells[i];
			if( cr.spell == null ) {
				continue;
			}
			if( cr.spell.type[8] & 1<<20 ) {
				switch( this.id ) {
				case 1:
					if( cr.spell.id == 86101 && this.selectedSpec != 0 ||
						cr.spell.id == 86110 && this.selectedSpec != 1 ||
						cr.spell.id == 86535 && this.selectedSpec != 2
					){
						continue;
					}
					break;
				case 2:
					if( cr.spell.id == 86103 && this.selectedSpec != 0 ||
						cr.spell.id == 86102 && this.selectedSpec != 1 ||
						cr.spell.id == 86539 && this.selectedSpec != 2 
					){
						continue;
					}
					break;
				case 6:
					if( cr.spell.id == 86537 && this.selectedSpec != 0 ||
						cr.spell.id == 86536 && this.selectedSpec != 1 ||
						cr.spell.id == 86113 && this.selectedSpec != 2
					){
						continue;
					}
					break;
				case 7:
					if( cr.spell.id == 86100 && this.selectedSpec != 0 ||
						cr.spell.id == 86099 && this.selectedSpec != 1 ||
						cr.spell.id == 86108 && this.selectedSpec != 2
					){
						continue;
					}
					break;
				case 11:
					if( cr.spell.id == 86093 && this.selectedSpec != 0 ||
						cr.spell.id == 86096 && ( this.selectedSpec != 1 || (1<<this.shapeform&(1<<BEAR|1<<DIRE_BEAR)) == 0 ) ||
						cr.spell.id == 86097 && ( this.selectedSpec != 1 || (1<<this.shapeform&1<<CAT) == 0 ) ||
						cr.spell.id == 86104 && this.selectedSpec != 2
					){
						continue;
					}
					break;
					
				}
			}
			if( (1<<(this.id-1)) & cr.classMask ||  cr.classMask <= 0 ) {
				auras.add(cr.spell);
			}
		}
	},
	//
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	//
	//	ADD, REMOVE GLYPHS
	//
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	//
	/**
	 * @param {Glyph} glyph
	 */
	addGlyph: function( glyph ) {
		var i, n = -1;
		if( this.availableGlyphSlots == 0  ) {
			throw new NoGlyphSlotsException(); 
		}
		for( i=0; i<this.availableGlyphSlots; i++ ) {
			if( this.glyphs[glyph.type][i] == null ) {
				n = n == -1 ? i : n;
				continue;
			}
			if( this.glyphs[glyph.type][i].id == glyph.id ) {
				throw new Error("Unable to add Glyph, this Glyph is already in use!");
			}
		}
		if( n==-1 ) {
			throw new NoGlyphSlotsException();
		}
		
		this.glyphs[glyph.type][n] = glyph;
		this.eventMgr.fire('glyph_added', { 'glyph': glyph });
	},
	/**
	 * @param {number} type
	 * @param {number} index
	 */
	removeGlyph: function( type, index ) {
		var glyph = this.glyphs[type][index];
		this.glyphs[type][index] = null;
		this.eventMgr.fire( 'glyph_removed', { 'glyph': glyph } );
	},
	//
	//
	//	SPECIALISATION
	//
	//
	setSpecialisation: function( index ) {
		if( this.specs[index] ) {
			this.selectedSpec = index;
			this.eventMgr.fire("specialisation_change", {"index": index});
		}
		else {
			throw new Error("Unable to set specialisation: no specialisation for index "+index+" found!");
		}
	},
    /**
     * Returns the currently selected specialisation.
     * 
     * @returns {CharacterSpecialisation}
     */
    getSpecialisation: function() {
        if( this.selectedSpec === -1 ) {
            return null;
        }
        
        return this.specs[this.selectedSpec];
    }
};