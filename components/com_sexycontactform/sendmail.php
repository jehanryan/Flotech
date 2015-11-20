<?php
/**
 * Joomla! component Simple Contact Form
 *
 * @version $Id: sendmail.php 2012-04-05 14:30:25 svn $
 * @author 2GLux.com
 * @package Simple Contact Form
 * @subpackage com_sexycontactform
 * @license GNU/GPL
 *
 */

// no direct access
define( '_JEXEC', 1 );
defined('_JEXEC') or die('Restircted access');

define( 'DS', DIRECTORY_SEPARATOR );
define('JPATH_BASE', dirname(__FILE__).DS.'..'.DS.'..' );

require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php' );
require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php' );

$app =JFactory::getApplication('site');
$app->initialise();

$module_id = JRequest::getInt('sexycontactform_module_id', 0, 'post');
$form_id = JRequest::getInt('sexycontactform_form_id', 0, 'post');
$get_token = JRequest::getInt('get_token', 0, 'get');

$comparams = JComponentHelper::getParams( 'com_sexycontactform' );

$db = JFactory::getDBO();
//get form configuration
$query = "
			SELECT
				sp.`email_to`,
				sp.`email_bcc`,
				sp.`email_subject`,
				sp.`email_replyto`,
				sp.`email_replyto_name`
			FROM
				`#__sexy_forms` sp
			WHERE sp.published = '1'
			AND sp.id = '".$form_id."'";
$db->setQuery($query);
$form_data = $db->loadAssoc();

JResponse::allowCache( false );
JResponse::setHeader( 'Content-Type', 'text/plain' );

if($get_token == 0) {
	if (!JRequest::checkToken()) {
		echo '[{"invalid":"invalid_token"}]';
	}
	else {
		
		$info = Array();
		
		//get from
		$fromname = $app->getCfg('fromname', $app->getCfg('sitename'));
		$mailfrom = $app->getCfg('mailfrom');
		if (!$mailfrom ) {
			$info[] = 'Mail from not set in Joomla Global Configuration';
		}
		
		//get email to
		$email_to = array();
		if ( $form_data['email_to'] != '' ) {
			$email_to = explode(',', $form_data['email_to']);
		}
		if (count($email_to) == 0) {
			$email_to = $mailfrom;
		}
		
		// Email subject
		$sexycontactform_subject = $form_data['email_subject'] == '' ? 'Message sent from '.$app->getCfg('sitename') : $form_data['email_subject'];
		
		$sexycontactform_ip 		= strip_tags( JRequest::getVar( 'sexycontactform_ip', '', 'post' ));
		$sexycontactform_referrer 		= strip_tags( JRequest::getVar( 'sexycontactform_referrer', '', 'post' ));
		
		$mail = JFactory::getMailer();
		
		//generate the body
		$body = '';
		if(is_array($_POST['sexycontactform_fields'])) {
			foreach($_POST['sexycontactform_fields'] as $field_data) {
				$field_label = strip_tags(trim($field_data[1]));
				$field_value = strip_tags(trim($field_data[0]));
				$body .= $field_label.': '.$field_value."\r\n";
			}
		}
		$body .= 'Referrer: '.$sexycontactform_referrer."\r\n";
		$body .= 'Ip: '.$sexycontactform_ip."\r\n";
		
		//Set the body
		$mail->setBody( $body );
		$info[] = 'Body set...';
		
		//Set subject
		$mail->setSubject( $sexycontactform_subject );
		$info[] = 'Subject set to: '.$sexycontactform_subject;
		
		//Set Recipient
		$mail->addRecipient( $email_to );
		$info[] = 'Recipient set: '.$email_to;
		
		//Set Sender
		$mail->setSender( array( $mailfrom, $fromname ) );
		$info[] = 'Sender set: '.$email_to;
		
		// set reply to
		if ($form_data['email_replyto'] != '') {
			$replyto_email = $form_data['email_replyto'] == '' ? $mailfrom : $form_data['email_replyto'];
			$mail->ClearReplyTos();
			$email_replyto_name = $form_data['email_replyto_name'] == '' ? $fromname : $form_data['email_replyto_name'];
			$mail->addReplyTo( $replyto_email, $email_replyto_name );
			$info[] = 'Reply to set: '.$replyto_email;
		}
		
		// add blind carbon recipient
		if ($form_data['email_bcc'] != '') {
			$email_bcc = explode(',', $form_data['email_bcc']);
			$mail->addBCC($email_bcc);
			$info[] = 'BCC recipients added';
		}
		
		if ( $mail->Send() === true ) {
			JSession::getFormToken(true);
			$info[] = 'Email sent successful';
		}
		else $info[] = 'There are problems sending email';
		
		//generates json output
		echo '[{';
		if(sizeof($info) > 0) {
			echo '"info": ';
			echo '[';
			foreach ($info as $k => $data) {
				echo '"'.$data.'"';
				if ($k != sizeof($info) - 1)
					echo ',';
			}
			echo ']';
		}
			
		echo '}]';
	}
}
else {
	echo JSession::getFormToken();
}
jexit();