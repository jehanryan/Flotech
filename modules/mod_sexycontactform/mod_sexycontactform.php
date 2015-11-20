<?php
/**
 * Joomla! module Simple Contact Form
*
* @version $Id: default.php 2012-04-05 14:30:25 svn $
* @author 2GLux.com
* @package Simple Contact Form
* @subpackage com_sexycontactform
* @license GNU/GPL
*
*/

// no direct access
defined('_JEXEC') or die('Restircted access');

$version = '0.9.2';

// get IP
$REMOTE_ADDR = null;
if(isset($_SERVER['REMOTE_ADDR'])) {
	$REMOTE_ADDR = $_SERVER['REMOTE_ADDR'];
}
elseif(isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
	$REMOTE_ADDR = $_SERVER['HTTP_X_FORWARDED_FOR'];
}
elseif(isset($_SERVER['HTTP_CLIENT_IP'])) {
	$REMOTE_ADDR = $_SERVER['HTTP_CLIENT_IP'];
}
elseif(isset($_SERVER['HTTP_VIA'])) {
	$REMOTE_ADDR = $_SERVER['HTTP_VIA'];
}
else { $REMOTE_ADDR = 'Unknown';
}

$db = JFactory::getDBO();
$user = JFactory::getUser();

$module_id = $module->id;
$form_id = $params->get('form_id',1);

$query = "
SELECT
sp.`id_template`,
sp.name,
sp.top_text,
sp.pre_text,
sp.thank_you_text,
sp.send_text,
sp.send_new_text,
sp.redirect,
sp.redirect_itemid,
sp.redirect_url,
sp.redirect_delay,
sp.shake_count,
sp.shake_distanse,
sp.shake_duration
FROM
`#__sexy_forms` sp
WHERE sp.published = '1'
AND sp.id = '".$form_id."'";
$db->setQuery($query);
$form_data = $db->loadAssoc();

$templateid = $form_data['id_template'];
$toptxt = $form_data['top_text'];
$pretxt = $form_data['pre_text'];
$redirect_enable =  $form_data['redirect'];
if ($redirect_enable) {
	$redirectItemId = (int) $form_data['redirect_itemid'] == 0 ? 1 : (int) $form_data['redirect_itemid'];
	$redirectUrl = $form_data['redirect_url'];
	if ($redirectItemId > 0) {
		$redirect = JRoute::_('index.php?Itemid='.$redirectItemId);
	} elseif ($redirectUrl != '') {
		$redirect = JRoute::_($redirectUrl, false);
	}
}
$redirect_delay = (int) $form_data['redirect_delay'];
$thank_you_text = htmlspecialchars($form_data['thank_you_text'],ENT_QUOTES);
$send_text = htmlspecialchars($form_data['send_text'],ENT_QUOTES);
$send_new_text = htmlspecialchars($form_data['send_new_text'],ENT_QUOTES);

//validation options
$shake_count = (int) $form_data['shake_count'];
$shake_distanse = (int) $form_data['shake_distanse'];
$shake_duration = (int) $form_data['shake_duration'];

$document = JFactory::getDocument();
$cssFile = JURI::base(true).'/components/com_sexycontactform/assets/css/main.css?version='.$version;
$document->addStyleSheet($cssFile, 'text/css', null, array());

$jsFile = JURI::base(true).'/components/com_sexycontactform/assets/js/jquery-1.7.2.min.js';
$document->addScript($jsFile);

$jsFile = JURI::base(true).'/components/com_sexycontactform/assets/js/sexycontactform.js?version='.$version;
$document->addScript($jsFile);

//including custom javascript/////////////////////////////////////////////////////////////////////////////////////////////////
$jsInclude .= ' if (typeof sexycontactform_shake_count_array === \'undefined\') { var sexycontactform_shake_count_array = new Array();};';
$jsInclude .= 'sexycontactform_shake_count_array['.$form_id.'] = "'.$shake_count.'";';

$jsInclude .= ' if (typeof sexycontactform_shake_distanse_array === \'undefined\') { var sexycontactform_shake_distanse_array = new Array();};';
$jsInclude .= 'sexycontactform_shake_distanse_array['.$form_id.'] = "'.$shake_distanse.'";';

$jsInclude .= ' if (typeof sexycontactform_shake_duration_array === \'undefined\') { var sexycontactform_shake_duration_array = new Array();};';
$jsInclude .= 'sexycontactform_shake_duration_array['.$form_id.'] = "'.$shake_duration.'";';


$jsInclude .= 'var sexycontactform_path = "'.JURI::base(true).'/components/com_sexycontactform/";';

$jsInclude .= ' if (typeof sexycontactform_redirect_enable_array === \'undefined\') { var sexycontactform_redirect_enable_array = new Array();};';
$jsInclude .= 'sexycontactform_redirect_enable_array['.$form_id.'] = "'.$redirect_enable.'";';

$jsInclude .= ' if (typeof sexycontactform_redirect_array === \'undefined\') { var sexycontactform_redirect_array = new Array();};';
$jsInclude .= 'sexycontactform_redirect_array['.$form_id.'] = "'.$redirect.'";';

$jsInclude .= ' if (typeof sexycontactform_redirect_delay_array === \'undefined\') { var sexycontactform_redirect_delay_array = new Array();};';
$jsInclude .= 'sexycontactform_redirect_delay_array['.$form_id.'] = "'.$redirect_delay.'";';

