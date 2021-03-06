   �      7http://chardev.org/js/gui/character_sheet/BuffBar.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "6f2-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function BuffBar () {
	this.node = Dom.create('div', {'class': 'bb_p'});
	this.eventMgr = new GenericSubject();
	this.eventMgr.registerEvent('remove_buff', ['id']);
	this.eventMgr.registerEvent('add_stack', ['id']);
}

BuffBar.prototype = {
	eventMgr: null,
	node : null,
	/**
	 * 
	 */
	update : function( activeBuffs ) {
		Dom.truncate(this.node);
		
		for( var i in activeBuffs ) {
			this.__showBuff( activeBuffs[i] );
		}
	},
	/**
	 * @param {ActiveBuff} activeBuff
	 */
	__showBuff : function( activeBuff ) {
		var d = Dom.createAt( this.node, 'div', {'class': 'bb_buff', 'backgroundImage': '/images/icons/small/'+activeBuff.icon+'.png'});
		
		Listener.add( d, 'contextmenu', this.__onRemove, this, [activeBuff.id] );
		Listener.add( d, 'click', this.__onClick, this, [activeBuff.id] );

		d.oncontextmenu = function(){return false;};
		d.onmouseout = function(){Tooltip.hide();};
		d.onmousemove = function(){Tooltip.move();};
		
		if( activeBuff.stackable ) {
			d.appendChild(Tools.outline(activeBuff.getStacks()));
		}
		
		var tt = activeBuff.getTooltip();
		
		if( activeBuff.stackable ) {
			if( activeBuff.getStacks() > 1  ) {
				tt += "<div class='tt_note'>Left click to increase and right click to decrease the stack</div>";
			}
			else {
				tt += "<div class='tt_note'>Left click to increase the stack and right click to remove the Buff</div>";
			}
		}
		else {
			tt += "<div class='tt_note'>Right click to remove the Buff</div>";
		}
		
		Listener.add(d,"mouseover",Tooltip.showMovable,Tooltip,[tt]);
	},
	__onRemove : function( id ) {
		this.eventMgr.fire('remove_buff', {'id':id});
	},
	__onClick: function( id ) {
		this.eventMgr.fire('add_stack', {'id':id});
	}
};