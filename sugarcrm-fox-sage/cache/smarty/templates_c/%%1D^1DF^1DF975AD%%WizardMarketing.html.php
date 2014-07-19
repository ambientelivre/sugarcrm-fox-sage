<?php /* Smarty version 2.6.11, created on 2012-11-22 11:23:54
         compiled from modules/Campaigns/WizardMarketing.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getimagepath', 'modules/Campaigns/WizardMarketing.html', 123, false),array('function', 'sugar_getscript', 'modules/Campaigns/WizardMarketing.html', 371, false),)), $this); ?>
<!--
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

/*********************************************************************************

 ********************************************************************************/
-->


<div id='wiz_stage'>
<form  id="wizform" name="wizform" method="POST" action="index.php">
	<input type="hidden" name="module" value="Campaigns">
	<input type="hidden" id="record" name="record" value="<?php echo $this->_tpl_vars['MRKT_ID']; ?>
">
	<input type="hidden" name="campaign_id" value="<?php echo $this->_tpl_vars['CAMPAIGN_ID']; ?>
">
	<input type="hidden" id='action' name="action">
	<input type="hidden" id="return_module" name="return_module" value="<?php echo $this->_tpl_vars['RETURN_MODULE']; ?>
">
	<input type="hidden" id="return_id" name="return_id" value="<?php echo $this->_tpl_vars['RETURN_ID']; ?>
">
	<input type="hidden" id="return_action" name="return_action" value="<?php echo $this->_tpl_vars['RETURN_ACTION']; ?>
">
	<input type="hidden" id="direct_step" name="direct_step" value='4'>
	<input type="hidden" id="wiz_total_steps" name="totalsteps" value="2">
	<input type="hidden" id="wiz_current_step" name="currentstep" value='0'>
	<input type="hidden" id="wiz_back" name="wiz_back" value='none'>
	<input type="hidden" id="wiz_next" name="wiz_next" value='2'>
	<input type="hidden" id="direction" name="wiz_direction" value='exit'>


<p>
<div id ='buttons' >
	<table width="100%" border="0" cellspacing="0" cellpadding="0" >
		<tr>
			<td align="left" width='30%'>
				<table border="0" cellspacing="0" cellpadding="0" ><tr>

					<tr>
						<td><div id="back_button_div2"><input id="wiz_back_button" type='hidden' title="<?php echo $this->_tpl_vars['APP']['LBL_BACK']; ?>
" class="button" onclick="determine_back();"  name="back" value="  <?php echo $this->_tpl_vars['APP']['LBL_BACK']; ?>
"></div></td>
						<td><div id="back_button_div"><input id="wiz_back_button" type='button' title="<?php echo $this->_tpl_vars['APP']['LBL_BACK']; ?>
" class="button" onclick="determine_back();"  name="back" value="  <?php echo $this->_tpl_vars['APP']['LBL_BACK']; ?>
"></div></td>
						<td><div id="cancel_button_div"><input id="wiz_cancel_button" title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="button" onclick="this.form.action.value='WizardHome'; this.form.module.value='Campaigns'; this.form.record.value='<?php echo $this->_tpl_vars['CAMPAIGN_ID']; ?>
';" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
"></div></td>
						<td><div id="save_button_div"><input id="wiz_submit_button" title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="button" onclick="this.form.action.value='WizardMarketingSave'; this.form.module.value='Campaigns';" type="submit" name="button" value="<?php echo $this->_tpl_vars['MOD']['LBL_SAVE_EXIT_BUTTON_LABEL']; ?>
" ></div>
						</td>
						<td><div id="next_button_div"><input id="wiz_next_button" type='button' title="<?php echo $this->_tpl_vars['APP']['LBL_NEXT_BUTTON_LABEL']; ?>
" class="button" onclick="javascript:navigate('next');" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_NEXT_BUTTON_LABEL']; ?>
"></div></td>
					</tr>
				</table>
			</td>
			<td  align="right" width='40%'><div id='wiz_location_message'></td>
		</tr>
	</table>
</div>
</p>


<table class='other view' cellspacing="1">
<tr>
<td rowspan='2' width='10%' scope="row" style="vertical-align: top;">
<div id='nav' >

