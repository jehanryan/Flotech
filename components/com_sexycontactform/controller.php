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


/**
 * sexy_polling Controller
 *
 * @package Joomla
 * @subpackage sexy_polling
 */
class SexyContactFormController extends JControllerLegacy {
	
	/**
	 * @var		string	The default view.
	 * @since	1.6
	 */
	protected $default_view = 'sexycontactform';

    public function display($cachable = false, $urlparams = false) {
		parent::display();
    }
}
?>