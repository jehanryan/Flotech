<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );

/**
 * @subpackage	responsiveMenu
 * @copyright	Copyright (C) Cecil Gupta. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
$document =JFactory::getDocument();
$menuStyle = $params->get('menuStyle');

$subItemWidth = $params->get('subItemWidth');

$MenuBG = $params->get('MenuBG');
$MenuBG2 = $params->get('MenuBG2');
$MenuBG3 = $params->get('MenuBG3');
$MenuHoverBGClr = $params->get('MenuHoverBGClr');
$outlineClr = $params->get('outlineClr');

$linksClr = $params->get('linksClr');
$linksHoverClr = $params->get('linksHoverClr');
$jQuery = (int)$params->get('jQuery', 1);

$document->addStyleSheet("modules/mod_responsivemenu/css/responsive-menu.css.php?MenuBG={$MenuBG}&amp;outlineClr={$outlineClr}&amp;MenuBG2={$MenuBG2}&amp;MenuBG3={$MenuBG3}&amp;MenuHoverBGClr={$MenuHoverBGClr}&amp;outlineClr={$outlineClr}&amp;linksClr={$linksClr}&amp;linksHoverClr={$linksHoverClr}&amp;subItemWidth={$subItemWidth}");

$addjQuery=$params->get( 'jQuery', "1" );
if($addjQuery){
	$document->addScript( 'http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js' );
	$document->addScript( 'modules/mod_responsivemenu/js/jquery.noconflict.js' );
}
$document->addScript("modules/mod_responsivemenu/js/responsive-menu.js",'text/javascript', true);


if(version_compare(JVERSION,'1.6.0','ge')) {
	// Include the syndicate functions only once
	require_once (dirname(__FILE__).DIRECTORY_SEPARATOR.'helper.php');
	
	$list	= modResponsiveMenuHelper::getList($params);
	$app	= JFactory::getApplication();
	$menu	= $app->getMenu();
	$active	= $menu->getActive();
	$active_id = isset($active) ? $active->id : $menu->getDefault()->id;
	$path	= isset($active) ? $active->tree : array();
	$showAll	= $params->get('showAllChildren');
	$class_sfx	= htmlspecialchars($params->get('class_sfx'));

	if(count($list)) {
		$menuStyle = $params->get('menuStyle');
		require(JModuleHelper::getLayoutPath('mod_responsivemenu','default'));
	}
}