<table border="0" cellspacing="0" cellpadding="0" width="100%" >
<tr><td scope='col'><div id='nav_step3'><a  href='<?php echo $this->_tpl_vars['CAMP_WIZ_URL']; ?>
1'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_GEN1']; ?>
</a></div></td></tr>
<tr><td scope='col'><div id='nav_step4'><a  href='<?php echo $this->_tpl_vars['CAMP_WIZ_URL']; ?>
2'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_GEN2']; ?>
</a></div></td></tr>
<tr><td scope='col'><div id='nav_step5'><a  href='<?php echo $this->_tpl_vars['CAMP_WIZ_URL']; ?>
3'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_TRACKERS']; ?>
</a></div></td></tr>
<tr><td scope='col'><div id='nav_step6'><a  href='<?php echo $this->_tpl_vars['CAMP_WIZ_URL']; ?>
4'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_SUBSCRIPTIONS']; ?>
</a></div></td></tr>
<tr><td scope='col'><div id='nav_step1'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_MARKETING']; ?>
</div></td></tr>
<tr><td scope='col'><div  id='nav_step2'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_SEND_EMAIL']; ?>
</div></td></tr>
<tr><td scope='col'><div id='nav_step7'><?php echo $this->_tpl_vars['MOD']['LBL_NAVIGATION_MENU_SUMMARY']; ?>
</div></td></tr>
</table>
</div>
</td>

<td  rowspan='2' width='100%' style="padding: 0;">
<div id="wiz_message"></div>
<div id=wizard>

	<div id='step1' >
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class='edit view'>
		<tr>
			<th colspan="4" align="left" ><h4 scope="row" NOWRAP valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_WIZ_MARKETING_TITLE']; ?>
 <?php echo $this->_tpl_vars['MRKT_NAME']; ?>
</h4></td>
		</tr>
		<tr><td scope="row" colspan="3"><?php echo $this->_tpl_vars['MOD']['LBL_WIZARD_MARKETING_MESSAGE']; ?>
<br></td><td>&nbsp;</td></tr>
		<tr><td colspan="4">&nbsp;</td></tr>
		<tr>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_MRKT_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td ><slot><input id='name' name='wiz_step3_name' title='<?php echo $this->_tpl_vars['MOD']['LBL_MRKT_NAME']; ?>
' size='25' maxlength='25' type="text" value="<?php echo $this->_tpl_vars['MRKT_NAME']; ?>
"></slot></td>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_STATUS_TEXT']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td ><slot><select tabindex='2' id='status' title='<?php echo $this->_tpl_vars['MOD']['LBL_STATUS_TEXT']; ?>
' name='wiz_step3_status'><?php echo $this->_tpl_vars['STATUS_OPTIONS']; ?>
</select></slot></td>
		</tr>
		<tr>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_FROM_MAILBOX_NAME']; ?>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td ><slot><select  title='<?php echo $this->_tpl_vars['MOD']['LBL_FROM_MAILBOX_NAME']; ?>
' id='inbound_email_id' name='wiz_step3_inbound_email_id' onchange='set_from_reply_info(this);'><?php echo $this->_tpl_vars['MAILBOXES']; ?>
</select></slot></td>

			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_START_DATE_TIME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td class="datafield"><slot><table  cellpadding="0" cellspacing="0"><tr><td nowrap><input title ='<?php echo $this->_tpl_vars['MOD']['LBL_START_DATE_TIME']; ?>
' id='date_start' name='wiz_step3_date_start' onblur="parseDate(this, '<?php echo $this->_tpl_vars['CALENDAR_DATEFORMAT']; ?>
');" size='11' tabindex='1' maxlength='10' type="text" value="<?php echo $this->_tpl_vars['MRKT_DATE_START']; ?>
"> <img src="<?php echo smarty_function_sugar_getimagepath(array('file' => 'jscalendar.gif'), $this);?>
" alt="<?php echo $this->_tpl_vars['CALENDAR_DATEFORMAT']; ?>
"  id="jscal_trigger" align="absmiddle">&nbsp;</td>
		    <td nowrap><input type="text" size='5' maxlength='5' id='time_start'  name='wiz_step3_time_start' tabindex="1" value="<?php echo $this->_tpl_vars['MRKT_TIME_START']; ?>
"/><?php echo $this->_tpl_vars['TIME_MERIDIEM']; ?>
</td></tr><tr><td nowrap><span class="dateFormat"><?php echo $this->_tpl_vars['USER_DATEFORMAT']; ?>
</span></td><td nowrap><span class="dateFormat"><?php echo $this->_tpl_vars['TIME_FORMAT']; ?>
</span></td></tr></table></slot></td>

		</tr>
		<tr>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_FROM_NAME']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td class="datafield"><slot><input name='wiz_step3_from_name' id='from_name' title='<?php echo $this->_tpl_vars['MOD']['LBL_FROM_NAME']; ?>
