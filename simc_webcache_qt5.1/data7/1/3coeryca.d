   �      9http://chardev.org/js/gui/list/filter/FilterManager.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "db0-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function FilterManager() {
	this.eventMgr = new GenericSubject();
	this.eventMgr.registerEvent("set_argument_string", []);
	this.eventMgr.registerEvent("create_filter", []);
	
	this.__init();
}

FilterManager.prototype = {
	data: {},
	hidden: {},
	eventMgr: null,
	staticVariables: {},
	
	staticFilters: {},
	customFilters: [],
	
	__init: function() {
		this.data = new Object;
		this.hidden = new Object;
		this.staticVariables = new Object();
		
		this.__initFilters();
	},
	
	__initFilters: function() {
		this.staticFilters = new Object();
		this.customFilters = [];
	},
	
	set: function( data, staticVariables ) {
		
		this.__init();
		
		this.data = data; 
		
		for( var k in staticVariables ) {
			this.staticVariables[staticVariables[k]] = true;
		}
		
	},
	
	addObserver: function( observer ) {
		this.eventMgr.addObserver( observer );
	},
	
	setArgumentString: function( str ) {
		
		var arg, match;
		
		this.__initFilters();
		
		//
		// create static filters
		for( var k in this.staticVariables ) {
			this.__createFilter(k, null, null);
		}	
		
		while( (match = (/(^|;)([^;]+;)/).exec( str )) != null ) {
			
			arg = (/^(\w+)\.(\w+)\.([^;]+);/).exec( match[2] );
			
			if( arg ) {
		
				this.__createFilter( arg[1], arg[2], arg[3] );
				
			}
			str = str.replace( match[0], match[1]);
		}
		
	},
	removeCustomFilter: function( filter ) {
		for( var i=0; i<this.customFilters.length; i++ ) {
			if( this.customFilters[i] == filter ) {
				this.customFilters.splice( i, 1 );
				return;
			}
		}
		throw new Error("Unable to remove filter "+filter+"!");
	},
	getArgumentString: function() {
		var str = "";
		for( var k in this.staticFilters ) {
			str += this.staticFilters[k].getArgumentString();
		}
		for( var i=0; i<this.customFilters.length; i++ ) {
			str += this.customFilters[i].getArgumentString();
		}
		return str;
	},
	__createFilter: function( variable, operator, value ) {
		var data = this.data[variable];
		
		if( data == null ) {
			throw new Error("Unable to find filter data for "+variable+" (with "+operator+" "+value+")!");
		}
		
		var f = data.getFilter( operator, value );
		
		if( this.staticVariables[variable] ) {
			this.staticFilters[variable] = f;
		}
		else {
			this.customFilters.push(f);
		}
		
		return f;
	},
	getCustomFilter: function( variable ) {
		
		if( this.staticVariables[variable] ) {
			throw new Error("Unable to create custom filter for static filter variable: "+variable+"!");
		}
		
		return this.__createFilter(variable, null, null);
	},
	hideFilter: function( variable, b ) {
		if( b ) {
			this.hidden[variable] = true;
		}
		else {
			delete this.hidden[variable];
		}
	},
	getCustomFilterOptions: function() {
		var os = {};
		for( var k in this.data ) {
			if( this.staticVariables[this.data[k].variable] ) {
				continue;
			}
			if( this.hidden[this.data[k].variable]) {
				continue;
			}
			os[k] = this.data[k];
		}
		return os;
	},
	getCustomFilters: function() {
		var cs = [];
		for( var k in this.customFilters ) {
			if( this.hidden[this.customFilters[k].variable]) {
				continue;
			}
			cs.push(this.customFilters[k]);
		}
		return cs;
	},
	getStaticFilters: function() {
		var ss = [];
		for( var k in this.staticFilters ) {
			if( this.hidden[k]) {
				continue;
			}
			ss.push(this.staticFilters[k]);
		}
		return ss;
	}
};

