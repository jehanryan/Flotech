<?php

/**
 * @package		Advanced Google Analytics - Plugin for Joomla!
 * @author		DeConf - http://www.deconf.com
 * @copyright	Copyright (c) 2010 - 2012 DeConf.com
 * @license		GNU/GPL license: http://www.gnu.org/licenses/gpl-2.0.html
 */
 
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.plugin.plugin' );
jimport( 'joomla.html.parameter' );

class plgSystemadvga extends JPlugin {
 
 private $authorname, $categoryname, $pubyear;
 
 function plgSystemClickyTrackingCode(&$subject, $params) { 
	
	parent::__construct($subject, $params); 
    
	$mode = $this->params->def('mode', 1);
	
}

 function onContentAfterDisplay( $context, &$article, &$params ) {
	$this->authorname=($article->created_by_alias) ? $article->created_by_alias : $article->author;
	$this->categoryname=$article->category_title;
	$temp=explode('-',$article->created);
	$this->pubyear=$temp[0];
	//echo $this->authorname.$this->categoryname.$this->pubyear;
 }

function onAfterRender(){

		$app =& JFactory::getApplication();
		$user =& JFactory::getUser();		
		
		if ( $app->isAdmin()){
			return;
		}
		
		if ((isset($user->groups[8]) || isset($user->groups[7])) AND (!$this->params->get('advga_trackadmin'))){
			return;
		}
		if ($this->params->get('advga_event')){		
			$tracking_events="<script type=\"text/javascript\">
			(function() {
				var specialtrack = new (function() {
					var version = '1.0';
					var whitelist = ".$this->params->get('advga_downloadf').";
					var domain = /".$this->params->get('advga_domain')."/gi;
					var isExternal = function(url) {
						return !(location.href.replace('http://').replace('https://').split('/')[0] === url);
					}
					var getFileName = function(pathname) {
						pathname = pathname.substring(0, (pathname.indexOf('#') === -1) ? pathname.length : pathname.indexOf('#'));
						pathname = pathname.substring(0, (pathname.indexOf('?') === -1) ? pathname.length : pathname.indexOf('?'));
						pathname = pathname.substring(pathname.lastIndexOf('/') + 1, pathname.length);
						return pathname;
					};

					var trackpush_downloads = function() {
						var fileName;
						fileName = getFileName(this.pathname);
						_gaq.push(['_trackEvent', 'Downloads',fileName]);
					};
					
					var trackpush_links = function() {
						var link;
						link = this.href;
						_gaq.push(['_trackEvent', 'Outbound-Links',link]);
					};

					var initialize = function() {
						var links = document.links;
						
						for (var i = 0, l = links.length; i < l; i++) {
							var match = links[i].pathname.match(whitelist);
							var match_links = links[i].href.match(domain);
							var match_void = links[i].href.match('javascript:void');
							if (typeof match_void == 'undefined' || match_void == null) {
								if (typeof match !== 'undefined' && match !== null) {
									links[i].addEventListener('click',trackpush_downloads,false);
									links[i].setAttribute('target', '_blank');									
								}else if (typeof match_links == 'undefined' || match_links == null) {
									links[i].addEventListener('click',trackpush_links,false);
									links[i].setAttribute('target', '_blank');									
								}
							}			
						}	
					};

					return {
						version: version,
						initialize: initialize
					};
				})();
				window.specialtrack = specialtrack;
				window.onload = specialtrack.initialize;
				})();
			</script>	
			";
		}	
		
		$tracking_0="\n<script type=\"text/javascript\">
		var _gaq = _gaq || [];";
		$tracking_push="";
		$tracking_2="\n(function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();

          </script>";
	    
		switch ( $this->params->get('advga_trackmode')){
			case 1 	: $tracking_push="['_setAccount', '".$this->params->get('advga_googleid')."'], ['_setDomainName', '".$this->params->get('advga_domain')."']"; break;
			case 2 : $tracking_push="['_setAccount', '".$this->params->get('advga_googleid')."'], ['_setDomainName', '".$this->params->get('advga_domain')."'], ['_setAllowLinker', true]"; break;
			default : $tracking_push="['_setAccount', '".$this->params->get('advga_googleid')."']"; break;				
		}

		if ($this->params->get('advga_anonim')){
			$tracking_push.=", ['_gat._anonymizeIp']";
		}		

		if((JRequest::getVar( 'view' ) == 'article' ) OR ( JRequest::getVar( 'view' ) == 'item' )){
		
			if ($this->authorname AND $this->params->get('advga_authors')){
			
				$tracking_push.=", ['_setCustomVar',1,'author','".$this->authorname."',3]";
			
			}
			
			if ($this->categoryname AND $this->params->get('advga_categories')){
			
				$tracking_push.=", ['_setCustomVar',2,'categories','".$this->categoryname."',3]";
			
			}

			if ($this->pubyear AND $this->params->get('advga_pubyear')){
			
				$tracking_push.=", ['_setCustomVar',3,'year','".$this->pubyear."',3]";
			
			}
			
		}

		if ($this->params->get('advga_usertype')){
			if (isset($user->username)){
			
				$tracking_push.=", ['_setCustomVar',4,'user-type','registered',3]";
			
			}else{
			
				$tracking_push.=", ['_setCustomVar',4,'user-type','guest',3]";
			
			}		
		}	
		
		$buffer = JResponse::getBody();
		
		$tracking=$tracking_events.$tracking_0."\n_gaq.push(".$tracking_push.", ['_trackPageview']);".$tracking_2;
		
		$buffer = preg_replace ("/<\/head>/", $tracking."\n</head>", $buffer); 
		JResponse::setBody($buffer);
	
	return;
 
 }
 
}