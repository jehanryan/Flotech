<?php
/**
 * Joomla! component sexyforming
 *
 * @version $Id: view.html.php 2012-04-05 14:30:25 svn $
 * @author 2GLux.com
 * @package Sexy Polling
 * @subpackage com_sexyforming
 * @license GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restircted access');

// Import Joomla! libraries
jimport( 'joomla.application.component.view');


class SexyContactFormViewSexyForms extends JViewLegacy {
	
	protected $items;
	protected $pagination;
	protected $state;
	
	/**
	 * Display the view
	 *
	 * @return	void
	 */
    public function display($tpl = null) {
    	
    	$this->items		= $this->get('Items');
    	$this->pagination	= $this->get('Pagination');
    	$this->state		= $this->get('State');
 
       	if(JV == 'j2') {
       	}
       	else {
       		JHtmlSidebar::addFilter(
       				JText::_('JOPTION_SELECT_PUBLISHED'),
       				'filter_published',
       				JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), 'value', 'text', $this->state->get('filter.published'), true)
       		);
       		
       		JHtmlSidebar::addFilter(
       				JText::_('JOPTION_SELECT_ACCESS'),
       				'filter_access',
       				JHtml::_('select.options', JHtml::_('access.assetgroups'), 'value', 'text', $this->state->get('filter.access'))
       		);
       	}
       	$this->addToolbar();
       	if(JV == 'j3')
       		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
    }
    
    /**
     * Add the page title and toolbar.
     *
     * @since	1.6
     */
	protected function addToolbar()
	{
		JToolBarHelper::addNew('sexyform.add');
		JToolBarHelper::editList('sexyform.edit');
		    	
		JToolBarHelper::divider();
		JToolBarHelper::publish('sexyforms.publish', 'JTOOLBAR_PUBLISH', true);
		JToolBarHelper::unpublish('sexyforms.unpublish', 'JTOOLBAR_UNPUBLISH', true);
		JToolBarHelper::divider();
	    
    	if ($this->state->get('filter.published') == -2) {
    		JToolBarHelper::deleteList('', 'sexyforms.delete', 'JTOOLBAR_EMPTY_TRASH');
    		JToolBarHelper::divider();
    	}
    	else {
    		JToolBarHelper::trash('sexyforms.trash');
    		JToolBarHelper::divider();
    	}
	    
	}
	
	/**
	 * Returns an array of fields the table can be sorted by
	 *
	 * @return  array  Array containing the field name to sort by as the key and display text as value
	 *
	 * @since   3.0
	 */
	protected function getSortFields()
	{
		return array(
				'sp.ordering' => JText::_('JGRID_HEADING_ORDERING'),
				'sp.name' => JText::_('COM_SEXYCONTACTFORM_NAME'),
				'sp.published' => JText::_('JSTATUS'),
				'template_title' => JText::_('COM_SEXYCONTACTFORM_TEMPLATE'),
				'sp.featured' => JText::_('JFEATURED'),
				'sp.access' => JText::_('JGRID_HEADING_ACCESS'),
				'num_fields' => JText::_('COM_SEXYCONTACTFORM_NUM_FIELDS'),
				'sp.id' => JText::_('JGRID_HEADING_ID')
		);
	}
}