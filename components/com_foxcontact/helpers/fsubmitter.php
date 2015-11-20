<?php defined('_JEXEC') or die('Restricted access');

// Program: Fox Contact for Joomla
// Copyright (C): 2011 Demis Palma
// Documentation: http://www.fox.ra.it/forum/2-documentation.html
// License: Distributed under the terms of the GNU General Public License GNU/GPL v3 http://www.gnu.org/licenses/gpl-3.0.html

$inc_dir = realpath(dirname(__FILE__));
require_once($inc_dir . '/fdatapump.php');

class FSubmitter extends FDataPump
{

	public function __construct(&$params, FoxMessageBoard &$messageboard)
	{
		parent::__construct($params, $messageboard);

		$this->Name = "FSubmitter";
		// count($_POST):
		// 0  -> no submitted
		// 1  -> submitted, but $_FILES exceeds server limits, and is been resetted
		// 1+ -> submittend. We can try to validate fields.
		$this->isvalid = (count($_POST) > 1 && isset($_POST[$this->GetId()]));
	}


	public function Show()
	{
		$result = "";

		$field = array();
		if ($this->Params->get("copy_to_submitter", 0) == 2 && // Option "send a copy" is "allow the user to chose"
			(bool)$this->Params->get("sender1display", 0)
		) // Field "your email" is optional or required
		{
			// Special field "Send a copy to my own email address"
			$field["Display"] = 1;
			$field["Type"] = "checkbox";
			$field["Name"] = JText::_($GLOBALS["COM_NAME"] . "_SEND_ME_A_COPY");
			//$field["PostName"] = $this->SafeName("copy_to_submitter" . "cid" . $this->Application->cid . "mid" . $this->Application->mid);
			$field["PostName"] = $this->SafeName("copy_to_submitter" . $this->GetId());
			$field["Value"] = JRequest::getVar($field["PostName"], NULL, 'POST');
			$field["IsValid"] = true;
			$result .= $this->BuildCheckboxField("", $field);
		}

		$this->CreateSpacerLabel();
		$result .= '<div class="control-group">' .
			$this->LabelHtmlCode .
			'<div class="controls">' . PHP_EOL;

		switch ($this->Params->get("submittype"))
		{
			case 1:
				// Submit input
				$result .= '<input class="btn btn-success" type="submit" style="margin-' . $GLOBALS["right"] . ':32px;" name="' . $this->GetId() . '" value="' . $this->Params->get("submittext") . '"/>' . PHP_EOL;
				break;

			default:
				// Submit button
				$icon = $this->Params->get("submiticon");
				// Can't use "value" attribute: http://www.w3schools.com/tags/att_button_value.asp
				$result .= '<button class="btn btn-success" type="submit" style="margin-' . $GLOBALS["right"] . ':32px;" name="' . $this->GetId() . '">' . PHP_EOL .
					'<span ';
				if ($icon != "-1") $result .= 'style="background: url(' . JUri::base(true) . '/media/' . $GLOBALS["com_name"] . '/images/submit/' . $icon . ') no-repeat scroll ' . $GLOBALS["left"] . ' top transparent; padding-' . $GLOBALS["left"] . ':20px;" ';
				$result .= '>' . PHP_EOL .
					$this->Params->get("submittext") .
					'</span>' . PHP_EOL .
					'</button>' . PHP_EOL;
		}

		if ($this->Params->get("resetbutton"))
		{
			switch ($this->Params->get("resettype"))
			{
				case 1:
					// input
					$result .= '<input class="btn btn-danger" type="reset" onClick="ResetFoxControls();" value="' . $this->Params->get("resettext") . '">' . PHP_EOL;
					break;

				default:
					// button

					$reseticon = $this->Params->get("reseticon");
					$result .= '<button class="btn btn-danger" type="reset" onClick="ResetFoxControls();">' . PHP_EOL .
						'<span ';
					if ($reseticon != "-1") $result .= 'style="background: url(' . JUri::base(true) . '/media/' . $GLOBALS["com_name"] . '/images/reset/' . $reseticon . ') no-repeat scroll ' . $GLOBALS["left"] . ' top transparent; padding-' . $GLOBALS["left"] . ':20px;" ';
					$result .= '>' . PHP_EOL .
						$this->Params->get("resettext") .
						'</span>' . PHP_EOL .
						'</button>' . PHP_EOL;
			}
		}
		$result .= '</div>' . //controls
			'</div>'; // control-group

		return $result;
	}


	protected function LoadFields()
	{
	}


	// Todo: Duplicated code
	// DescriptionByValidation
	// AdditionalDescription
	// style="margin:0 32px;
	private function BuildCheckboxField($key, &$field)
	{
		// Here, validation will be successful, because there aren't post data, but it isn't a good right to activate che checkbox with the check
		// if (intval($this->FieldsBuilder->Fields[$index]['Value'])) $this->msg .= "checked=\"\"";
		if ($field['Value'] == JText::_('JYES')) $checked = 'checked=""';
		else $checked = "";

		$this->CreateSpacerLabel();

		$result = '<div class="control-group fox_copy_to_sender">' .
			$this->LabelHtmlCode .
			'<div class="controls">' .
			'<label class="checkbox">' .
			'<input ' .
			'type="checkbox" ' .
			"value=\"" . JText::_('JYES') . "\" " .
			$checked .
			'name="' . $field['PostName'] . '" ' .
			'id="c' . $field['PostName'] . '" ' .
			'/>' .
			$field['Name'] .
			'</label>' .
			'</div>' .
			'</div>';

		return $result;
	}

}

?>
