   �      -http://eu.battle.net/wow/en/sidebar/expansion�       ������       �����              �      
     O K      Date   Sun, 27 Apr 2014 22:29:25 GMT   Server   Apache   X-Frame-Options   
SAMEORIGIN   Content-Language   en-GB   Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   #application/xhtml+xml;charset=UTF-8 


	<div class="sidebar-module " id="sidebar-expansion">
			<div class="sidebar-title">


	<h3 class="header-3 title-expansion" >						<a href="/wow/en/warlords-of-draenor/">

					New Expansion Info


						</a>

</h3>
			</div>

		<div class="sidebar-content">

		<a href="/wow/en/warlords-of-draenor/" class="sidebar-expansion"></a>
		
		<ul id="expansion" class="trending-topics">

		</ul>

		<script type="text/javascript">
		//<![CDATA[
		$(document).ready(function() {
			loadFeed("warlords");
		});
		
		function loadFeed(feedKeyword) {
			SearchPane.load(
				'#expansion',
				{
					keyword: feedKeyword,
					type: 'article',
					community: 'wow',
					results: 5
				}, customRenderingFunction
			);
		};
		
		function customRenderingFunction(response, displayType) {
			var typeResults = response.results[displayType],
				container = $('<ul/>');
			if (typeResults) {
				for (var i = 0; i < typeResults.length; i++) {
					var result = $('<li/>');
					var link = $('<a/>');
					link.attr('href', typeResults[i].url);
					link.text(typeResults[i].title);
					result.append(link);
					container.append(result);
				}           
			}
			return container;
		}
		//]]>
		</script>
		
		</div>
	</div>

