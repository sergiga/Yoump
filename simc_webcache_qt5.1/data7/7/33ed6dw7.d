   �      4http://chardev.org/js/gui/widgets/SingleSelect.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "5dc-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {Array} show
 */
function SingleSelect( show ) {
	this.node = document.createElement("select");
	this.node.className = 'single_select';
	this.set(show);
}

/**
 * @param obj
 * @returns {SingleSelect}
 */
SingleSelect.fromObject = function( obj ) {
	var show = [];
	var n = 0;
	for( var k in obj ) {
		show[n++] = [k,obj[k]]; 
	}
	return new SingleSelect(show);
};

SingleSelect.prototype = new SimpleUserControl;

SingleSelect.prototype.node= null;
SingleSelect.prototype.options= [];

SingleSelect.prototype.setName= function( name ) {
	this.node.name = name;
};
SingleSelect.prototype.set= function( show ) {
	var i;
	this.options  = [];
	while( this.node.firstChild ) {
		this.node.removeChild( this.node.firstChild );
	}
	for( i = 0; i < show.length; i++ ) {
		this.options[i] = document.createElement("option");
		this.options[i].value = show[i][0];
		this.options[i].innerHTML = show[i][1];
		this.node.appendChild(this.options[i]);
	}
};
SingleSelect.prototype.select= function( value ) {
	for( var i = 0; i < this.options.length; i++ ) {
		if( this.options[i].value === value ) {
			this.options[i].selected = true;
			return;
		}
	}
};

SingleSelect.prototype.getSelected= function() {
	return this.node.selectedIndex;
};

SingleSelect.prototype.getValue= function() {
	return this.node.options[this.node.selectedIndex].value;
};
SingleSelect.prototype.setValue= function( v ) {
	this.select(v);
};