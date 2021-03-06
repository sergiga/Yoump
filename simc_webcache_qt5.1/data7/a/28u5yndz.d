   �      :http://chardev.org/js/gui/list/filter/AbstractFilter.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "598-4d9ca3f4dc45d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param {string} name
 * @param {string} variable
 */
function AbstractFilter( name, variable ) {
	this.variable = variable;
	this.name = name;
	this.node = document.createElement("div");
}

AbstractFilter.OPERATOR_OPTIONS_NUMERIC = [['gt','&gt;'],['ge','&ge;'],['lt','&lt;'],['le','&le;'],['eq','=']];
AbstractFilter.OPERATOR_OPTIONS_STRING = [['wlike','is']];
AbstractFilter.OPERATOR_OPTIONS_NUMERIC_EUQAL = [['eq','=']];

AbstractFilter.prototype = {
	node: null, variable: "", name: "",
	/**
	 * @param valueType
	 * @returns {SingleSelect}
	 */
	getOperatorSelect: function( valueType ) {
		var tmp = null;
		switch( valueType ) {
		case InputFilterData.TYPE_STRING_SIMPLE:
			tmp = new SingleSelect(AbstractFilter.OPERATOR_OPTIONS_STRING);
			tmp.node.style.display = "none";
			break;
		case InputFilterData.TYPE_NUMERIC_EUQAL:
			tmp = new SingleSelect(AbstractFilter.OPERATOR_OPTIONS_NUMERIC_EUQAL);
			tmp.node.style.display = "none";
			break;
		case InputFilterData.TYPE_NUMERIC:
			tmp = new SingleSelect(AbstractFilter.OPERATOR_OPTIONS_NUMERIC);
			break;
		default:
			throw new Error("Unable to create operator select for "+valueType+"!");
		}
		tmp.node.className = 'fi_op_select';
		return tmp;
	},
	/**
	 * @return {string}
	 */
	getArgumentString: function() {
		throw new NotImplementedException( "AbstractFilter", "getArgumentString");
	}
};