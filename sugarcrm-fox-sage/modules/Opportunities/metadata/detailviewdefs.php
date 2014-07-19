<?php

global $current_user, $db;
$user_name = $current_user->user_name;

$sessionIdPortalEBS = file_get_contents("http://portalintegracao.ebs.com.br/Site/Acoes/Autenticacao.ashx?usuario=".$user_name."&senha=A62A14EF-ADB9-4B83-B49F-4F4B9A7D117E&crm=1");
$sessionIdPortalEBS = "";
if(isset($this) && isset($this->focus) && isset($this->focus->name)){
	$account_id = $this->focus->account_id;

	$sql1="SELECT *
	FROM accounts 
	LEFT JOIN accounts_cstm ON id_c=id
	WHERE id = '$account_id'";

	$res1 = $db->query($sql1);
	$row1 = $db->fetchByAssoc($res1);

	$sql2="SELECT *
	FROM accounts_ra_ramos_atividade_1_c 
	WHERE accounts_ra_ramos_atividade_1accounts_ida = '$account_id'";
	$res2 = $db->query($sql2);
	$row2 = $db->fetchByAssoc($res2);


	$nome_conta = $row1['name'];
	$pjpf = $row1['cpf_cnpj_c'];
	$oportunidade_id = $this->focus->id;
	$conta_id = $this->focus->account_id;
	$email = "";
	$ramoAtividade = "";
	$rua = $row1['billing_address_street'];
	$bairro = "";
	$cidade = $row1['billing_address_city'];
	$cep = $row1['billing_address_postalcode'];
	$pais = $row1['billing_address_country'];
	$estado = $row1['billing_address_state'];

	$botao = "<input title='Gerar orçamento' accesskey='I' name='button' value='Gerar orçamento' onclick=\"window.open('http://portalintegracao.ebs.com.br/Site/Interface/0.0/Faturamento/Orcamento/OrcamentoCadastroViewX.html?SID=".$sessionIdPortalEBS."&Acao=novo&Nome=".$nome_conta."&PJPF=".$pjpf."&OportunidadeId=".$oportunidade_id."&ContaId=".$conta_id."&Email=".$email."&RamoAtvidade=".$ramoAtividade."&Rua=".$rua."&Bairro=".$bairro."&Cidade=".$cidade."&CEP=".$cep."&Pais=".$pais."&Estado=".$estado."','_blank');\" type='submit' />";
}else{
	$botao = "";
}
// die($botao);


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

$viewdefs['Opportunities']['DetailView'] = array(
    'templateMeta' => array('form' => array('buttons'=>array('EDIT', 'DUPLICATE', 'DELETE', 'FIND_DUPLICATES',
    	array (
            'customCode' => $botao,
          ),

    	)),
       						'maxColumns' => '2', 
                            'widths' => array(
                                            array('label' => '10', 'field' => '30'), 
                                            array('label' => '10', 'field' => '30')
                                            ),
                           ),
    'panels' => array(                           
        'default' => array (
	        array('name',
	              'account_name', 
	        ),
	        
	        array(
	        	array('name'=>'amount','label' => '{$MOD.LBL_AMOUNT} ({$CURRENCY})'),
	        	'date_closed',
	        ),
	         
	        array (
	        	'sales_stage',
	        	'opportunity_type'
	        ),
	        
	        array(
	        	'probability',
	        	'lead_source',
	            
	            
	        ),  
	        
	        array (
	        	'next_step',
	            'campaign_name'
	        ),
	        array(
	            array(
	               'name'=>'description',
	               'nl2br'=>true
	            )
	        )
        ),
        
        'LBL_PANEL_ASSIGNMENT' => array(
	        array (
	          array (
	            'name' => 'assigned_user_name',
	            'label' => 'LBL_ASSIGNED_TO',
	          ),
	          array (
	            'name' => 'date_modified',
	            'label' => 'LBL_DATE_MODIFIED',
	            'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
	          ),
	        ),
	        array (
	          array (
	            'name' => 'date_entered',
	            'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
	          ),
	        ),	     
        ),

    )
);
?>