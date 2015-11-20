<?php
/**
 * Joomla! component Simple Contact Form
 *
 * @version $Id: controller.php 2012-04-05 14:30:25 svn $
 * @author 2GLux.com
 * @package Simple Contact Form
 * @subpackage com_simplecontactform
 * @license GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restircted access');

jimport( 'joomla.application.component.controller' );
require_once( JPATH_COMPONENT.DS.'helpers'.DS.'helper.php' );

class SexycontactformController extends JControllerLegacy
{
	/**
	 * @var		string	The default view.
	 * @since	1.6
	 */
	protected $default_view = 'sexyhomepage';

	/**
	 * Method to display a view.
	 *
	 * @param	boolean			If true, the view output will be cached
	 * @param	array			An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
	 *
	 * @return	JController		This object to support chaining.
	 * @since	1.5
	 */
	public function display($cachable = false, $urlparams = false)
	{
		// Load the submenu.
		SexycontactformHelper::addSubmenu( 'Overview', 'sexyhomepage');
		SexycontactformHelper::addSubmenu( 'Forms', 'sexyforms');
		SexycontactformHelper::addSubmenu( 'Fields', 'sexyfields');
		//SexycontactformHelper::addSubmenu( 'Options', 'sexyoptions');
		//SexycontactformHelper::addSubmenu( 'Templates', 'templates');

		parent::display();

		return $this;
	}
}
