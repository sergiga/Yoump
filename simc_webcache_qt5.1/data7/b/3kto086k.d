   �      9http://chardev.org/js/gui/widgets/SimpleUserControl.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:02 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "165-4d9ca3f4dd3fd-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 */
function SimpleUserControl() {
	/* do nothing */
}

SimpleUserControl.prototype = {
	/**
	 * @type {HtmlElement}
	 */
	node: null,
	getValue: function(){throw new NotImplementedException('SimpleUserControl','getValue');},
	setValue: function(value){throw new NotImplementedException('SimpleUserControl','setValue');}
};