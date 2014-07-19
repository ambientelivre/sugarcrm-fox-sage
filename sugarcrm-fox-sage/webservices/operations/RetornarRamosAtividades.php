<?php

echo "<pre>";
print_r($retorno->RetornarRamosAtividadeResult->Ramos->RamoAtividade);
echo "</pre>";
if (count($retorno->RetornarRamosAtividadeResult->Ramos->RamoAtividade) == 0) {
	$retorno->RetornarRamosAtividadeResult->Ramos->RamoAtividade = array();
} elseif (count($retorno->RetornarRamosAtividadeResult->Ramos->RamoAtividade) == 1) {
	$retorno->RetornarRamosAtividadeResult->Ramos->RamoAtividade = array('0' => $retorno->RetornarRamosAtividadeResult->RamosAtividade->RamoAtividade);
}

foreach($retorno->RetornarRamosAtividadeResult->Ramos->RamoAtividade as $key => $value){
	$ultima_alteracao = date("Y-m-d H:i:s", strtotime($value->DataUltimaAlteracao));
	$id = create_guid(); //chamar função de geração de id no sugar
	$descricao = $value->Descricao;
	$id_sistema_integracao = $value->Id;

	//Verifica se o usuário já está cadastrado no sistema
	$busca_RamoAtividade = "SELECT * FROM ra_ramos_atividade WHERE id_sistema_integracao='{$id_sistema_integracao}'";
	$result = mysql_query($busca_RamoAtividade);
	$result = mysql_fetch_assoc($result);
	if(count($result)>1){
		$sql = "
			UPDATE ra_ramos_atividade SET
				name = '{$descricao}'
			WHERE
				id_sistema_integracao='{$id_sistema_integracao}';";
	}else{
		$sql = "
			INSERT INTO ra_ramos_atividade (
				id,
				name,
				id_sistema_integracao
			) values (
				'{$id_sistema_integracao}',
				'{$descricao}',
				'{$id_sistema_integracao}'
			);";
	}

	mysql_query($sql);
	if(mysql_error()){
		die(mysql_error());
	}
}



?>