' tabindex='2' size='25' maxlength='<?php echo $this->_tpl_vars['MRKT_FROM_NAME_LEN']; ?>
' type="text" value="<?php echo $this->_tpl_vars['MRKT_FROM_NAME']; ?>
"></slot></td>

			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_FROM_ADDR']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td class="datafield"><slot><input name='wiz_step3_from_addr' id='from_addr' title='<?php echo $this->_tpl_vars['MOD']['LBL_FROM_ADDR']; ?>
' tabindex='2' size='25' maxlength='<?php echo $this->_tpl_vars['MRKT_FROM_NAME_LEN']; ?>
' type="text" value="<?php echo $this->_tpl_vars['MRKT_FROM_ADDR']; ?>
"></slot></td>
		</tr>
		<tr>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_REPLY_NAME']; ?>
</slot></td>
			<td class="datafield"><slot><input name='wiz_step3_reply_to_name' id='reply_name' title='<?php echo $this->_tpl_vars['MOD']['LBL_REPLY_NAME']; ?>
' tabindex='2' size='25' maxlength='<?php echo $this->_tpl_vars['MRKT_REPLY_NAME_LEN']; ?>
' type="text" value="<?php echo $this->_tpl_vars['MRKT_REPLY_NAME']; ?>
"></slot></td>

			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_REPLY_ADDR']; ?>
</slot></td>
			<td class="datafield"><slot><input name='wiz_step3_reply_to_addr' id='reply_addr' title='<?php echo $this->_tpl_vars['MOD']['LBL_REPLY_ADDR']; ?>
' tabindex='2' size='25' maxlength='<?php echo $this->_tpl_vars['MRKT_REPLY_ADDR_LEN']; ?>
' type="text" value="<?php echo $this->_tpl_vars['MRKT_REPLY_ADDR']; ?>
"></slot></td>
		</tr>
		<tr>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_MESSAGE_FOR']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td class="datafield"><slot><input type="checkbox"  tabindex='1' onclick="toggle_message_for(this);" id="all_prospect_lists" <?php echo $this->_tpl_vars['ALL_PROSPECT_LISTS_CHECKED']; ?>
 name='all_prospect_lists' title="<?php echo $this->_tpl_vars['MOD']['LBL_MESSAGE_FOR']; ?>
"><?php echo $this->_tpl_vars['MOD']['LBL_ALL_PROSPECT_LISTS']; ?>
</slot></td>
			<td scope="col" NOWRAP valign="top"><slot><?php echo $this->_tpl_vars['MOD']['LBL_TEMPLATE']; ?>
 <span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></slot></td>
			<td class="datafield" nowrap>
					<select  id="template_id" name='template_id' tabindex='2' onchange="show_edit_template_link(this);" title='<?php echo $this->_tpl_vars['MOD']['LBL_TEMPLATE']; ?>
'><?php echo $this->_tpl_vars['EMAIL_TEMPLATE_OPTIONS']; ?>
</select>
					&nbsp;<input type='button' class='button' onclick='open_email_template_form();' value='<?php echo $this->_tpl_vars['MOD']['LBL_CREATE_EMAIL_TEMPLATE']; ?>
'>
					<span name='edit_template' id='edit_template' style="<?php echo $this->_tpl_vars['EDIT_TEMPLATE']; ?>
">
					&nbsp;<input type='button' class='button' onclick='edit_email_template_form();' value='<?php echo $this->_tpl_vars['MOD']['LBL_EDIT_EMAIL_TEMPLATE']; ?>
'>
					</span>
				</slot>
			</td>
		</tr>
		<tr>
			<td  NOWRAP valign="top"><slot>&nbsp;</slot></td>
			<td width="35%" class="datafield"><slot><select <?php echo $this->_tpl_vars['MESSAGE_FOR_DISABLED']; ?>
  tabindex='1' multiple size="5" id="message_for" name='message_for[]' title="<?php echo $this->_tpl_vars['MOD']['LBL_MESSAGE_FOR']; ?>
