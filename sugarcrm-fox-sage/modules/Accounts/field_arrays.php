<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
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

 * Description:  Contains field arrays that are used for caching
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
$fields_array['Account'] = array ('column_fields' => Array(
		"annual_revenue"
		,"billing_address_street"
		,"billing_address_city"
		,"billing_address_state"
		,"billing_address_postalcode"
		,"billing_address_country"
		,"date_entered"
		,"date_modified"
		,"modified_user_id"
		,"assigned_user_id"
		,"description"
		,"email1"
		,"email2"
		,"employees"
		,"id"
		,"industry"
		,"name"
		,"ownership"
		,"parent_id"
		,"phone_alternate"
		,"phone_fax"
		,"phone_office"
		,"rating"
		,"shipping_address_street"
		,"shipping_address_city"
		,"shipping_address_state"
		,"shipping_address_postalcode"
		,"shipping_address_country"
		,"sic_code"
		,"ticker_symbol"
		,"account_type"
		,"website"
		, "created_by"
		),
        'list_fields' => Array('id', 'name', 'website', 'phone_office', 'assigned_user_name', 'assigned_user_id'
	, 'billing_address_street'
	, 'billing_address_city'
	, 'billing_address_state'
	, 'billing_address_postalcode'
	, 'billing_address_country'
	, 'shipping_address_street'
	, 'shipping_address_city'
	, 'shipping_address_state'
	, 'shipping_address_postalcode'
	, 'shipping_address_country'
		),
        'required_fields' => array("name"=>1),
);
?>