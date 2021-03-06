   �      <http://chardev.org/js/gui/list/filter/RangeInputFilter.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "51a-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {string}name
 * @param {string} variable
 * @param {string} value
 */
function RangeInputFilter( name, variable, value ) {
	AbstractFilter.call( this, name, variable );

	this.inputMin = document.createElement("input"); 
	this.inputMin.className = 'input fi_in_min';
	this.inputMin.maxLength = "5";
	
	this.inputMax = document.createElement("input"); 
	this.inputMax.className = 'input fi_in_max';
	this.inputMax.maxLength = "5";
	
	
	if( value != null ) {
		var match = new RegExp("(\\d*(?:\\.\\d+)?)-(\\d*(?:\\.\\d+)?)").exec(value);
	
		if( match ) {
			this.inputMin.value = match[1];
			this.inputMax.value = match[2];
		}
	}
	
	this.node.appendChild(this.inputMin);
	this.node.appendChild(document.createTextNode(" - "));
	this.node.appendChild(this.inputMax);
	
	this.node.className = "fi_p";
}

RangeInputFilter.prototype = new AbstractFilter("","");
RangeInputFilter.prototype.operatorSelect = null;
RangeInputFilter.prototype.inputMin = null;
RangeInputFilter.prototype.inputMax = null;

RangeInputFilter.prototype.getArgumentString = function() {
	var min = parseFloat(this.inputMin.value);
	var max = parseFloat(this.inputMax.value);
	return this.variable+".btw."+(isNaN(min)?"":""+min)+"-"+(isNaN(max)?"":""+max)+";";
};