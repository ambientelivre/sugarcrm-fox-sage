<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');


/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Master Subscription
 * Agreement ("License") which can be viewed at
 * http://www.sugarcrm.com/crm/master-subscription-agreement
 * By installing or using this file, You have unconditionally agreed to the
 * terms and conditions of the License, and You may not use this file except in
 * compliance with the License.  Under the terms of the license, You shall not,
 * among other things: 1) sublicense, resell, rent, lease, redistribute, assign
 * or otherwise transfer Your rights to the Software, and 2) use the Software
 * for timesharing or service bureau purposes such as hosting the Software for
 * commercial gain and/or for the benefit of a third party.  Use of the Software
 * may be subject to applicable fees and any use of the Software without first
 * paying applicable fees is strictly prohibited.  You do not have the right to
 * remove SugarCRM copyrights from the source code or user interface.
 *
 * All copies of the Covered Code must include on each user interface screen:
 *  (i) the "Powered by SugarCRM" logo and
 *  (ii) the SugarCRM copyright notice
 * in the same form as they appear in the distribution.  See full license for
 * requirements.
 *
 * Your Warranty, Limitations of liability and Indemnity are expressly stated
 * in the License.  Please refer to the License for the specific language
 * governing these rights and limitations under the License.  Portions created
 * by SugarCRM are Copyright (C) 2004-2012 SugarCRM, Inc.; All Rights Reserved.
 ********************************************************************************/

	

$mod_strings = array (
  'LBL_CONNECT_BUTTON_TITLE' => 'Conectar',
  'LBL_NOTE' => 'Notas',
  'LBL_CONNECTED' => 'Conectado',
  'LBL_DISCONNECTED' => 'Não conectado',
  'LBL_ERR_POPUPS_DISABLED' => 'Favor habilitar o Popup ou adicionar excessões para o website "{0}" na lista de excessões para conectar.',
  'LBL_ID' => 'ID',
  'LBL_URL' => 'URL',
  'LBL_OAUTH_NAME' => '%s',
  'LBL_REAUTHENTICATE_KEY' => 'a',
  'LBL_ASSIGNED_TO_ID' => 'Id Usuário Atribuído',
  'LBL_ASSIGNED_TO_NAME' => 'Usuário do Sugar',
  'LBL_DATE_ENTERED' => 'Data de Criação',
  'LBL_DATE_MODIFIED' => 'Data de Modificação',
  'LBL_MODIFIED' => 'Modificado Por',
  'LBL_MODIFIED_ID' => 'Modificado Por Id',
  'LBL_MODIFIED_NAME' => 'Modificado Por Nome',
  'LBL_CREATED' => 'Criado Por',
  'LBL_CREATED_ID' => 'Criado Por Id',
  'LBL_DESCRIPTION' => 'Descrição',
  'LBL_DELETED' => 'Eliminado',
  'LBL_NAME' => 'Nome de Usuário da App',
  'LBL_CREATED_USER' => 'Criado pelo Usuário',
  'LBL_MODIFIED_USER' => 'Modificado pelo Usuário',
  'LBL_LIST_NAME' => 'Nome',
  'LBL_TEAM' => 'Equipes',
  'LBL_TEAMS' => 'Equipes',
  'LBL_TEAM_ID' => 'ID da Equipe',
  'LBL_LIST_FORM_TITLE' => 'Lista de Conta Externa',
  'LBL_MODULE_NAME' => 'Conta Externa',
  'LBL_MODULE_TITLE' => 'Contas Externas',
  'LBL_HOMEPAGE_TITLE' => 'As Minhas Contas Externas',
  'LNK_NEW_RECORD' => 'Criar Conta Externa',
  'LNK_LIST' => 'Ver Contas Externas',
  'LNK_IMPORT_SUGAR_EAPM' => 'Importar Contas Externas',
  'LBL_SEARCH_FORM_TITLE' => 'Pesquisar em Fonte Externa',
  'LBL_HISTORY_SUBPANEL_TITLE' => 'Ver Histórico',
  'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Atividades',
  'LBL_SUGAR_EAPM_SUBPANEL_TITLE' => 'Contas Externas',
  'LBL_NEW_FORM_TITLE' => 'Nova Conta Externa',
  'LBL_PASSWORD' => 'Senha da App',
  'LBL_USER_NAME' => 'Nome do Usuário da App',
  'LBL_APPLICATION' => 'Aplicação',
  'LBL_API_DATA' => 'Dados da API',
  'LBL_API_TYPE' => 'Tipo de Autenticação',
  'LBL_API_CONSKEY' => 'Chave do Consumidor',
  'LBL_API_CONSSECRET' => 'Segredo do Consumidor',
  'LBL_API_OAUTHTOKEN' => 'Token OAuth',
  'LBL_AUTH_UNSUPPORTED' => 'Este método de autorização não é suportado pela aplicação',
  'LBL_AUTH_ERROR' => 'Tentativa de autenticação com a conta externa falhou.',
  'LBL_VALIDATED' => 'Acesso Validado',
  'LBL_ACTIVE' => 'Activo',
  'LBL_SUGAR_USER_NAME' => 'Usuário Sugar',
  'LBL_DISPLAY_PROPERTIES' => 'Propriedades do Display',
  'LBL_ERR_NO_AUTHINFO' => 'Não existe informação de autenticação para esta conta.',
  'LBL_ERR_NO_TOKEN' => 'Não existe tokens válidos de autenticação para esta conta.',
  'LBL_ERR_FAILED_QUICKCHECK' => 'Não está autenticado atualmente na sua conta {0}. Carregar em OK para fazer nova autenticação na sua conta para ativar o registo da conta externa.',
  'LBL_MEET_NOW_BUTTON' => 'Reunir Agora',
  'LBL_VIEW_LOTUS_LIVE_MEETINGS' => 'Ver as Próximas Reuniões LotusLive&#153;',
  'LBL_TITLE_LOTUS_LIVE_MEETINGS' => 'Próximas Reuniões LotusLive&#153;',
  'LBL_VIEW_LOTUS_LIVE_DOCUMENTS' => 'Ver Documentos LotusLive&#153;',
  'LBL_TITLE_LOTUS_LIVE_DOCUMENTS' => 'Documentos LotusLive&#153;',
  'LBL_REAUTHENTICATE_LABEL' => 'Repetir autenticação',
  'LBL_APPLICATION_FOUND_NOTICE' => 'Uma conta para esta aplicação já existe. Foi reintegrada a conta existente.',
  'LBL_OMIT_URL' => '(Omitir http:// ou https://)',
  'LBL_OAUTH_SAVE_NOTICE' => 'Carregar Gravar para criar um registo de conta externa. Será direcionado para uma página para inserir a informação da conta, para autorizar o acesso do Sugar. Depois de introduzida a informação da conta, irá ser direcionado de volta para o Sugar.',
  'LBL_BASIC_SAVE_NOTICE' => 'Clique em Conectar para conectar na Conta do Sugar.',
  'LBL_ERR_FACEBOOK' => 'O Facebook retornou um erro e o feed não pode ser mostrado.',
  'LBL_ERR_NO_RESPONSE' => 'Um erro ocorreu quando foi tentado gravar para a conta externa.',
  'LBL_ERR_TWITTER' => 'O Twitter retornou um erro, e o feed não pode ser mostrado.',
);

