   �      3http://chardev.org/js/gui/widgets/MultiSelect.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "521-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param show
 */
function MultiSelect( show ) {
	var i;
	this.node = document.createElement("select");
	this.node.className = 'multi_select';
	this.node.multiple = "true";
	this.options  = [];
	for( i = 0; i < show.length; i++ ) {
		this.options[i] = document.createElement("option");
		this.options[i].value = show[i][0];
		this.options[i].innerHTML = show[i][1];
		this.node.appendChild(this.options[i]);
	}
}

/**
 * @param obj
 * @returns {MultiSelect}
 */
MultiSelect.fromObject = function( obj ) {
	var show = [];
	var n = 0;
	for( var k in obj ) {
		show[n++] = [k,obj[k]]; 
	}
	return new MultiSelect(show);
};

MultiSelect.prototype.node = null;
MultiSelect.prototype.options = [];

MultiSelect.prototype.select = function( mask ) {
	if( mask == (1<<(this.options.length+1))-1 ) {
		return;
	}
	for( var i = 0; i < this.options.length; i++ ) {
		this.options[i].selected = (mask&1<<parseInt(this.options[i].value,10))!=0;
	}
};

MultiSelect.prototype.getValue = function() {
	var mask = 0, i, v, max_v = 0;
	for( i=0; i<this.options.length; i++ ) {
		v = 1<<parseInt(this.options[i].value,10);
		max_v += v;
		if( this.options[i].selected == true ) {
			mask += v;
		}
	}
	if( mask == 0 ) {
		mask = max_v;
	}
	return mask;
};