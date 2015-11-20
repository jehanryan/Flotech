<?php
/**
 * Joomla! component Simple Contact Form
 *
 * @version $Id: template.php 2012-04-05 14:30:25 svn $
 * @author 2GLux.com
 * @package Simple Contact Form
 * @subpackage com_simplecontactform
 * @license GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restircted access');

// import Joomla table library
jimport('joomla.database.table');

class SexyContactFormTableTemplate extends JTable
{
	/**
	 * Constructor
	 *
	 * @param object Database connector object
	 */
	function __construct(&$db) 
	{
		parent::__construct('#__contact_templates', 'id', $db);
	}
}
