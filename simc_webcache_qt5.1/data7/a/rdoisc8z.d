   �      =http://chardev.org/js/adapter/facades/AvailablePresence.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:31:01 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "112-4d9ca3f4d669d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js /**
 * @constructor
 * @param id
 * @param icon
 * @param description
 */
function AvailablePresence( id, icon, description ) {
	this.id = id, this.icon = icon; this.description = description;
}
AvailablePresence.prototype = {
	id: 0, icon: "", description: ""
};