$jsInclude .= ' if (typeof sexycontactform_thank_you_text_array === \'undefined\') { var sexycontactform_thank_you_text_array = new Array();};';
$jsInclude .= 'sexycontactform_thank_you_text_array['.$form_id.'] = "'.$thank_you_text.'";';

$jsInclude .= ' if (typeof sexycontactform_pre_text_array === \'undefined\') { var sexycontactform_pre_text_array = new Array();};';
$jsInclude .= 'sexycontactform_pre_text_array['.$form_id.'] = "'.$pretxt.'";';

$document->addScriptDeclaration ( $jsInclude );

$query = "
SELECT
sp.id,
sp.name,
sp.required,
st.name as type
FROM
`#__sexy_fields` sp
JOIN `#__sexy_field_types` st ON st.id = sp.id_type
WHERE sp.published = '1'
AND sp.id_form = '".$form_id."'
ORDER BY sp.ordering,sp.id
";
$db->setQuery($query);
$field_data = $db->loadAssocList();

?>
		<div class="sexycontactform_wrapper sexy_style_<?php echo $templateid;?> sexy_contact_module" >
			<div class="sexycontactform_loading_wrapper"><table style="border: none;width: 100%;height: 100%"><tr><td align="center" valign="middle"><img src="<?php echo JURI::base(true).'/components/com_sexycontactform/assets/images/loading.gif';?>" /></td></tr></table></div>
 			<div class="sexycontactform_wrapper_inner">
 				<form class="sexycontactform_form">
		 			<div class="sexycontactform_title"><?php echo $toptxt;?></div>
		 			<?php $pre_hidden = $pretxt == '' ? 'style="display:none"' : '';?><div <?php echo $pre_hidden;?> class="sexycontactform_pre_text"><?php echo $pretxt;?></div>
		 			<div class="sexy_title_holder">&nbsp;</div>
		 			
			 		<?php 
	 				if(sizeof($field_data) > 0) {
	 					$field_index = 1;
	 					foreach($field_data as $field) {
	 						$field_name = stripslashes($field['name']);
	 						$field_type = strtolower(str_replace(' ','-',str_replace('-','',$field['type'])));
	 						$element_id = $field_type.'_'.$module_id.'_'.$field['id'];
	 						$required_classname = $field['required'] == 1 ? 'sexycontactform_required' : '';
	 						$required_symbol = $field['required'] == 1 ? ' <span class="sexycontactform_field_required">*</span>' : '';
	 						$predefined_value = $field_type == 'name' ? $user->name : ($field_type == 'email' ? $user->email : '');
	 						//input html
	 						$input_type_text_arrays = array('simple-text','name','address','email','phone','number','url');
	 						if(in_array($field_type,$input_type_text_arrays)) {
	 							$input_html = '<div class="sexycontactform_input_element '.$required_classname.'"><div class="sexy_input_dummy_wrapper"><input class="sexy_'.$field_type.' '.$required_classname.' sexy_input_reset" value="'.$predefined_value.'" type="text" id="'.$element_id.'" name="sexycontactform_fields['.$field_index.'][0]"></div></div>';
	 						}
	 						elseif($field_type == 'text-area') {
	 							$input_html = '<div class="sexycontactform_input_element sexy_textarea_wrapper '.$required_classname.'"><div class="sexy_textarea_dummy_wrapper"><textarea class="sexy_textarea sexy_'.$field_type.' '.$required_classname.' sexy_textarea_reset" value="'.$predefined_value.'" cols="30" rows="15" id="'.$element_id.'" name="sexycontactform_fields['.$field_index.'][0]"></textarea></div></div>';
	 						}
	 						$input_html .= '<input type="hidden" name="sexycontactform_fields['.$field_index.'][1]" value="'.$field_name.'" />';
	 						
	 						//start printing html
	 						echo '<div class="sexycontactform_field_box">';
	 							echo '<label class="sexycontactform_field_name" for="'.$element_id.'">'.$field_name.$required_symbol.'</label>';
	 							echo $input_html;
	 						echo '</div>';
	 						
	 						$field_index ++;
	 					}
	 				}
	 				?>
	 				
		 			<div class="sexycontactform_submit_wrapper">
		 				<input type="button" value="<?php echo $send_text;?>" class="sexycontactform_send" roll="<?php echo $form_id;?>" />
		 				<input type="button" value="<?php echo $send_new_text;?>" class="sexycontactform_send_new"  roll="<?php echo $form_id;?>"/>
		 				<div class="sexycontactform_clear"></div>
		 			</div>
		 			<div class="sexycontactform_clear"></div>
		 			<input type="hidden" name="<?php echo JSession::getFormToken();?>" class="sexycontactform_token" value="1" />
		 			<input type="hidden" value="<?php echo $REMOTE_ADDR;?>"  name="sexycontactform_ip" />
		 			<input type="hidden" value="<?php echo JURI::current();?>"  name="sexycontactform_referrer" />
		 			<input type="hidden" value="<?php echo $module_id;?>" class="sexycontactform_module_id" name="sexycontactform_module_id" />
		 			<input type="hidden" value="<?php echo $form_id;?>" class="sexycontactform_form_id" name="sexycontactform_form_id" />
	 			</form>
 			</div>
 		</div>
