<?php
/**
 * Joomla! component Simple Contact Form
 *
 * @version $Id: view.html.php 2012-04-05 14:30:25 svn $
 * @author 2GLux.com
 * @package Simple Contact Form
 * @subpackage com_simplecontactform
 * @license GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restircted access');

// Import Joomla! libraries
jimport( 'joomla.application.component.view');

class SexycontactformViewTemplate extends JViewLegacy
{
	protected $form;
	protected $item;
	protected $state;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
		// Initialiase variables.
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');
		

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		if(isset($_GET['id'])) {
			$styles	= $this->get('Styles');
			$this->assignRef( 'styles', $styles );
		}
		$this->addToolbar();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
		JRequest::setVar('hidemainmenu', true);

		$user		= JFactory::getUser();
		$userId		= $user->get('id');
		$isNew		= ($this->item->id == 0);
		// Since we don't track these assets at the item level, use the category id.

		$text = $isNew ? JText::_( 'New' ) : JText::_( 'Edit' );
		JToolBarHelper::title(   JText::_( 'Template' ).': <small><small>[ ' . $text.' ]</small></small>','manage.png' );

		// Build the actions for new and existing records.
		if ($isNew)  {
			JToolBarHelper::save('template.save');

			JToolBarHelper::cancel('template.cancel');
		}
		else {
			JToolBarHelper::apply('template.apply');
			JToolBarHelper::save('template.save');
			
			JToolBarHelper::cancel('template.cancel','close');
		}
	}
}