   �      <http://chardev.org/js/adapter/CharacterSheetController.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:00 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "3b26-4d9ca3f4d56fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Character} character
 * @param {CharacterSheet} sheet
 */
function CharacterSheetController( character, sheet ) {
	
	this.character = character;
	this.sheet = sheet;
	
	this.character.addObserver(new GenericObserver([
		'class_change','race_change','level_change',
		'item_change','profession_change','profession_level_change',
		'character_loaded','stats_change','preview_stats_change',
		'buffs_change', 'shapeform_change', 'presence_change'
	], new Handler( this._characterHandler, this)));
	
	this.sheet.addObserver(new GenericObserver([
		'race_select','class_select','level_select','profession_select',
		'profession_level_select','stat_tooltip_show','stat_tooltip_hide',
		'item_left_click','item_right_click','item_tooltip_show',
		'item_tooltip_hide', 'select_shape', 'select_presence', 'remove_buff', 
		'add_stack'
	], new Handler( this._sheetHandler, this)));
	
	this.update();
}

CharacterSheetController.prototype = {
	sheet: null, 
	character: null,
	/**
	 * @param {GenericEvent} e
	 */
	_characterHandler: function( e ) {
		if( e.is('class_change') ) {
			this.updateClass();
		}
		else if( e.is('race_change') ) {
			this.updateRace();
		}
		else if( e.is('level_change') ) {
			this.updateLevel();
		}
		else if( e.is('item_change') ) {
			this.updateSlot(e.get('slot'));
		}
		else if( e.is('profession_change') ) {
			this.updateProfessions();
		}
		else if( e.is('profession_level_change') ) {
			this.updateProfessions();
		}
		else if( e.is('character_loaded') ) {
			this.update();
		}
		else if( e.is('stats_change') ) {
			this.updateStats( e.get('stats') );
		}
		else if( e.is('buffs_change') ) {
			this.updateBuffs();
		}
		else if( e.is('preview_stats_change') ) {
			this.updatePreviewStats( e.get('previewStats') );
		}
		else if( e.is('shapeform_change') ) {
			this.updateShapeSelector();
		}
		else if( e.is('presence_change') ) {
			this.updatePresenceSelector();
		}
		else {
			throw new Error("Unhandled event: "+e.event);
		}
	},
//	/**
//	 * @param {GenericEvent} e
//	 */
//	_characterHandler: function( e ){
//		if(e.is("talents_select")) {
//			this.gui.talentsGui.select(e.get("row"), e.get("col"));
//			this.gui.talentsGui.setDistribution(this.character.chrClass.id, this.character.getTalentDistribution());
//		}
//		else if(e.is("talents_deselect")) {
//			this.gui.talentsGui.deselect(e.get("row"), e.get("col"));
//			this.gui.talentsGui.setDistribution(this.character.chrClass.id, this.character.getTalentDistribution());
//		}
//		else if(e.is("talents_tiers_change")) {
//			this.gui.talentsGui.setAvailableTiers(e.get("tiers"));
//			this.gui.talentsGui.setDistribution(this.character.chrClass.id, this.character.getTalentDistribution());
//		}
//		else if(e.is("talents_reset")) {
//			this.gui.talentsGui.reset();
//		}
//		else if(e.is("talents_set_distribution")) {
//			this.gui.talentsGui.setDistribution(this.character.chrClass.id, this.character.getTalentDistribution());
//		}
//		else if(e.is("race_change")) {
//			/* nothing to do */
//		}
//		else if(e.is("class_change")) {
//			this._updateClass(e.get("class"));
//		}
//		else if(e.is("character_loaded")) {
//			this.glyphInterfaceController.update();
//		}
//		else if(e.is("gem_change")) {
//			if ( this.guiTab == Gui.TAB_CHARACTER_SHEET && this.csTab == Gui.TAB_GEMS ) {
//				this.socketInterfaceController.update();
//			}
//		}
//		else if(e.is("item_change")) {
//			if( e.get("slot") == this.slot ) {
//				switch( this.guiTab ) {
//				case Gui.TAB_OVERVIEW:
//					this.updateOverviewTab();
//					break;
//				case Gui.TAB_CHARACTER_SHEET:
//					switch( this.csTab ) {
//					case Gui.TAB_GEMS:
//						this.socketInterfaceController.update();
//						break;
//					case Gui.TAB_REFORGE:
//						this.reforgeInterfaceController.update();
//						break;
//					case Gui.TAB_ENCHANTS:
//						this.enchantInterfaceController.update();
//						break;
//					}
//					break;
//				}
//			}
//		}
//		else if(e.is("reforge_change")) {
//			//
//			// assuming a reforge change may only occur when in reforge tab
//			if( this.guiTab == Gui.TAB_CHARACTER_SHEET && this.csTab == Gui.TAB_REFORGE ) {
//				this.reforgeInterfaceController.update();
//			}
//		}
//		else if(e.is("random_enchant_change")) {
//			if ( this.guiTab == Gui.TAB_CHARACTER_SHEET && this.csTab == Gui.TAB_ENCHANTS ) {
//				this.enchantInterfaceController.update();
//			}
//		}
//		else if(e.is("glyph_removed")) {
//			this.glyphInterfaceController.update();
//		}
//		else if(e.is("glyph_added")) {
//			this.glyphInterfaceController.update();
//		}
//		else {
//			throw new Error("Unhandled event: "+e.event);
//		}
//	},
	/**
	 * @param {GenericEvent} e
	 */
	_sheetHandler: function( e ) {
		if( e.is('race_select')) {
			DatabaseIO.getCharacterRace( 
				e.get('race_id'), 
				new Handler( this.__selectRace, this) 
			);
			Tooltip.showLoading();
		}
		else if( e.is('class_select')) {
			DatabaseIO.getCharacterClass( 
				e.get('class_id'), 
				new Handler( this.__selectClass, this) 
			);
			Tooltip.showLoading();
		}
		else if( e.is('level_select')) {
			try {
				this.character.setLevel( e.get('level') );
			}
			catch( ex ) {
				if( ex instanceof InvalidCharacterLevelException ) {
					Tooltip.showError(ex.toString());	
				}
				else {
					Tools.rethrow(ex);
				}
			}
		}
		else if( e.is('profession_select')) {
			this.character.setProfession(e.get('index'), e.get('id'));
		}
		else if( e.is('profession_level_select')) {
			this.character.setProfessionLevel(e.get('index'), e.get('level'));
		}
		else if( e.is('stat_tooltip_show')) {
			var html = StatTooltip.getHtml(this.character, e.get('group'), e.get('index'));
			
			if( ! html ) {
				return;
			}
			
			Tooltip.showStat( html, e.get('node') );
		}
		else if( e.is('stat_tooltip_hide')) {
			Tooltip.hide();
		}
		else if( e.is('item_left_click')) {
			if( e.get('index') > 0 && this.character.getEquippedItem( e.get('slot'), e.get('index') ) != null ) {
				this.character.swapItems(e.get('slot'), e.get('index'));
				this.sheet.hideSlotTooltip(e.get('slot'), e.get('index'));
			}
			else {
				this.sheet.selectSlot(e.get('slot'));
			}
		}
		else if( e.is('item_right_click')) {
			if( e.get('index') == 0 ) {
				this.character.removeItem(e.get('slot'));
				this.sheet.hideSlotTooltip(e.get('slot'), e.get('index'));
			}
		}
		else if( e.is('item_tooltip_show')) {
			var itm = this.character.getEquippedItem( e.get('slot'), e.get('index') );
			if( itm ) {
				if( e.get('index') > 0 ) {
					this.character.setItemPreview( e.get('slot'), itm);
				}
			}
		}
		else if( e.is('item_tooltip_hide')) {
			if( e.get('index') > 0 ) {
				this.character.removeItemPreview();
			}
		}
		else if( e.is('select_shape')) {
			this.character.setShapeform(e.get('shape_id'));
		}
		else if( e.is('select_presence')) {
			this.character.setPresence(e.get('presence_id'));
		}
		else if( e.is('remove_buff') ) {
			var id = e.get('id');
			this.character.removeBuff(id);
			// hide tooltip if buff is no longer active
			if( ! this.character.isBuffActive(id)) {
				Tooltip.hide();
			}
		}
		else if( e.is('add_stack') ) {
			this.character.addStack(e.get('id'));
		}
		else {
			throw new Error("Unhandled event: "+e.event);
		}
	},
	__selectRace: function( serializedChrRace ) {
		var oldChrClassId = this.character.chrClass == null ? -1 : this.character.chrClass.id;
		var newChrClassId;
		
		this.character.setRace( new CharacterRace( this.character, serializedChrRace ) );
		
		newChrClassId = this.character.chrClass == null ? -1 : this.character.chrClass.id;
		
		if( oldChrClassId != newChrClassId || newChrClassId == -1 ) {
			this.sheet.raceClassSelector.showClassSelector();
		}
		else {
			Tooltip.enable();
		}
	},
	__selectClass: function( serializedChrClass ) {
        try {
		    this.character.setClass( new CharacterClass( serializedChrClass ));
            Tooltip.enable();
        }
        catch( e ) {
            if( e instanceof IllegalRaceClassException ) {
                Tooltip.showError(e.toString());
            }
            throw e;
        }
	},
	//
	//#########################################################################
	//
	// Methods
	//
	//#########################################################################
	//
	update: function() {
		this.updateProfessions();
		this.updateStats(this.character.stats);
		this.updateRace();
		this.updateClass();
		this.updateEquipment();
		this.updateLevel();
		this.updateBuffs();
	},
	updateClass: function() {
		this.sheet.showStatGroups(this.character.chrClass == null ? - 1 : this.character.chrClass.id);
		this.sheet.updateLevelSelector( this.character.getMinLevel(), Character.MAX_LEVEL);

		this.updateShapeSelector();
		this.updatePresenceSelector();
		this.updateRaceClassSelector();
		this.updateEquipment();
		this.updateLevel();
	},
	updateShapeSelector: function() {
		if( this.character.chrClass != null ) {
			var availShapes = [];
			for( var k in this.character.chrClass.shapes ) {
				var shapeform = this.character.chrClass.shapes[k];
				availShapes.push(new AvailableShapeform(
						shapeform.id, 
						shapeform.buffs[0].spell.icon, 
						shapeform.buffs[0].spell.getDescription(this.character).join("<br />")
				));
			}
			
			this.sheet.shapeSelector.update( availShapes, this.character.chrClass.shapeform);
			
			
		}
		else {
			this.sheet.shapeSelector.update( null, 0);
		}
	},
	updatePresenceSelector: function() {
		if( this.character.chrClass != null ) {
			var availPresences = [];
			for( var k in this.character.chrClass.presences ) {
				var presence = this.character.chrClass.presences[k];
				availPresences.push(new AvailablePresence(
						presence.id, 
						presence.icon, 
						presence.getDescription(this.character).join("<br />")
				));
			}
			this.sheet.presenceSelector.update( availPresences, this.character.chrClass.presence ? this.character.chrClass.presence.spell.id : 0 );
		}
		else {
			this.sheet.presenceSelector.update( null, 0);
		}
	},
	updateRace: function() {
		this.updateRaceClassSelector();
	},
	updateLevel: function() {
		this.sheet.updateLevel(this.character.level);
		this.updateEquipment();
	},
	updateRaceClassSelector: function() {
		this.sheet.raceClassSelector.update( 
			this.character.chrRace == null ? -1 : this.character.chrRace.id, 
			this.character.chrClass == null ? - 1 : this.character.chrClass.id 
		);
	},
	updateProfessions: function() {
		var skilledProfs = [];
		for( var i=0; i<2; i++ ) {
			var prof = this.character.primaryProfessions[i];
			if( prof == null ) {
				skilledProfs.push( null );
			}
			else {
				skilledProfs.push(new SkilledPrimaryProfession(prof.id, prof.level));
			}
		}
		this.sheet.updateProfessions(skilledProfs, this.character.level);
	},
	updateSlot: function( slot ) {
		var equippedItems = [];
		var itm;
		for( var j=0; j<5; j++ ) {
			itm = this.character.getEquippedItem( slot, j );
			if( itm == null ) {
				equippedItems.push(null);
			}
			else {
				equippedItems.push(new EquippedItem(
					this.character,
					itm,
					slot
				));
			}
		}
		this.sheet.slots[slot].update(equippedItems);
	},
	updateEquipment: function() {
		for( var i=0; i<Inventory.SLOTS; i++ ) {
			this.updateSlot(i);
		}
	},
	updateStats: function( stats ) {
		var i;
		var cCl = this.character.chrClass;

		this.sheet.stats[Stat.GRP_GENERAL][1].node.style.display = 
			cCl != null && GameInfo.hasMana( cCl.id, cCl.shapeform ) ? "block" : "none";
		this.sheet.stats[Stat.GRP_GENERAL][2].node.style.display = 
			cCl != null && GameInfo.hasRage( cCl.id, cCl.shapeform ) ? "block" : "none";
		this.sheet.stats[Stat.GRP_GENERAL][3].node.style.display = 
			cCl != null && GameInfo.hasEnergy( cCl.id, cCl.shapeform ) ? "block" : "none";
		this.sheet.stats[Stat.GRP_GENERAL][4].node.style.display = 
			cCl != null && GameInfo.hasFocus( cCl.id, cCl.shapeform ) ? "block" : "none";
		this.sheet.stats[Stat.GRP_GENERAL][5].node.style.display = 
			cCl != null && GameInfo.hasRunicPower( cCl.id, cCl.shapeform ) ? "block" : "none";
		
		for( i=0; i<this.sheet.stats[Stat.GRP_GENERAL].length; i++ ) {
			this.sheet.stats[Stat.GRP_GENERAL][i].setValue( stats.general[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_ATTRIBUTES].length; i++ ) {
			this.sheet.stats[Stat.GRP_ATTRIBUTES][i].setValue( stats.attributes[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_RESISTANCE].length; i++ ) {
			this.sheet.stats[Stat.GRP_RESISTANCE][i].setValue( stats.resistance[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_SPELL].length; i++ ) {
			this.sheet.stats[Stat.GRP_SPELL][i].setValue( stats.spell[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_DEFENSE].length; i++ ) {
			this.sheet.stats[Stat.GRP_DEFENSE][i].setValue( stats.defense[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_MELEE].length; i++ ) {
			this.sheet.stats[Stat.GRP_MELEE][i].setValue( stats.melee[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_RANGED].length; i++ ) {
			this.sheet.stats[Stat.GRP_RANGED][i].setValue( stats.ranged[i] );
		}
	},
	updatePreviewStats: function( previewStats ) {
		
		if( previewStats == null ) {
			this.resetPreviewStats();
			return;
		}
		
		var i;
		for( i=0; i<this.sheet.stats[Stat.GRP_GENERAL].length; i++ ) {
			this.sheet.stats[Stat.GRP_GENERAL][i].setCompareValue( previewStats.general[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_ATTRIBUTES].length; i++ ) {
			this.sheet.stats[Stat.GRP_ATTRIBUTES][i].setCompareValue( previewStats.attributes[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_RESISTANCE].length; i++ ) {
			this.sheet.stats[Stat.GRP_RESISTANCE][i].setCompareValue( previewStats.resistance[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_SPELL].length; i++ ) {
			this.sheet.stats[Stat.GRP_SPELL][i].setCompareValue( previewStats.spell[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_DEFENSE].length; i++ ) {
			this.sheet.stats[Stat.GRP_DEFENSE][i].setCompareValue( previewStats.defense[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_MELEE].length; i++ ) {
			this.sheet.stats[Stat.GRP_MELEE][i].setCompareValue( previewStats.melee[i] );
		}
		for( i=0; i<this.sheet.stats[Stat.GRP_RANGED].length; i++ ) {
			this.sheet.stats[Stat.GRP_RANGED][i].setCompareValue( previewStats.ranged[i] );
		}
	},
	resetPreviewStats: function() {
		var j,i;
		for( j=0; j<this.sheet.stats.length; j++ ) {
			for( i=0; i<this.sheet.stats[j].length; i++ ) {
				this.sheet.stats[j][i].resetCompare();
			}
		}
	},
	updateBuffs: function() {
		var bs = this.character.getActiveBuffs();
		var abs = [];
		for( var k in bs ) {
			abs.push(new ActiveBuff(bs[k], this.character));
		}
		this.sheet.buffBar.update(abs);
	}
};