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
  'ERR_DELETE_RECORD' => 'Um número de registros deverá ser especificado para eliminar a conta.',
  'ERR_EMAIL_INCORRECT' => 'Forneça um endereço de e-mail válido de modo a criar e enviar a senha.',
  'ERR_EMAIL_NOT_SENT_ADMIN' => 'O sistema foi incapaz de processar o seu pedido. Por favor verifique:',
  'ERR_EMAIL_NO_OPTS' => 'A configuração ideal de E-mail Recebido não foi encontrada.',
  'ERR_ENTER_CONFIRMATION_PASSWORD' => 'Por favor confirme a sua nova senha.',
  'ERR_ENTER_NEW_PASSWORD' => 'Por favor introduza a sua nova senha.',
  'ERR_ENTER_OLD_PASSWORD' => 'Por favor introduza a sua antiga senha.',
  'ERR_IE_FAILURE1' => '[Clique aqui para voltar]',
  'ERR_IE_FAILURE2' => 'Houve uma falha na conexão com a conta de e-mail. Verifique a configuração.',
  'ERR_IE_MISSING_REQUIRED' => 'Informações de configurações do E-mail de Entrada em falta. Por favor verifique as suas configurações e tente novamente. Sê não está a configurar o E-mail de Entrada por favor apague todos os campos desta seção.',
  'ERR_INVALID_PASSWORD' => 'Deverá introduzir um usuário e uma senha válida.',
  'ERR_LAST_ADMIN_1' => 'O nome do usuário',
  'ERR_LAST_ADMIN_2' => 'É o último usuário Administrador.  No mínimo um usuário deve ser Administrador.<br>Marque a opção de usuário Admin.',
  'ERR_NO_LOGIN_MOBILE' => 'A sua primeira autenticação nesta aplicação deve ser feita num browser não-móvel ou em modo normal. Por favor tente de novo com um browser total ou clique no link normal abaixo. Pedimos desculpa pela inconveniência.',
  'ERR_PASSWORD_CHANGE_FAILED_1' => 'Alteração da senha do usuário falhou para',
  'ERR_PASSWORD_CHANGE_FAILED_2' => 'Falhou.  A nova senha deverá ser introduzida.',
  'ERR_PASSWORD_CHANGE_FAILED_3' => 'Nova senha não é valida',
  'ERR_PASSWORD_INCORRECT_OLD_1' => 'Senha antiga incorreta para',
  'ERR_PASSWORD_INCORRECT_OLD_2' => 'Re-introduzir senha',
  'ERR_PASSWORD_LINK_EXPIRED' => 'O seu link expirou, por favor crie um novo',
  'ERR_PASSWORD_MISMATCH' => 'As senhas não confere.',
  'ERR_PASSWORD_USERNAME_MISSMATCH' => 'Deverá especificar um Nome do usuário e Endereço de E-mail válidos.',
  'ERR_REASS_DIFF_USERS' => 'Por favor selecione uma atribuição para usuário que seja diferente da atribuição do usuário.',
  'ERR_REASS_SELECT_MODULE' => 'Por favor volte atrás e selecione pelo menos um módulo.',
  'ERR_RECIPIENT_EMAIL' => 'Endereço de E-mail do Destinatário',
  'ERR_REENTER_PASSWORDS' => 'Por favor introduza novamente as senhas.  A senha nova e a sua confirmação não são compatíveis.',
  'ERR_REPORT_LOOP' => 'O sistema detectou um erro. Um usuário não pode reportar a si mesmo e nenhum dos seus superiores podem reportar a ele.',
  'ERR_RULES_NOT_MET' => 'A senha inserida não cumpria os requisitos. Por favor, tente novamente.',
  'ERR_SERVER_SMTP_EMPTY' => 'Não é possível enviar um e-mail para o usuário. Por favor, verifique o Mail Transfer Agent nas Definições de E-mail.',
  'ERR_SERVER_STATUS' => 'O Status do seu servidor',
  'ERR_SMTP_URL_SMTP_PORT' => 'URL e Porta do Servidor SMTP',
  'ERR_SMTP_USERNAME_SMTP_PASSWORD' => 'Nome do usuário SMTP e senha SMTP',
  'ERR_USER_INFO_NOT_FOUND' => 'Informação de usuário não encontrada',
  'ERR_USER_IS_LOCKED_OUT' => 'Este usuário está bloqueado do Sugar e não consegue aceder com a sua senha existente.',
  'ERR_USER_NAME_EXISTS_1' => 'O nome do usuário',
  'ERR_USER_NAME_EXISTS_2' => 'já existe. Nomes de usuários duplicados não são permitidos.<br>Altere o nome do usuário para ser único.',
  'LBL_ACCOUNT_NAME' => 'Nome da Conta',
  'LBL_ADDRESS' => 'Endereço:',
  'LBL_ADDRESS_CITY' => 'Cidade:',
  'LBL_ADDRESS_COUNTRY' => 'País:',
  'LBL_ADDRESS_INFORMATION' => 'Endereço',
  'LBL_ADDRESS_POSTALCODE' => 'Código Postal:',
  'LBL_ADDRESS_STATE' => 'Estado:',
  'LBL_ADDRESS_STREET' => 'Rua:',
  'LBL_ADMIN' => 'Administrador:',
  'LBL_ADMIN_DESC' => 'O usuário pode acessar a todos os registros da página de Administração, independentemente da segurança de equipe.',
  'LBL_ADMIN_USER' => 'usuário Administrador de Sistema',
  'LBL_ADVANCED' => 'Avançada',
  'LBL_AFFECTED' => 'afetou',
  'LBL_ANY_ADDRESS' => 'Qualquer Endereço:',
  'LBL_ANY_EMAIL' => 'Outro E-mail:',
  'LBL_ANY_PHONE' => 'Telefone Qualquer:',
  'LBL_APPLY_OPTIMUMS' => 'Aplicar Ideais',
  'LBL_ASSIGN_PRIVATE_TEAM' => '(equipe privada na gravação)',
  'LBL_ASSIGN_TEAM' => 'Atribuir à equipe',
  'LBL_ASSIGN_TO_USER' => 'Atribuir ao usuário',
  'LBL_AUTHENTICATE_ID' => 'ID Autenticação',
  'LBL_BASIC' => 'Configuração de E-mail de Entrada',
  'LBL_BUTTON_CREATE' => 'Criar',
  'LBL_BUTTON_EDIT' => 'Editar',
  'LBL_CALENDAR_OPTIONS' => 'Opções de Calendário',
  'LBL_CANCEL' => 'Cancelar',
  'LBL_CANNOT_SEND_PASSWORD' => 'Não é possível enviar senha',
  'LBL_CERT' => 'Validar Certificado',
  'LBL_CERT_DESC' => 'Forçar validação do Certificado de Segurança do mail server - não utilizar se for auto-assinado.',
  'LBL_CHANGE_PASSWORD' => 'Alterar senha',
  'LBL_CHANGE_PASSWORD_TITLE' => 'Alterar senha',
  'LBL_CHANGE_SYSTEM_PASSWORD' => 'Por favor forneça uma nova senha.',
  'LBL_CHECKMARK' => 'Checar',
  'LBL_CHOOSE_A_KEY' => 'Escolha uma chave para evitar a publicação não autorizada do seu calendário',
  'LBL_CHOOSE_EMAIL_PROVIDER' => 'Escolha o seu fornecedor de e-mail',
  'LBL_CHOOSE_WHICH' => 'Escolha quais os módulos que deseja visualizar',
  'LBL_CITY' => 'Cidade:',
  'LBL_CLEAR_BUTTON_TITLE' => 'Apagar',
  'LBL_CONFIRM_PASSWORD' => 'Confirmar senha:',
  'LBL_CONFIRM_REGULAR_USER' => 'Alterou o tipo de usuário de Administrador de Sistema para usuário Comum. Depois de gravar essa alteração, o usuário não tem privilégios de administrador do sistema. \\n\\nClique em OK? para prosseguir.\\nClique Cancelar? para voltar ao registros.',
  'LBL_COUNTRY' => 'País:',
  'LBL_CREATED_BY_NAME' => 'Criado por',
  'LBL_CURRENCY' => 'Moeda:',
  'LBL_CURRENCY_EXAMPLE' => 'Mostrar Exemplo de Moeda',
  'LBL_CURRENCY_SIG_DIGITS' => 'Número de dígitos da Moeda',
  'LBL_CURRENCY_SIG_DIGITS_DESC' => 'Número de casas decimais a mostrar para a moeda corrente',
  'LBL_CURRENCY_TEXT' => 'selecione a moeda padrão',
  'LBL_DATE_ENTERED' => 'Data da Criação',
  'LBL_DATE_FORMAT' => 'Formato da Data:',
  'LBL_DATE_FORMAT_TEXT' => 'Configure o formato para apresentação de data (date stamps)',
  'LBL_DATE_MODIFIED' => 'Data da modificação',
  'LBL_DECIMAL_SEP' => 'Símbolo do décimo',
  'LBL_DECIMAL_SEP_TEXT' => 'Carácter usado para separador dos decimais',
  'LBL_DEFAULT_PRIMARY_TEAM' => 'Time Primário Padrão',
  'LBL_DEFAULT_SUBPANEL_TITLE' => 'usuários',
  'LBL_DEFAULT_TEAM' => 'Equipe padrão',
  'LBL_DEFAULT_TEAM_TEXT' => 'Equipe padrão para novos registros',
  'LBL_DELETED' => 'Deletado',
  'LBL_DELETE_GROUP_CONFIRM' => 'Tem certeza de que deseja excluir este grupo de usuários? Clique em OK para excluir o registros do usuário.<br><br />Após clicar em OK, terá a possibilidade de transferir os registros atribuídos ao grupo de usuários para outro usuário.',
  'LBL_DELETE_PORTAL_CONFIRM' => 'Tem certeza que quer eliminar este API do usuário do Portal? Clique em OK para excluir o registros do usuário.',
  'LBL_DELETE_USER' => 'Eliminar usuário',
  'LBL_DELETE_USER_CONFIRM' => 'Quando um usuário é apagado, o Colaborador correspondente também será apagado. Após o usuário ser apagado, todas as definições de workflow e relatórios que envolvam o usuário podem necessitar de ser atualizados.<br><br>Clique OK para apagar o usuário. Após clicar OK, ser-lhe-a oferecida a possibilidade de re-atribuir os registros a outro usuário.',
  'LBL_DEPARTMENT' => 'Departamento:',
  'LBL_DESCRIPTION' => 'Descrição:',
  'LBL_DISPLAY_TABS' => 'Exibir Módulos',
  'LBL_DOWNLOADS' => 'Downloads',
  'LBL_DST_INSTRUCTIONS' => '(+DST) indica que o Horário de Verão será observado',
  'LBL_EAPM_SUBPANEL_TITLE' => 'Contas Externas',
  'LBL_EDIT' => 'Editar',
  'LBL_EDITLAYOUT' => 'Editar Layout',
  'LBL_EDIT_TABS' => 'Editar Módulos',
  'LBL_EMAIL' => 'E-mail:',
  'LBL_EMAILS' => 'E-mails',
  'LBL_EMAIL_CHARSET' => 'Configuração de Caracteres das Respostas Enviadas',
  'LBL_EMAIL_EDITOR_OPTION' => 'Criar formato',
  'LBL_EMAIL_GMAIL_DEFAULTS' => 'Preencher Padrões de Gmail',
  'LBL_EMAIL_INBOUND_TITLE' => 'Configuração de E-mail de Entrada',
  'LBL_EMAIL_LINK_TYPE' => 'Cliente de e-mail',
  'LBL_EMAIL_LINK_TYPE_HELP' => '<b>Cliente de E-mail Padrão do Sistema</b> : cliente de email padrão definido pelo administrador do sistema. <br><b>Cliente de E-mail SugarCRM</b> : cliente de e-mail no módulo de E-mails do Sugar.<br><b>Cliente de E-mail Externo</b> : outro cliente de e-mail, como o Microsoft Outlook.',
  'LBL_EMAIL_NOT_SENT' => 'Não foi possível processar o seu pedido. Por favor contacte o administrador do sistema.',
  'LBL_EMAIL_OTHER' => 'E-mail 2:',
  'LBL_EMAIL_OUTBOUND_TITLE' => 'Configuração de E-mail Enviado',
  'LBL_EMAIL_PROVIDER' => 'Fornecedor de E-mail',
  'LBL_EMAIL_SHOW_COUNTS' => 'Mostrar contas de e-mail?',
  'LBL_EMAIL_SIGNATURE_ERROR1' => 'A assinatura deverá ter um nome.',
  'LBL_EMAIL_SMTP_SSL' => 'Permitir SMTP sobre SSL',
  'LBL_EMAIL_TEMPLATE_MISSING' => 'Nenhum modelo de e-mail está selecionado para o e-mail contendo a senha que será enviada para o usuário. Por favor selecione um modelo de e-mail na página de Gestão de senhas.',
  'LBL_EMPLOYEE_INFORMATION' => 'Dados do Funcionário',
  'LBL_EMPLOYEE_STATUS' => 'Status do Colaborador:',
  'LBL_ERROR' => 'Erro:',
  'LBL_EXCHANGE_SMTPPASS' => 'senha Exchange',
  'LBL_EXCHANGE_SMTPPORT' => 'Porta Servidor Exchange',
  'LBL_EXCHANGE_SMTPSERVER' => 'Servidor Exchange',
  'LBL_EXCHANGE_SMTPUSER' => 'usuário Exchange',
  'LBL_EXPORT_CHARSET' => 'Importar/Exportar Configuração de Caracteres',
  'LBL_EXPORT_CHARSET_DESC' => 'Escolha a configuração de caracteres utilizada na sua zona. Esta propriedade será utilizada para importação de dados, e-mails enviados, .exportações para arquivos csv, geração de PDF, e para geração de vCard.',
  'LBL_EXPORT_CREATED_BY' => 'Criado pelo ID',
  'LBL_EXPORT_DELIMITER' => 'Delimitador de campos na Exportação de dados',
  'LBL_EXPORT_DELIMITER_DESC' => 'Especifique o(s) caractere(s) utilizado(s) para delimitar os dados exportados.',
  'LBL_EXTERNAL_AUTH_ONLY' => 'Autenticar este usuário apenas através de',
  'LBL_EXT_AUTHENTICATE' => 'Autenticação Externa',
  'LBL_FAX' => 'Fax',
  'LBL_FAX_PHONE' => 'Fax',
  'LBL_FDOW' => '1o Dia da semana',
  'LBL_FDOW_TEXT' => 'First Day displayed in Week, Month, and Year Views',
  'LBL_FIND_OPTIMUM_KEY' => 'Buscar Chave',
  'LBL_FIND_OPTIMUM_MSG' => 'A procurar as variáveis ideais da conexão.',
  'LBL_FIND_OPTIMUM_TITLE' => 'Procurar a Configuração Ideal',
  'LBL_FIRST_NAME' => 'Primeiro Nome:',
  'LBL_FORCE' => 'Forçar a Negativo',
  'LBL_FORCE_DESC' => 'Alguns servidores IMAP e POP3 exigem switches especiais. Tenta forçar o switch negativo para conectar (ou seja, /notls)',
  'LBL_FOUND_OPTIMUM_MSG' => 'Encontrei a configuração ideal. Clique no botão para a aplicar na sua Caixa de Correio.',
  'LBL_GENERATE_PASSWORD' => 'Redefinir senha',
  'LBL_GENERATE_PASSWORD_BUTTON_KEY' => 'G',
  'LBL_GENERATE_PASSWORD_BUTTON_LABEL' => 'Redefinir senha',
  'LBL_GENERATE_PASSWORD_BUTTON_TITLE' => 'Redefinir senha [Alt+G]',
  'LBL_GMAIL_SMTPPASS' => 'senha Gmail',
  'LBL_GMAIL_SMTPUSER' => 'Endereço de e-mail Gmail',
  'LBL_GROUP_DESC' => 'Atuar como grupo de usuários.  Este usuário não poderá autenticar-se na interface web do Sugar Suite. Este usuário é utilizado apenas para atribuir itens a um grupo através da funcionalidade de E-mail de Entrada.',
  'LBL_GROUP_USER' => 'usuário de Grupo',
  'LBL_GROUP_USER_STATUS' => 'usuário de Grupo',
  'LBL_HELP' => 'Ajuda',
  'LBL_HIDEOPTIONS' => 'Esconder opções',
  'LBL_HIDE_TABS' => 'Ocultar Módulos',
  'LBL_HOME_PHONE' => 'Telefone de Casa:',
  'LBL_ICAL_PUB_URL' => 'iCal integration URL',
  'LBL_ICAL_PUB_URL_HELP' => 'Use este URL para subscrever o calendário SugarCRM no iCal.',
  'LBL_INBOUND_TITLE' => 'Informações da Conta',
  'LBL_IS_ADMIN' => 'É Administrador',
  'LBL_IS_GROUP' => 'grupo',
  'LBL_LANGUAGE' => 'Idioma:',
  'LBL_LAST_ADMIN_NOTICE' => 'selecionou-se a si próprio. Não pode alterar o seu Tipo de usuário ou status.',
  'LBL_LAST_NAME' => 'Último Nome:',
  'LBL_LAST_NAME_SLASH_NAME' => 'Último Nome/Nome',
  'LBL_LAYOUT_OPTIONS' => 'Opção de Layout',
  'LBL_LDAP' => 'LDAP',
  'LBL_LDAP_AUTHENTICATION' => 'Autenticação LDAP',
  'LBL_LDAP_ERROR' => 'Erro de LDAP: Por favor contate o administrador do sistema',
  'LBL_LDAP_EXTENSION_ERROR' => 'Erro LDAP: Extensões não carregadas',
  'LBL_LIST_ACCEPT_STATUS' => 'Status',
  'LBL_LIST_ADMIN' => 'Administrador',
  'LBL_LIST_DEPARTMENT' => 'Departamento',
  'LBL_LIST_DESCRIPTION' => 'Descrição',
  'LBL_LIST_EMAIL' => 'E-mail',
  'LBL_LIST_FORM_TITLE' => 'Lista de usuários',
  'LBL_LIST_GROUP' => 'Grupo',
  'LBL_LIST_LAST_NAME' => 'Último Nome',
  'LBL_LIST_MEMBERSHIP' => 'Relacionamento',
  'LBL_LIST_NAME' => 'Nome',
  'LBL_LIST_PASSWORD' => 'senha',
  'LBL_LIST_PRIMARY_PHONE' => 'Telefone Principal',
  'LBL_LIST_STATUS' => 'Status',
  'LBL_LIST_TITLE' => 'Cargo',
  'LBL_LIST_USER_NAME' => 'Nome',
  'LBL_LOCALE_DEFAULT_NAME_FORMAT' => 'Formato padrão de nome',
  'LBL_LOCALE_DESC_FIRST' => '[Nome]',
  'LBL_LOCALE_DESC_LAST' => '[Último Nome]',
  'LBL_LOCALE_DESC_SALUTATION' => '[Tratamento]',
  'LBL_LOCALE_DESC_TITLE' => '[Título]',
  'LBL_LOCALE_EXAMPLE_NAME_FORMAT' => 'Exemplo',
  'LBL_LOCALE_NAME_FORMAT_DESC' => 'Ajustar como os nomes serão mostrados.',
  'LBL_LOCALE_NAME_FORMAT_DESC_2' => '"s" Tratamento<BR>"f" Primeiro Nome<BR>"l" Último Nome',
  'LBL_LOGGED_OUT_1' => 'Você foi desconectado. Para acessar novamente favor clicar aqui.',
  'LBL_LOGGED_OUT_2' => 'Aqui',
  'LBL_LOGGED_OUT_3' => '.',
  'LBL_LOGIN' => 'Login',
  'LBL_LOGIN_ADMIN_CALL' => 'Por favor contate o administrador de sistema.',
  'LBL_LOGIN_ATTEMPTS_OVERRUN' => 'Demasiadas tentativas de login falhadas.',
  'LBL_LOGIN_BUTTON_KEY' => 'Botão de login',
  'LBL_LOGIN_BUTTON_LABEL' => 'Entrar',
  'LBL_LOGIN_BUTTON_TITLE' => 'Entrar [Alt+L]',
  'LBL_LOGIN_FORGOT_PASSWORD' => 'Esqueceu-se da senha?',
  'LBL_LOGIN_LOGIN_TIME_ALLOWED' => 'Pode tentar fazer o login de novo',
  'LBL_LOGIN_LOGIN_TIME_DAYS' => 'dias.',
  'LBL_LOGIN_LOGIN_TIME_HOURS' => 'Horas - Login',
  'LBL_LOGIN_LOGIN_TIME_MINUTES' => 'Minutos-  login',
  'LBL_LOGIN_LOGIN_TIME_SECONDS' => 'seg.',
  'LBL_LOGIN_OPTIONS' => 'Opções',
  'LBL_LOGIN_SUBMIT' => 'Submeter',
  'LBL_LOGIN_WELCOME_TO' => 'Bem-vindo',
  'LBL_MAILBOX' => 'Pasta Monitorizada',
  'LBL_MAILBOX_DEFAULT' => 'Caixa de Entrada',
  'LBL_MAILBOX_SSL_DESC' => 'Usar SSL na conexão. Se isto não funcionar, verifique se a sua instalação PHP incluiu "--with-imap-ssl" na configuração.',
  'LBL_MAILBOX_TYPE' => 'Ações Possíveis',
  'LBL_MAILMERGE' => 'Mail Merge',
  'LBL_MAILMERGE_TEXT' => 'Activar Mail Merge (o Mail Merge também deve ser ativado pelo administrador de sistema em Configurar Definições)',
  'LBL_MAIL_FROMADDRESS' => 'Endereço "De":',
  'LBL_MAIL_FROMNAME' => 'Nome "De":',
  'LBL_MAIL_OPTIONS_TITLE' => 'Opção de E-mail',
  'LBL_MAIL_SENDTYPE' => 'Mail Transfer Agent:',
  'LBL_MAIL_SMTPAUTH_REQ' => 'Utilizar Autenticação SMTP?',
  'LBL_MAIL_SMTPPASS' => 'senha SMTP:',
  'LBL_MAIL_SMTPPORT' => 'Porta SMTP:',
  'LBL_MAIL_SMTPSERVER' => 'Servidor SMTP:',
  'LBL_MAIL_SMTPTYPE' => 'Tipo de servidor SMTP:',
  'LBL_MAIL_SMTPUSER' => 'usuário SMTP:',
  'LBL_MAIL_SMTP_SETTINGS' => 'Especificação servidor SMTP',
  'LBL_MARK_READ' => 'Deixar mensagens no servidor',
  'LBL_MARK_READ_DESC' => 'Importar e marcar as mensagens lidas no servidor, sem apagar.',
  'LBL_MARK_READ_NO' => 'E-mail marcado para exclusão após importação',
  'LBL_MARK_READ_YES' => 'E-mail deixado no servidor após importação',
  'LBL_MAX_SUBTAB' => 'Número de Sub-tabuladores',
  'LBL_MAX_SUBTAB_DESCRIPTION' => 'Número de sub-tabuladores mostrados por Tabulador sem que entre no menu extra',
  'LBL_MAX_TAB' => 'Número de módulos a exibir:',
  'LBL_MAX_TAB_DESCRIPTION' => 'Número de Tabuladores mostrados no topo da página sem que entre no menu extra',
  'LBL_MESSENGER_ID' => 'Identificação no IM:',
  'LBL_MESSENGER_TYPE' => 'Tipo IM:',
  'LBL_MISSING_DEFAULT_OUTBOUND_SMTP_SETTINGS' => 'O administrador ainda não configurou a conta padrão de saída. Não é possível enviar e-mail de teste.',
  'LBL_MOBILE_PHONE' => 'Telemóvel:',
  'LBL_MODIFIED_BY' => 'Modificado Por',
  'LBL_MODIFIED_BY_ID' => 'Modificado Por ID',
  'LBL_MODIFIED_USER_ID' => 'ID Modificado por',
  'LBL_MODULE_NAME' => 'usuários',
  'LBL_MODULE_TITLE' => 'usuários: Tela Principal',
  'LBL_MY_TEAMS' => 'Minhas equipes',
  'LBL_NAME' => 'Nome:',
  'LBL_NAVIGATION_PARADIGM' => 'Paradigma de Navegação',
  'LBL_NAVIGATION_PARADIGM_DESCRIPTION' => 'Usar Tabuladores agrupados em vez das Tabuladores do módulo.',
  'LBL_NEW_FORM_TITLE' => 'Novo usuário',
  'LBL_NEW_PASSWORD' => 'senha Nova:',
  'LBL_NEW_PASSWORD1' => 'senha',
  'LBL_NEW_PASSWORD2' => 'Confirmar senha',
  'LBL_NEW_USER_BUTTON_KEY' => 'Novo usuário chave',
  'LBL_NEW_USER_BUTTON_LABEL' => 'Novo usuário',
  'LBL_NEW_USER_BUTTON_TITLE' => 'Novo usuário [Alt+N]',
  'LBL_NEW_USER_PASSWORD_1' => 'senha foi alterada com sucesso.',
  'LBL_NEW_USER_PASSWORD_2' => 'Foi enviado um e-mail ao usuário contendo uma senha gerada pelo sistema.',
  'LBL_NEW_USER_PASSWORD_3' => 'senha foi criada com sucesso.',
  'LBL_NORMAL_LOGIN' => 'Trocar para Vista Normal',
  'LBL_NOTES' => 'Notas ou Anexos:',
  'LBL_NUMBER_GROUPING_SEP' => 'Separador dos milhares (1000)',
  'LBL_NUMBER_GROUPING_SEP_TEXT' => 'Caractere usado para separador de milhares',
  'LBL_OAUTH_TOKENS' => 'OAuth Tokens',
  'LBL_OAUTH_TOKENS_SUBPANEL_TITLE' => 'Acesso OAuth Tokens',
  'LBL_OFFICE_PHONE' => 'Telefone do Escritório:',
  'LBL_OK' => 'OK',
  'LBL_OLD_PASSWORD' => 'senha Antiga:',
  'LBL_ONLY' => 'Apenas',
  'LBL_ONLY_SINCE' => 'Importar apenas a partir da última revisão:',
  'LBL_ONLY_SINCE_DESC' => 'Não foi possível separar as mensagens novas e lidas pela configuração POP3. Marque esta opção para rever as mensagens mais recentes, o que melhora o desempenho com servidores que não suportam IMAP.',
  'LBL_ONLY_SINCE_NO' => 'Não. Verificar todos os e-mails no mail server.',
  'LBL_ONLY_SINCE_YES' => 'Sim.',
  'LBL_OTHER' => 'Outro:',
  'LBL_OTHER_EMAIL' => 'Outro E-mail:',
  'LBL_OTHER_PHONE' => 'Outro Telefone:',
  'LBL_OWN_OPPS' => 'Nenhuma Oportunidade',
  'LBL_OWN_OPPS_DESC' => 'Aplique Verdadeiro se o usuário não tiver oportunidades atribuídas. Você deve ignorar esta opção para usuários que não são gerentes, e, não estão envolvidos em atividades de venda. Utilizado pelo módulo de Previsões.',
  'LBL_PASSWORD' => 'senha:',
  'LBL_PASSWORD_EXPIRATION_GENERATED' => 'A sua senha é gerada pelo sistema.',
  'LBL_PASSWORD_EXPIRATION_LOGIN' => 'A sua senha expirou. Por favor forneça uma nova senha.',
  'LBL_PASSWORD_EXPIRATION_TIME' => 'A sua senha expirou. Por favor forneça uma nova senha.',
  'LBL_PASSWORD_GENERATED' => 'Nova senha gerada',
  'LBL_PASSWORD_SENT' => 'senha atualizada',
  'LBL_PDF_FONT_NAME_DATA' => 'Fonte no Rodapé',
  'LBL_PDF_FONT_NAME_DATA_TEXT' => 'A fonte selecionada será aplicada ao texto do rodapé do Documento PDF',
  'LBL_PDF_FONT_NAME_MAIN' => 'Fonte para Cabeçalho e Corpo',
  'LBL_PDF_FONT_NAME_MAIN_TEXT' => 'A fonte selecionada será aplicada ao texto do cabeçalho e do corpo do Documento PDF',
  'LBL_PDF_FONT_SIZE_DATA' => 'Tamanho de Fonte de Dados',
  'LBL_PDF_FONT_SIZE_DATA_TEXT' => 'Tamanho de fonte PDF ( dados )',
  'LBL_PDF_FONT_SIZE_MAIN' => 'Tamanho de Fonte Principal',
  'LBL_PDF_FONT_SIZE_MAIN_TEXT' => 'Tamanho de Fonte PDF ( texto )',
  'LBL_PDF_MARGIN_BOTTOM' => 'Margem Inferior',
  'LBL_PDF_MARGIN_BOTTOM_TEXT' => 'Margem de base PDF',
  'LBL_PDF_MARGIN_FOOTER' => 'Margem do Rodapé',
  'LBL_PDF_MARGIN_FOOTER_TEXT' => 'Texto de margem rodapé PDF',
  'LBL_PDF_MARGIN_HEADER' => 'Margem do Cabeçalho',
  'LBL_PDF_MARGIN_HEADER_TEXT' => 'Texto de Margem cabeçalho para PDF',
  'LBL_PDF_MARGIN_LEFT' => 'Margem Esquerda',
  'LBL_PDF_MARGIN_LEFT_TEXT' => 'Margem esquerda PDF',
  'LBL_PDF_MARGIN_RIGHT' => 'Margem Direita',
  'LBL_PDF_MARGIN_RIGHT_TEXT' => 'Margem direita PDF',
  'LBL_PDF_MARGIN_TOP' => 'Margem Superior',
  'LBL_PDF_MARGIN_TOP_TEXT' => 'Margem de topo de página PDF',
  'LBL_PDF_PAGE_FORMAT' => 'Formato da Página',
  'LBL_PDF_PAGE_FORMAT_TEXT' => 'O formato utilizado para páginas',
  'LBL_PDF_PAGE_ORIENTATION' => 'Orientação da Página',
  'LBL_PDF_PAGE_ORIENTATION_L' => 'Paisagem',
  'LBL_PDF_PAGE_ORIENTATION_P' => 'Retrato',
  'LBL_PDF_PAGE_ORIENTATION_TEXT' => 'Orientação para PDF',
  'LBL_PDF_SETTINGS' => 'Definições PDF',
  'LBL_PHONE' => 'Telefone:',
  'LBL_PHONE_FAX' => 'Fax:',
  'LBL_PHONE_HOME' => 'Telefone Reseidencial',
  'LBL_PHONE_MOBILE' => 'Mobile',
  'LBL_PHONE_OTHER' => 'Outro Telefone',
  'LBL_PHONE_WORK' => 'Telefone Comercial',
  'LBL_PICK_TZ_DESCRIPTION' => 'Antes de continuar, verifique o seu fuso horário, que pode ser modificado de futuro na página A Minha Conta.',
  'LBL_PICK_TZ_WELCOME' => 'Bem-vindo ao Sugar.',
  'LBL_PICTURE_FILE' => 'Fotografia',
  'LBL_PORT' => 'Porta do Mail Server',
  'LBL_PORTAL_ONLY' => 'Portal',
  'LBL_PORTAL_ONLY_DESC' => 'Utilização para o Portal API. Este tipo não pode fazer login através da interface web do Sugar.',
  'LBL_PORTAL_ONLY_USER' => 'usuário do Portal API',
  'LBL_POSTAL_CODE' => 'Código Postal:',
  'LBL_PRIMARY_ADDRESS' => 'Endereço Principal:',
  'LBL_PRIVATE_TEAM_FOR' => 'Equipe Privada para',
  'LBL_PROCESSING' => 'Processando',
  'LBL_PROMPT_TIMEZONE' => 'Solicitação de fuso horário:',
  'LBL_PROMPT_TIMEZONE_TEXT' => 'Marcar para solicitar ao usuário a confirmação do seu fuso horário no momento da autenticação no sistema.',
  'LBL_PROSPECT_LIST' => 'Lista de Potenciais Clientes',
  'LBL_PROVIDE_USERNAME_AND_EMAIL' => 'Forneça um Nome do usuário e um Endereço de E-mail.',
  'LBL_PSW_MODIFIED' => 'Última senha alterada.',
  'LBL_PUBLISH_KEY' => 'Chave de Publicação:',
  'LBL_REASS_ASSESSING' => 'Acessando',
  'LBL_REASS_BUTTON_CLEAR' => 'Limpar',
  'LBL_REASS_BUTTON_CONTINUE' => 'Continuar',
  'LBL_REASS_BUTTON_GO_BACK' => 'Retroceder',
  'LBL_REASS_BUTTON_REASSIGN' => 'Reatribuir',
  'LBL_REASS_BUTTON_RESTART' => 'Reiniciar',
  'LBL_REASS_BUTTON_RETURN' => 'Voltar',
  'LBL_REASS_BUTTON_SUBMIT' => 'Submeter',
  'LBL_REASS_CANNOT_PROCESS' => 'não pôde ser processado:',
  'LBL_REASS_CONFIRM_REASSIGN' => 'Pretende transferir todos os registros deste usuário?',
  'LBL_REASS_CONFIRM_REASSIGN_NO' => 'Não',
  'LBL_REASS_CONFIRM_REASSIGN_TITLE' => 'Re-atribuição',
  'LBL_REASS_CONFIRM_REASSIGN_YES' => 'Sim',
  'LBL_REASS_DESC_PART1' => 'Irá encontrar todos os registros (nos módulos selecionados) atribuídos a um usuário, e poderá transferi-los para outro usuário.',
  'LBL_REASS_DESC_PART2' => 'selecione os módulos que contra o qual pretende executar workflows, enviar notificações de atribuição e fazer a auditoria de alterações.',
  'LBL_REASS_FAILED' => 'Falhou',
  'LBL_REASS_FAILED_SAVE' => 'Falha ao gravar para registros',
  'LBL_REASS_FILTERS' => 'Filtros',
  'LBL_REASS_FROM' => 'de',
  'LBL_REASS_HAVE_BEEN_UPDATED' => 'foram atualizados:',
  'LBL_REASS_MOD_REASSIGN' => 'Módulos a incluir na transferência:',
  'LBL_REASS_NONE' => 'Nenhum',
  'LBL_REASS_NOTES_ONE' => 'Atribuir registros a si próprio não irá despoletar notificações de atribuição.',
  'LBL_REASS_NOTES_THREE' => 'Mesmo que não inclua Auditoria, a Data de Modificação e Modificado Por continuarão a ser atualizados em conformidade.',
  'LBL_REASS_NOTES_TITLE' => 'Notas:',
  'LBL_REASS_NOTES_TWO' => 'Incluir monitoração de Auditoria, workflow e Notificações na transferência é significativamente mais lento.',
  'LBL_REASS_NOT_PROCESSED' => 'não pode ser processado:',
  'LBL_REASS_RECORDS_FROM' => 'registros de',
  'LBL_REASS_SCRIPT_TITLE' => 'Transferência de registros',
  'LBL_REASS_STEP2_DESC' => 'As equipes abaixo listadas estão disponíveis na equipe Do usuário, mas não na equipe Para usuário. Todos os registros na equipe Do usuário não estarão visíveis na equipe Para usuário a não ser que os valores de equipe estejam mapeados.',
  'LBL_REASS_STEP2_TITLE' => 'Transferência de equipe',
  'LBL_REASS_SUCCESSFUL' => 'Com sucesso',
  'LBL_REASS_SUCCESS_ASSIGN' => 'Atribuído com sucesso',
  'LBL_REASS_TEAMS_GOOD_MSG' => 'A Para usuário tem acesso a todas as equipes Do usuário. Não é necessário mapeamento. Redirecionando para a próxima página em 5 segundos.',
  'LBL_REASS_TEAM_NO_CHANGE' => '-- Sem Modificação --',
  'LBL_REASS_TEAM_SET_TO' => 'e equipe foi configurada para',
  'LBL_REASS_TEAM_TO' => 'Definir equipes para:',
  'LBL_REASS_THE_FOLLOWING' => 'O seguinte',
  'LBL_REASS_TO' => 'para',
  'LBL_REASS_UPDATE_COMPLETE' => 'atualização completa',
  'LBL_REASS_USER_FROM' => 'Do usuário:',
  'LBL_REASS_USER_FROM_TEAM' => 'equipe Do usuário:',
  'LBL_REASS_USER_TO' => 'Para usuário:',
  'LBL_REASS_USER_TO_TEAM' => 'equipe Para usuário:',
  'LBL_REASS_VERBOSE_HELP' => 'selecione esta opção para visualizar informações detalhadas sobre as tarefas de re-atribuição que envolvem workflows.',
  'LBL_REASS_VERBOSE_OUTPUT' => 'Saída verbose (aplica-se somente a tarefas de transferência que incluem workflows)',
  'LBL_REASS_WILL_BE_UPDATED' => 'será atualizado.',
  'LBL_REASS_WORK_NOTIF_AUDIT' => 'Inclui Workflow/Notificações/Auditoria (significativamente mais lento)',
  'LBL_RECAPTCHA_FILL_FIELD' => 'Insira o texto que aparece na imagem.',
  'LBL_RECAPTCHA_IMAGE' => 'Trocar para Imagem',
  'LBL_RECAPTCHA_INSTRUCTION' => 'Insira as Duas Palavras Abaixo',
  'LBL_RECAPTCHA_INSTRUCTION_OPPOSITE' => 'Insira as Duas Palavras à Direita',
  'LBL_RECAPTCHA_INVALID_PRIVATE_KEY' => 'Chave Privada Recaptcha Inválida',
  'LBL_RECAPTCHA_INVALID_REQUEST_COOKIE' => 'O parâmetro do script de verificação de Recaptcha estava incorreto.',
  'LBL_RECAPTCHA_NEW_CAPTCHA' => 'Obter outro CAPTCHA',
  'LBL_RECAPTCHA_SOUND' => 'Trocar para Som',
  'LBL_RECAPTCHA_UNKNOWN' => 'Erro Recaptcha Desconhecido',
  'LBL_RECEIVE_NOTIFICATIONS' => 'Notificação na Atribuição:',
  'LBL_RECEIVE_NOTIFICATIONS_TEXT' => 'Recebe uma notificação via e-mail quando um registros lhe for atribuído.',
  'LBL_REGISTER' => 'Novo usuário? Por favor registe-se',
  'LBL_REGULAR_DESC' => 'O usuário pode acessar a módulos e registros com base nas funções e segurança de equipe.',
  'LBL_REGULAR_USER' => 'usuário Regular',
  'LBL_REMINDER' => 'Avisos padrão:',
  'LBL_REMINDER_EMAIL' => 'E-mail',
  'LBL_REMINDER_POPUP' => 'Popup',
  'LBL_REMINDER_TEXT' => 'Tempo padrão para relembrar o usuário de uma ligação ou compromisso',
  'LBL_REMOVED_TABS' => 'Tabuladores Removidos pelo Administrador',
  'LBL_REPORTS_TO' => 'Reporta a:',
  'LBL_REPORTS_TO_ID' => 'Reporta a ID:',
  'LBL_REPORTS_TO_NAME' => 'Reporta a:',
  'LBL_REQUEST_SUBMIT' => 'O seu pedido foi submetido.',
  'LBL_RESET_DASHBOARD' => 'Restaurar para Painel Gráfico Padrão',
  'LBL_RESET_HOMEPAGE' => 'Restaurar para Página Principal Padrão',
  'LBL_RESET_HOMEPAGE_WARNING' => 'Tem a certeza de que deseja restaurar a sua Página Principal?',
  'LBL_RESET_HOMEPAGE_WARNING_USER' => 'Tem certeza que quer restaurar a Página Inicial padrão para este usuário?',
  'LBL_RESET_PREFERENCES' => 'Retornar para as Preferências Padrão (Default)',
  'LBL_RESET_PREFERENCES_WARNING' => 'Tem a certeza de que deseja restaurar todas as suas preferências?',
  'LBL_RESET_PREFERENCES_WARNING_USER' => 'Tem certeza que quer repor todas as preferências para este usuário?',
  'LBL_RESET_TO_DEFAULT' => 'Retornar para Padrão',
  'LBL_RESOURCE_NAME' => 'Nome',
  'LBL_RESOURCE_TYPE' => 'Tipo',
  'LBL_ROLES_SUBPANEL_TITLE' => 'Funções',
  'LBL_SALUTATION' => 'Saudação',
  'LBL_SAVED_SEARCH' => 'Pesquisa Gravada & Layout',
  'LBL_SEARCH_FORM_TITLE' => 'Pesquisar usuários',
  'LBL_SEARCH_URL' => 'Pesquisar localização:',
  'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'selecionar usuários Marcados',
  'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'selecionar usuários Marcados',
  'LBL_SERVER_OPTIONS' => 'Configuração Avançada',
  'LBL_SERVER_TYPE' => 'Protocolo do Mail Server',
  'LBL_SERVER_URL' => 'Endereço do Mail Server',
  'LBL_SESSION_EXPIRED' => 'A sua sessão expirou.',
  'LBL_SETTINGS_URL' => 'URL:',
  'LBL_SETTINGS_URL_DESC' => 'Usar este URL quando estabelecer as configurações de login para o Sugar Plug-in para o Microsoft Outlook e o Sugar Plug-in para o Microsoft Word.',
  'LBL_SHOWOPTIONS' => 'Mostrar Opções',
  'LBL_SHOW_ON_EMPLOYEES' => 'Mostrar Funcionários',
  'LBL_SIGNATURE' => 'Assinatura',
  'LBL_SIGNATURES' => 'Assinaturas:',
  'LBL_SIGNATURE_DEFAULT' => 'Utilizar assinatura?',
  'LBL_SIGNATURE_HTML' => 'Assinatura HTML',
  'LBL_SIGNATURE_NAME' => 'Nome',
  'LBL_SIGNATURE_PREPEND' => 'Mostrar a assinatura acima da resposta?',
  'LBL_SMTP_SERVER_HELP' => 'Este servidor SMTP pode ser usado para mensagens de saída. Forneça um nome do usuário e senha da sua conta de e-mail para usar o servidor.',
  'LBL_SSL' => 'Utilize SSL',
  'LBL_SSL_DESC' => 'Utilize SSL para se conectar ao servidor de e-mail.',
  'LBL_STATE' => 'Estado:',
  'LBL_STATUS' => 'Status:',
  'LBL_SUBPANEL_LINKS' => 'Links dos Sub-painéis',
  'LBL_SUBPANEL_LINKS_DESCRIPTION' => 'Na visão detalhada, mostra uma coluna com um link de atalho para o sub-painel',
  'LBL_SUBPANEL_TABS' => 'Tabuladores do Sub-painel',
  'LBL_SUBPANEL_TABS_DESCRIPTION' => 'Na visão detalhada, agrupa os Sub-painéis em tabuladores e mostra uma tabulador de cada vez.',
  'LBL_SUGAR_LOGIN' => 'É usuário Sugar',
  'LBL_SUPPORTED_THEME_ONLY' => 'Apenas afecta temas que suportam esta opção.',
  'LBL_SWAP_LAST_VIEWED_DESCRIPTION' => 'Mostra a última barra visualizada ao lado se selecionada. Senão vai para o topo.',
  'LBL_SWAP_LAST_VIEWED_POSITION' => 'Última visualização ao lado',
  'LBL_SWAP_SHORTCUT_DESCRIPTION' => 'Mostra as barras de atalhos no topo caso selecionadas. Senão irá para o lado.',
  'LBL_SWAP_SHORTCUT_POSITION' => 'Atalhos no topo.',
  'LBL_SYSTEM_GENERATED_PASSWORD' => 'senha Gerada pelo Sistema',
  'LBL_TAB_TITLE_EMAIL' => 'Configuração de E-mail',
  'LBL_TAB_TITLE_USER' => 'Configuração do usuário',
  'LBL_TEAMS' => 'Equipes',
  'LBL_TEAM_MEMBERSHIP' => 'Equipe Membro',
  'LBL_TEAM_SET' => 'Configuração de Equipe',
  'LBL_TEAM_UPLINE' => 'Membro reporta a',
  'LBL_TEAM_UPLINE_EXPLICIT' => 'Membro',
  'LBL_TEST_BUTTON_KEY' => 'Botão Teste da Chave',
  'LBL_TEST_BUTTON_TITLE' => 'Teste [Alt+T]',
  'LBL_TEST_SETTINGS' => 'Testar Configurações',
  'LBL_TEST_SUCCESSFUL' => 'Conexão concluída com sucesso.',
  'LBL_THEME' => 'Tema:',
  'LBL_THEMEPREVIEW' => 'Pré-Visualização',
  'LBL_THEME_COLOR' => 'Cor',
  'LBL_THEME_FONT' => 'Fonte',
  'LBL_TIMEZONE' => 'Hora atual:',
  'LBL_TIMEZONE_DST' => 'Fuso Horário:',
  'LBL_TIMEZONE_DST_TEXT' => 'Observar Fuso Horário (DST)',
  'LBL_TIMEZONE_TEXT' => 'Configura o fuso horário atual',
  'LBL_TIME_FORMAT' => 'Formato da Hora:',
  'LBL_TIME_FORMAT_TEXT' => 'Configure o formato para apresentação da hora (time stamps)',
  'LBL_TITLE' => 'Cargo:',
  'LBL_TLS' => 'Usar TLS',
  'LBL_TLS_DESC' => 'Usar o Transport Layer Security na conexão com o mail server - apenas utilize esta opção se o seu mail server suportar este protocolo.',
  'LBL_TOGGLE_ADV' => 'Mostrar Avançado',
  'LBL_TOO_MANY_CONCURRENT' => 'Esta sessão foi encerrada porque outra sessão foi iniciada com o mesmo nome do usuário.',
  'LBL_UPDATE_FINISH' => 'atualização completa',
  'LBL_USER' => 'usuários:',
  'LBL_USER_ACCESS' => 'Acesso',
  'LBL_USER_HASH' => 'senha',
  'LBL_USER_HOLIDAY_SUBPANEL_TITLE' => 'Férias do usuário',
  'LBL_USER_INFORMATION' => 'Informação do usuário',
  'LBL_USER_LOCALE' => 'Configurações de localização',
  'LBL_USER_NAME' => 'Nome do usuário:',
  'LBL_USER_NAME_FOR_ROLE' => 'usuários/equipes/Funções',
  'LBL_USER_PREFERENCES' => 'Preferências de usuário',
  'LBL_USER_SETTINGS' => 'Parâmetros do usuário',
  'LBL_USER_TYPE' => 'Tipo de usuário',
  'LBL_USE_GROUP_TABS' => 'Módulos Agrupados',
  'LBL_USE_REAL_NAMES' => 'Mostrar Nome Completo (não o login)',
  'LBL_USE_REAL_NAMES_DESC' => 'Mostrar o nome completo do usuário ao invés do nome de autenticação',
  'LBL_WIZARD_BACK_BUTTON' => '< Anterior',
  'LBL_WIZARD_FINISH' => 'Clique em Continue para configurar as definições de Usuário.<br /><br />Para configurar definições adicionais do sistema, clique <a href="index.php?module=Administration&action=index" target="_blank">aqui</a>.',
  'LBL_WIZARD_FINISH1' => 'O que gostaria de fazer agora?',
  'LBL_WIZARD_FINISH10' => 'Utilize o Studio para criar e gerenciar campos e layouts na aplicação',
  'LBL_WIZARD_FINISH11' => 'Visite a Sugar University',
  'LBL_WIZARD_FINISH12' => 'Encontre material de treinamento e classes que irnao ajudá-lo a iniciar como administrador do sistema ou usuário final',
  'LBL_WIZARD_FINISH14' => 'Documentação',
  'LBL_WIZARD_FINISH15' => 'Guia do Produto e Notas',
  'LBL_WIZARD_FINISH16' => 'Base de Conhecimento',
  'LBL_WIZARD_FINISH17' => 'Dicas do Suporte SugarCRM para execução de tarefas e processos no SugarCRM',
  'LBL_WIZARD_FINISH18' => 'Fóruns',
  'LBL_WIZARD_FINISH19' => 'Fóruns dedicados a Comunidade SugarCRM para discussão de tópicos gerais com desenvolvedores SugarCRM',
  'LBL_WIZARD_FINISH2' => 'Comece a utilizar o SugarCRM',
  'LBL_WIZARD_FINISH2DESC' => 'Vá para página Principal',
  'LBL_WIZARD_FINISH3' => 'Importar dados',
  'LBL_WIZARD_FINISH4' => 'Importar dados de recursos externos ao da aplicação',
  'LBL_WIZARD_FINISH5' => 'Criar usuários',
  'LBL_WIZARD_FINISH6' => 'Criar novas contas de usuário para que as pessoas possam acessar o aplicativo',
  'LBL_WIZARD_FINISH7' => 'Veja e gerencie configurações da aplicação',
  'LBL_WIZARD_FINISH8' => 'Gerencie configurações avançadas, inclusive configurações padrão da aplicação',
  'LBL_WIZARD_FINISH9' => 'Configurar aplicação',
  'LBL_WIZARD_FINISH_BUTTON' => 'Concluir',
  'LBL_WIZARD_FINISH_TAB' => 'Concluir',
  'LBL_WIZARD_FINISH_TITLE' => 'Você está pronto para usar o Sugar!',
  'LBL_WIZARD_LOCALE' => 'Seu Local',
  'LBL_WIZARD_LOCALE_DESC' => 'Especifique o fuso horário e a forma como deseja que datas, moedas e nomes apareçam no Sugar.',
  'LBL_WIZARD_NEXT_BUTTON' => 'Próximo >',
  'LBL_WIZARD_PERSONALINFO' => 'Sua Informação',
  'LBL_WIZARD_PERSONALINFO_DESC' => 'Fornecer informações sobre si mesmo. Estas informações serão visíveis para outros usuários do Sugar.',
  'LBL_WIZARD_SKIP_BUTTON' => 'Saltar',
  'LBL_WIZARD_SMTP' => 'Sua conta de e-mail',
  'LBL_WIZARD_SMTP_DESC' => 'Forneça dados da sua conta de e-mail e senha para o servidor de e-mail de saída padrão.',
  'LBL_WIZARD_TITLE' => 'Assistente de Configuração do Sugar:',
  'LBL_WIZARD_WELCOME' => 'Clique em Próximo para definir algumas configurações básicas para o uso do Sugar.',
  'LBL_WIZARD_WELCOME_NOSMTP' => 'Clique em Próximo para definir algumas configurações básicas para o uso do Sugar.',
  'LBL_WIZARD_WELCOME_TAB' => 'Bem-vindo',
  'LBL_WIZARD_WELCOME_TITLE' => 'Bem-vindo ao Sugar!',
  'LBL_WORK_PHONE' => 'Telefone comercial:',
  'LBL_YAHOOMAIL_SMTPPASS' => 'senha Yahoo! Mail',
  'LBL_YAHOOMAIL_SMTPUSER' => 'ID Yahoo! Mail',
  'LBL_YOUR_PUBLISH_URL' => 'Publicar na minha localização:',
  'LBL_YOUR_QUERY_URL' => 'O seu Query URL:',
  'LNK_EDIT_TABS' => 'Editar Tabs',
  'LNK_IMPORT_USERS' => 'Importar usuários',
  'LNK_NEW_GROUP_USER' => 'Criar usuário de Grupo',
  'LNK_NEW_PORTAL_USER' => 'Criar usuário do Portal API',
  'LNK_NEW_USER' => 'Novo usuário',
  'LNK_REASSIGN_RECORDS' => 'Transferir registros',
  'LNK_USER_LIST' => 'usuário',
  'NTC_REMOVE_TEAM_MEMBER_CONFIRMATION' => 'Tem a certeza de que pretende remover a associação deste usuário?',
);

