   �      =http://chardev.org/js/gui/list/filter/MultiSelectFilter.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "2a3-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {string}name
 * @param {string} variable
 * @param {string} value
 * @param {Object} options
 */
function MultiSelectFilter( name, variable, value, options ) {
	AbstractFilter.call( this, name, variable );
	
	this.select = MultiSelect.fromObject(options);
	
	if( value != null ) {
		this.select.select(value);
	}
	this.node.className = 'fi_multi_select';
	this.node.appendChild(this.select.node);
}

MultiSelectFilter.prototype = new AbstractFilter("","");
MultiSelectFilter.prototype.select = null;

MultiSelectFilter.prototype.getArgumentString = function() {
	return this.variable+".ba."+this.select.getValue()+";";
};