<?php
// created: 2013-06-26 10:05:36
$dictionary["Account"]["fields"]["accounts_ra_ramos_atividade_1"] = array (
  'name' => 'accounts_ra_ramos_atividade_1',
  'type' => 'link',
  'relationship' => 'accounts_ra_ramos_atividade_1',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_RA_RAMOS_ATIVIDADE_1_FROM_RA_RAMOS_ATIVIDADE_TITLE',
  'id_name' => 'accounts_ra_ramos_atividade_1ra_ramos_atividade_idb',
);
$dictionary["Account"]["fields"]["accounts_ra_ramos_atividade_1_name"] = array (
  'name' => 'accounts_ra_ramos_atividade_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_RA_RAMOS_ATIVIDADE_1_FROM_RA_RAMOS_ATIVIDADE_TITLE',
  'save' => true,
  'id_name' => 'accounts_ra_ramos_atividade_1ra_ramos_atividade_idb',
  'link' => 'accounts_ra_ramos_atividade_1',
  'table' => 'ra_ramos_atividade',
  'module' => 'RA_Ramos_Atividade',
  'rname' => 'name',
);
$dictionary["Account"]["fields"]["accounts_ra_ramos_atividade_1ra_ramos_atividade_idb"] = array (
  'name' => 'accounts_ra_ramos_atividade_1ra_ramos_atividade_idb',
  'type' => 'link',
  'relationship' => 'accounts_ra_ramos_atividade_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ACCOUNTS_RA_RAMOS_ATIVIDADE_1_FROM_RA_RAMOS_ATIVIDADE_TITLE',
);
