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

jimport('joomla.application.component.controllerform');

class SexyContactFormControllerTemplate extends JControllerForm
{
	protected $view_item = '';
	public function edit($key = null, $urlVar = null)
	{
		$id = $_POST['cid'][0];
		$id = $id == 0 ? (int)$_GET['id'] : $id;
		JRequest::setVar( 'view', 'template' );
		JRequest::setVar( 'layout', 'form'  );
		JRequest::setVar('hidemainmenu', 1);
		
		$link = 'index.php?option=com_sexycontactform&view=template&layout=form&id='.$id;
		$this->setRedirect($link, $msg);
		//parent::display();
	}
	
	
	public function add()
	{
		JRequest::setVar( 'view', 'template' );
		JRequest::setVar( 'layout', 'add'  );
		JRequest::setVar('hidemainmenu', 1);
	
		parent::display();
	}
	
	public function save($key = null, $urlVar = null)
	{
		$id = $_POST[cid][0];
		$id = $id == 0 ? (int)$_GET['id'] : $id;
		$id = $id == 0 ? (int)$_POST['id'] : $id;
		
		$task = $_REQUEST['task'];
		$model = $this->getModel('template');
	
		if ($model->store($post)) {
			$msg = JText::_( 'COM_SEXYCONTACTFORM_TEMPLATE_SAVED' );
		} else {
			$msg = JText::_( 'COM_SEXYCONTACTFORM_ERROR_SAVING_TEMPLATE' );
		}
	
		// Check the table in so it can be edited.... we are done with it anyway
		if($task == 'apply' && $id != 0) {

			$link = 'index.php?option=com_sexycontactform&view=template&layout=form&id='.$id;
		}
		else
			$link = 'index.php?option=com_sexycontactform&view=templates';
		$this->setRedirect($link, $msg);
	}
	
	public function cancel($key = null, $urlVar = null)
	{
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		$msg = JText::_( 'COM_SEXYCONTACTFORM_OPERATION_CANCELLED' );
		$this->setRedirect( 'index.php?option=com_sexycontactform&view=templates', $msg );
	}
}
