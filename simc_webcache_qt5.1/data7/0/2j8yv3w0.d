   �      .http://chardev.org/js/engine/CharacterIO.js?76�       �����     %{F(��              �      
     O K      Date   Sun, 27 Apr 2014 22:30:59 GMT   Server   Apache/2.4.6 (Linux/SUSE)   Last-Modified   Sun, 07 Apr 2013 19:22:55 GMT   ETag   "857-4d9ca3f4d763d-gzip"   Accept-Ranges   bytes   Vary   Accept-Encoding,User-Agent   Content-Encoding   gzip   Content-Type   	text/x-js var CharacterIO = {};

(function(){
	/**
	 * @param {XMLHttpRequest} request
	 * @param {Handler} handler
	 */
	function readCharacterCallback( request, handler )
	{
		var character = null;
		var exception = null;
		try {
			character = Ajax.getResponseObject(request);
		}
		catch( e ) {
			exception = e;
		}
		handler.notify([character, exception]);
	}
	
	/**
	 * @param {XMLHttpRequest} request
	 * @param {Handler} handler
	 * @param {Character} character
	 */
	function writeCharacterCallback( request, handler, character )
	{
		var href = "";
		var exception = null;
		try {
			href = Ajax.getResponseObject(request);
		}
		catch( e ) {
			exception = e;
		}
		handler.notify([href, exception]);
	}
	/**
	 * @param {string} name
	 * @param {string} server
	 * @param {string} region
	 * @param {Handler} handler
	 */
	CharacterIO.readFromArmory = function(name,server,region,handler)
	{
		Ajax.request(
			'/api/battlenet_profile.php' 
				+ TextIO.queryString({
					'name': name,
					'server': server,
					'region': region
			}),
			new Handler( readCharacterCallback, CharacterIO ),
			[handler]
		);
	};	
	/**
	 * @param {number} id
	 * @param {Character} character
	 * @param {Handler} handler
	 */
	CharacterIO.writeToDatabase = function( id , character, handler )
	{
		Ajax.post(
			'/api/profile.php', {
					'action': id ? 'update' : 'add',
					'id': id,
					'serialized': JSON.stringify(character.toArray())
			},
			new Handler( writeCharacterCallback, CharacterIO ),
			[handler, character]
		);
	};
	/**
	 * @param {number} id
	 * @param {Handler} handler
	 */
	CharacterIO.readFromDatabase = function(id,handler)
	{
		Ajax.request(
			'/api/profile.php' + TextIO.queryString({ 'id': id }),
			new Handler( readCharacterCallback, CharacterIO ),
			[handler]
		);
	};
	/**
	 * @param {number} id
	 * @param {Handler} handler
	 */
	CharacterIO.deleteFromDatabase = function(id,handler)
	{
		Ajax.post(
			'/api/chardev_profile.php', {
				'action': 'delete',
				'id': id 
			},
			handler,
			[id]
		);
	};
}());