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
  'ERR_CRON_SYNTAX' => 'Sintaxe Cron inválida',
  'ERR_DELETE_RECORD' => 'Um número de registro deve ser especificado para eliminar o agendamento.',
  'LBL_ADV_OPTIONS' => 'Opções Avançadas',
  'LBL_ALL' => 'Todos os Dias',
  'LBL_ALWAYS' => 'Sempre',
  'LBL_AND' => 'e',
  'LBL_AT' => 'às',
  'LBL_AT_THE' => 'às',
  'LBL_BASIC_OPTIONS' => 'Configuração Básica',
  'LBL_CATCH_UP' => 'Executar Se Falhar',
  'LBL_CATCH_UP_WARNING' => 'Desmarque se esta Tarefa levar mais do que um momento para se executada.',
  'LBL_CLEANJOBQUEUE' => 'Limpar fila de trabalho',
  'LBL_CRONTAB_EXAMPLES' => 'A lista acima usa notações crontab padrão.',
  'LBL_CRONTAB_SERVER_TIME_POST' => 'Please specify the scheduler execution time accordingly.',
  'LBL_CRONTAB_SERVER_TIME_PRE' => 'The cron specifications run based on the server timezone (',
  'LBL_CRON_INSTRUCTIONS_LINUX' => 'Para configurar o Crontab',
  'LBL_CRON_INSTRUCTIONS_WINDOWS' => 'Para configurar o agendador do Windows',
  'LBL_CRON_LINUX_DESC' => 'Adicione esta linha ao crontab:',
  'LBL_CRON_WINDOWS_DESC' => 'Crie um arquivo batch com os seguintes comandos:',
  'LBL_DATE_TIME_END' => 'Data e Hora de Fim',
  'LBL_DATE_TIME_START' => 'Data e Hora de Início',
  'LBL_DAY_OF_MONTH' => 'data',
  'LBL_DAY_OF_WEEK' => 'dia',
  'LBL_EVERY' => 'Todo(a)',
  'LBL_EVERY_DAY' => 'Todos os dias',
  'LBL_EXECUTE_TIME' => 'Tempo de Execução',
  'LBL_FRI' => 'Sexta',
  'LBL_FROM' => 'De',
  'LBL_HOUR' => 'horas',
  'LBL_HOURS' => 'hrs',
  'LBL_HOUR_SING' => 'hora',
  'LBL_IN' => 'em',
  'LBL_INTERVAL' => 'Intervalo',
  'LBL_JOB' => 'Tarefa',
  'LBL_JOBS_SUBPANEL_TITLE' => 'Tarefas Ativas',
  'LBL_JOB_URL' => 'Job URL',
  'LBL_LAST_RUN' => 'Última Execução com Sucesso',
  'LBL_LIST_EXECUTE_TIME' => 'Horário de Execução:',
  'LBL_LIST_JOB_INTERVAL' => 'Intervalo:',
  'LBL_LIST_LIST_ORDER' => 'Agendas:',
  'LBL_LIST_NAME' => 'Agenda:',
  'LBL_LIST_RANGE' => 'Intervalo:',
  'LBL_LIST_REMOVE' => 'Remover:',
  'LBL_LIST_STATUS' => 'Status:',
  'LBL_LIST_TITLE' => 'Lista de Tarefas agendadas:',
  'LBL_MINS' => 'min',
  'LBL_MINUTES' => 'minutos',
  'LBL_MIN_MARK' => 'marca de minuto',
  'LBL_MODULE_NAME' => 'Agenda Sugar',
  'LBL_MODULE_TITLE' => 'Agenda',
  'LBL_MON' => 'Segunda',
  'LBL_MONTH' => 'mês',
  'LBL_MONTHS' => 'meses',
  'LBL_NAME' => 'Nome da Tarefa',
  'LBL_NEVER' => 'Nunca',
  'LBL_NEW_FORM_TITLE' => 'Nova Tarefa agendada',
  'LBL_NO_PHP_CLI' => 'Se o seu host não tiver o binário PHP disponível, poderá usar o wget ou o curl para lançar as suas Tarefas.<br>for wget: <b>*    *    *    *    *    wget --quiet --non-verbose /cron.php > /dev/null 2>&1</b><br>for curl: <b>*    *    *    *    *    curl --silent /cron.php > /dev/null 2>&1',
  'LBL_OFTEN' => 'Tão frequente quanto possível.',
  'LBL_ON_THE' => 'No(a)',
  'LBL_OOTB_BOUNCE' => 'Executar toda a noite o Processamento de E-mails Retornados de Campanhas',
  'LBL_OOTB_CAMPAIGN' => 'Executar toda a noite o Envio Massivo de E-mail de Campanha',
  'LBL_OOTB_CLEANUP_QUEUE' => 'Limpar trabalhos na fila',
  'LBL_OOTB_IE' => 'Verificar Caixa de Entrada de E-mails',
  'LBL_OOTB_PRUNE' => 'Remover Apagados da Base de Dados no primeiro dia do Mês',
  'LBL_OOTB_REPORTS' => 'Executar tarefas criadas de execução de relatórios',
  'LBL_OOTB_SEND_EMAIL_REMINDERS' => 'Executar notificações de lembrete de e-mail',
  'LBL_OOTB_TRACKER' => 'Remover apagados das tabelas de trackers',
  'LBL_OOTB_WORKFLOW' => 'Processar Tarefas de Workflow',
  'LBL_PERENNIAL' => 'perpétua',
  'LBL_PERFORMFULLFTSINDEX' => 'Full-text Search Index System',
  'LBL_POLLMONITOREDINBOXES' => 'Verificar Contas de Entrada de E-mail',
  'LBL_POLLMONITOREDINBOXESFORBOUNCEDCAMPAIGNEMAILS' => 'Executar toda a noite o Processamento de E-mails Retornados de Campanhas',
  'LBL_PROCESSQUEUE' => 'Executar tarefas criadas de execução de relatórios',
  'LBL_PROCESSWORKFLOW' => 'Processar Tarefas de Workflow',
  'LBL_PRUNEDATABASE' => 'Remover Apagados da Base de Dados no primeiro dia do Mês',
  'LBL_RANGE' => 'a',
  'LBL_REFRESHJOBS' => 'Atualizar Tarefas',
  'LBL_RUNMASSEMAILCAMPAIGN' => 'Executar toda a noite campanhas de e-mail em massa',
  'LBL_SAT' => 'Sábado',
  'LBL_SCHEDULER' => 'Agendar:',
  'LBL_SEARCH_FORM_TITLE' => 'Pesquisar Agenda',
  'LBL_SENDEMAILREMINDERS' => 'Run Email Reminders Sending.',
  'LBL_STATUS' => 'Status',
  'LBL_SUN' => 'Domingo',
  'LBL_THU' => 'Quinta',
  'LBL_TIME_FROM' => 'Ativo Desde',
  'LBL_TIME_TO' => 'Ativo Até',
  'LBL_TOGGLE_ADV' => 'Opções Avançadas',
  'LBL_TOGGLE_BASIC' => 'Opções Básicas',
  'LBL_TRIMTRACKER' => 'Remover Apagados das Tabelas de Trackers',
  'LBL_TUE' => 'Terça',
  'LBL_UPDATETRACKERSESSIONS' => 'Atualizar Tabelas de Sessões de Trackers',
  'LBL_UPDATE_TRACKER_SESSIONS' => 'Atualizar tabela tracker_sessions',
  'LBL_WARN_CURL' => 'Aviso:',
  'LBL_WARN_CURL_TITLE' => 'Aviso cURL:',
  'LBL_WARN_NO_CURL' => 'Este sistema não possui as bibliotecas cURL habilitadas/compiladas no módulo PHP (--with-curl=/path/to/curl_library).  Por favor contate o seu administrador de sistemas para resolver esta questão.  Sem a funcionalidade cURL, o agendador não pode executar as suas tarefas.',
  'LBL_WED' => 'Quarta',
  'LNK_LIST_SCHEDULED' => 'Tarefas agendadas',
  'LNK_LIST_SCHEDULER' => 'agendador',
  'LNK_NEW_SCHEDULER' => 'Nova Tarefa agendada',
  'NTC_DELETE_CONFIRMATION' => 'Tem a certeza de que pretende eliminar este registro?',
  'NTC_LIST_ORDER' => 'Configure a ordem pela qual este agendamento aparecerá nas listas de valores possíveis do campo agendador',
  'NTC_STATUS' => 'Configure o status como Inativo para excluir este agendamento das listas de valores possíveis do agendador',
  'SOCK_GREETING' => 'Esta é a interface para o Serviço de agenda do SugarCRM.',
);