"><?php echo $this->_tpl_vars['SCOPE_OPTIONS']; ?>
</select></slot></td>
			<td  NOWRAP valign="top"><slot>&nbsp;</slot></td>
			<td><slot>&nbsp;</slot></td>
		</tr>
		</table>


		<?php echo '
		<script type="text/javascript">
			Calendar.setup ({'; ?>

				inputField : "date_start", ifFormat : "<?php echo $this->_tpl_vars['CALENDAR_DATEFORMAT']; ?>
", showsTime : false, button : "jscal_trigger", singleClick : true, step : 1
			<?php echo '});


		function show_edit_template_link(field) {

			var field1=document.getElementById(\'edit_template\');
			if (field.selectedIndex == 0) {
				field1.style.visibility="hidden";
			}
			else {
				field1.style.visibility="visible";
			}
		}

		function refresh_email_template_list(template_id, template_name) {
			var field=document.getElementById(\'template_id\');
			var bfound=0;
			for (var i=0; i < field.options.length; i++) {
					if (field.options[i].value == template_id) {
						if (field.options[i].selected==false) {
							field.options[i].selected=true;
						}
						field.options[i].text = template_name;
						bfound=1;
					}
			}
			//add item to selection list.
			if (bfound == 0) {
				var newElement=document.createElement(\'option\');
				newElement.text=template_name;
				newElement.value=template_id;
				field.options.add(newElement);
				newElement.selected=true;
			}

			//enable the edit button.
			var field1=document.getElementById(\'edit_template\');
			field1.style.visibility="visible";
		}

		function open_email_template_form() {
		'; ?>

			URL="index.php?module=EmailTemplates&action=EditView&campaign_id=<?php echo $this->_tpl_vars['CAMPAIGN_ID']; ?>
";
			URL+="&sugar_body_only=1";
		<?php echo '
			windowName = \'email_template\';
			windowFeatures = \'width=800\' + \',height=600\' 	+ \',resizable=1,scrollbars=1\';

			win = window.open(URL, windowName, windowFeatures);
			if(window.focus)
			{
				// put the focus on the popup if the browser supports the focus() method
				win.focus();
			}
		}
		function edit_email_template_form() {
		'; ?>

			var field=document.getElementById('template_id');
			URL="index.php?module=EmailTemplates&action=EditView&campaign_id=<?php echo $this->_tpl_vars['CAMPAIGN_ID']; ?>
";
			URL+="&sugar_body_only=1";
			<?php echo '
			if (field.options[field.selectedIndex].value != \'undefined\') {
				URL+="&record="+field.options[field.selectedIndex].value;
			}
			windowName = \'email_template\';
			windowFeatures = \'width=800\' + \',height=600\' 	+ \',resizable=1,scrollbars=1\';

			win = window.open(URL, windowName, windowFeatures);
			if(window.focus)
			{
				// put the focus on the popup if the browser supports the focus() method
				win.focus();
			}
		}

		function toggle_message_for(all_prospects_checkbox) {
			message_for = document.getElementById(\'message_for\');
			if (all_prospects_checkbox.checked) {
				message_for.disabled=true;
			} else {
				message_for.disabled=false;
			}
		}
		'; ?>

		var from_emails=new Array(<?php echo $this->_tpl_vars['FROM_EMAILS']; ?>
);
		<?php echo '
		function set_from_email_and_name(mailbox) {
			from_email_span = document.getElementById(\'from_email\');
			from_name = document.getElementById(\'from_name\');
			for (i=0; i<=from_emails.length; i++) {
				if ((mailbox.value == \'\' &&  from_emails[i] ==\'EMPTY\') || from_emails[i] == mailbox.value) {
					var j=i+1;
					from_email_span.innerHTML=from_emails[j+1];
					if (from_name.value==\'\') {
						from_name.value=from_emails[j];
					}
					return;
				}
			}
		}

		'; ?>

		// cn: bug 12587 - allow setting of Reply-to X from campaigns
		var ie_stored_options = <?php echo $this->_tpl_vars['IEStoredOptions']; ?>
;
		<?php echo '

		function set_from_reply_info(mailbox) {
			var fn = document.getElementById(\'from_name\');
			var fa = document.getElementById(\'from_addr\');
			var rn = document.getElementById(\'reply_name\');
			var ra = document.getElementById(\'reply_addr\');

			if(mailbox.value != \'\') {
				if(ie_stored_options[mailbox.value]) {
					var focusIe = ie_stored_options[mailbox.value];
					// from name
					if(focusIe.from_name && focusIe.from_name != "")
						fn.value = focusIe.from_name;
					else
						fn.value = \'\';

					// from addr
					if(focusIe.from_addr && focusIe.from_addr != "")
						fa.value = focusIe.from_addr;
					else
						fa.value = \'\';

					// reply name
					if(focusIe.reply_to_name && focusIe.reply_to_name != "")
						rn.value = focusIe.reply_to_name;
					else
						rn.value = \'\';

					// reply add
					if(focusIe.reply_to_addr && focusIe.reply_to_addr != "")
						ra.value = focusIe.reply_to_addr;
					else
						ra.value = \'\';
				}
			} else {
				fn.value = \'\';
				fa.value = \'\';
				rn.value = \'\';
				ra.value = \'\';
			}
		}


		</script>
		'; ?>

		</div>
	</div>


	<div id='step2' >
			<table>
			<td ><h3><?php echo $this->_tpl_vars['MOD']['LBL_WIZ_SENDMAIL_TITLE']; ?>
 <?php echo $this->_tpl_vars['MRKT_NAME']; ?>
</h3></td>
			<tr><td class="datalabel"><?php echo $this->_tpl_vars['MOD']['LBL_WIZARD_SENDMAIL_MESSAGE']; ?>
<br></td></tr>
			<tr><td class="datalabel">&nbsp;</td></tr>
			<tr><td>
				<input type="radio"  id="next_step" title="<?php echo $this->_tpl_vars['MOD']['LBL_SAVE_EXIT_BUTTON_LABEL']; ?>
" name="wiz_home_next_step" value='1'checked ><?php echo $this->_tpl_vars['MOD']['LBL_SAVE_EXIT_BUTTON_LABEL']; ?>

			</td></tr>
			<tr><td>
				&nbsp;<div id='target_message'><font color='red'><b><?php echo $this->_tpl_vars['WARNING_MESSAGE']; ?>
</b></font></div>
				&nbsp;<div id='send_email1' ><input type="radio"  id="next_step" name="wiz_home_next_step" title="<?php echo $this->_tpl_vars['MOD']['LBL_SEND_AS_TEST']; ?>
" value='2' <?php echo $this->_tpl_vars['PL_DISABLED']; ?>
><?php echo $this->_tpl_vars['MOD']['LBL_SEND_AS_TEST']; ?>
</div>
			</td></tr>
			<tr><td>
				&nbsp;<div id='send_email2' <?php echo $this->_tpl_vars['SHOW_DIVS']; ?>
><input type="radio"  id="next_step" name='wiz_home_next_step' value='3' title='<?php echo $this->_tpl_vars['MOD']['LBL_SEND_EMAIL']; ?>
' <?php echo $this->_tpl_vars['PL_DISABLED']; ?>
><?php echo $this->_tpl_vars['MOD']['LBL_SEND_EMAIL']; ?>
</div>
			</td></tr></table>
	</div>




	</td>
</tr>
</table>

<?php echo '
<script language="javascript">
function determine_back(){
'; ?>

	var current_step = document.getElementById('wiz_current_step').value;
    var total_steps = document.getElementById('wiz_total_steps').value;
<?php echo '
	if(current_step == 1){
'; ?>

		document.getElementById('action').value='WizardNewsletter';
		document.getElementById('record').value='<?php echo $this->_tpl_vars['CAMPAIGN_ID']; ?>
';
		document.getElementById('return_id').value='<?php echo $this->_tpl_vars['CAMPAIGN_ID']; ?>
';
		document.getElementById('direct_step').value='4';
		document.getElementById('wizform').submit();
<?php echo '
	}else{
		navigate(\'back\');
	}


}
</script>
'; ?>

</form>
</div>

<?php echo smarty_function_sugar_getscript(array('file' => "modules/Campaigns/wizard.js"), $this);?>

<?php echo $this->_tpl_vars['WIZ_JAVASCRIPT']; ?>

<?php echo $this->_tpl_vars['DIV_JAVASCRIPT']; ?>

<?php echo $this->_tpl_vars['JAVASCRIPT']; ?>

<script language="javascript">
//	link_navs();
addToValidate('wizform', 'name', 'alphanumeric', true,  document.getElementById('name').title);
addToValidate('wizform', 'date_start', 'alphanumeric', true,  document.getElementById('date_start').title);
addToValidate('wizform', 'inbound_email_id', 'alphanumeric', true,  document.getElementById('inbound_email_id').title);
</script>

