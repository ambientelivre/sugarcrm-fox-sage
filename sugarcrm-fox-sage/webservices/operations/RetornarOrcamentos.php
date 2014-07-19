<?php

echo "<pre>";
print_r($retorno->RetornarOrcamentosResult->Orcamentos->Orcamento);
echo "</pre>";
if (count($retorno->RetornarOrcamentosResult->Orcamentos->Orcamento) == 0) {
	$retorno->RetornarOrcamentosResult->Orcamentos->Orcamento = array();
} elseif (count($retorno->RetornarOrcamentosResult->Orcamentos->Orcamento) == 1) {
	$retorno->RetornarOrcamentosResult->Orcamentos->Orcamento = array('0' => $retorno->RetornarOrcamentosResult->Orcamentos->Orcamento);
}

foreach($retorno->RetornarOrcamentosResult->Orcamentos->Orcamento as $key => $value){
	//Infos Pessoais
	$id = $value->NumeroOportunidade;
	$id_cliente = $value->NumeroConta; //Não há onde gravar
	$ultima_alteracao = date("Y-m-d H:i:s", strtotime($value->DataUltimaAlteracao));
	$id_sistema_integracao = $value->Identificacao;
	$situacao = ($value->Situacao == "Ganho" ? "Closed Won" : "Closed Lost");
	$valor = $value->Valor;

	//Verifica se o orçamento já está cadastrado no crm
	// $busca_orcamento = "SELECT * FROM opportunities WHERE id_sistema_integracao='{$id_sistema_integracao}'";
	// $result = mysql_query($busca_orcamento);
	// $result = mysql_fetch_assoc($result);

	// if(empty($id)){
	// 	$id = create_guid(); //chamar função de geração de id no sugar
	// 	$id2 = create_guid(); //chamar função de geração de id no sugar
	// 	$sql = "
	// 		INSERT INTO opportunities (
	// 			id,
	// 			name,
	// 			date_modified,
	// 			id_sistema_integracao,
	// 			sales_stage,
	// 			amount
	// 		) values (
	// 			'{$id}',
	// 			'Gerado autom&aacute;ticamente a partir do sistema Fox',
	// 			'{$ultima_alteracao}',
	// 			'{$id_sistema_integracao}',
	// 			'{$situacao}',
	// 			'{$valor}'
	// 		);";
	// 	// mysql_query($sql);

	// 	$sql = "
	// 		INSERT INTO accounts_opportunities (
	// 			id,
	// 			opportunity_id,
	// 			account_id,
	// 			date_modified
	// 		) values (
	// 			'{$id2}',
	// 			'{$id}',
	// 			'{$id_cliente}',
	// 			'{$ultima_alteracao}'
	// 		);";
	// 	// mysql_query($sql);	
	// }else{
		$sql = "
			UPDATE opportunities SET
				date_modified = '{$ultima_alteracao}',
				id_sistema_integracao = '{$id_sistema_integracao}',
				sales_stage = '{$situacao}',
				amount = '{$valor}'
			WHERE
				id='{$id}';";
		mysql_query($sql);

	// }

	if(mysql_error()){
		die(mysql_error());
	}
}

?>