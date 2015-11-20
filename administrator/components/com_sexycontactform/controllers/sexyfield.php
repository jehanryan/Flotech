<?php
/**
 * Joomla! component sexypolling
 *
 * @version $Id: sexyanswer.php 2012-04-05 14:30:25 svn $
 * @author 2GLux.com
 * @package Sexy Polling
 * @subpackage com_sexypolling
 * @license GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restircted access');

jimport('joomla.application.component.controllerform');

class SexyContactFormControllerSexyField extends JControllerForm
{
	function __construct($default = array()) {
		parent::__construct($default);
	
		//$this->registerTask('add', 'addfield');
	}
	
	function addfield() {
		$link = 'index.php?option=com_sexycontactform&view=sexyfield&layout=add';
		$this->setRedirect($link, $msg);
	}
}
