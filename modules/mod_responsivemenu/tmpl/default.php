<?php
/**
 * @package		Joomla.Site
 * @subpackage	Responsive Menu
 * @copyright	Copyright (C) Cecil Gupta. All rights reserved.
 * @license		GNU General Public License version 2 or later;
 */

// No direct access.
defined('_JEXEC') or die;
if(version_compare(JVERSION,'1.6.0','ge')) {
	// JOOMLA 1.6+ CODE
	?>
	<a class="toggleMenu" href="#">Menu</a>
	<ul id="responsiveMenu<?php echo $module->id; ?>" class="responsiveMenu  <?php echo $class_sfx;?>"<?php
		$tag = '';
		if ($params->get('tag_id')!=NULL) {
			$tag = $params->get('tag_id').'';
			echo ' id="'.$tag.'"';
		}
	?>><?php
	foreach ($list as $i => &$item) :
		$class = '';
		if ($item->id == $active_id) {
			$class .= 'current ';
		}
		
		if($i==0){
			$class .= 'first ';
		}
		

		if (	$item->type == 'alias' &&
				in_array($item->params->get('aliasoptions'),$path)
			||	in_array($item->id, $path)) {
		  $class .= 'active ';
		}
		if ($item->deeper) {
			$class .= 'deeper ';
		}
		
		if ($item->parent) {
			$class .= 'parent ';
		}

		if (!empty($class)) {
			$class = ' class="'.trim($class) .'"';
		}

		echo '<li id="item-'.$item->id.'"'.$class.'>';

		// Render the menu item.
		switch ($item->type) :
			case 'separator':
			case 'url':
			case 'component':
				require JModuleHelper::getLayoutPath('mod_menu', 'default_'.$item->type);
				break;

			default:
				require JModuleHelper::getLayoutPath('mod_menu', 'default_url');
				break;
		endswitch;

		// The next item is deeper.
		if ($item->deeper) {
			echo '<ul>';
		}
		// The next item is shallower.
		else if ($item->shallower) {
			echo '</li>';
			echo str_repeat('</ul></li>', $item->level_diff);
		}
		// The next item is on the same level.
		else {
			echo '</li>';
		}
	endforeach;
	?></ul>
	<?php echo "<input type='hidden' id='bzMenuStylesWidth' value='".$params->get('subItemWidth')."' />";
}