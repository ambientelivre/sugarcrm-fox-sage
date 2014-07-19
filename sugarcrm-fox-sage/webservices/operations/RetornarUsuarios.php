<?php

echo "<pre>";
print_r($retorno->RetornarUsuariosResult->Usuarios->Usuario);
echo "</pre>";
if (count($retorno->RetornarUsuariosResult->Usuarios->Usuario) == 0) {
	$retorno->RetornarUsuariosResult->Usuarios->Usuario = array();
} elseif (count($retorno->RetornarUsuariosResult->Usuarios->Usuario) == 1) {
	$retorno->RetornarUsuariosResult->Usuarios->Usuario = array('0' => $retorno->RetornarUsuariosResult->Usuarios->Usuario);
}

foreach($retorno->RetornarUsuariosResult->Usuarios->Usuario as $key => $value){
	$ultima_alteracao = date("Y-m-d H:i:s", strtotime($value->DataUltimaAlteracao));
	$id = create_guid(); //chamar função de geração de id no sugar
	$user_name = $value->Login;
	$senha = $value->Senha;
	$id_sistema_integracao = $value->Id;

	//Verifica se o usuário já está cadastrado no sistema
	$busca_usuario = "SELECT * FROM users WHERE id_sistema_integracao='{$id_sistema_integracao}'";
	$result = mysql_query($busca_usuario);
	$result = mysql_fetch_assoc($result);
	if(count($result)>1){
		$sql = "
			UPDATE users SET
				user_name = '{$user_name}',
				id_sistema_integracao = '{$id_sistema_integracao}',
				user_hash = '{$senha}',
				date_modified = '{$ultima_alteracao}'
			WHERE
				id_sistema_integracao='{$id_sistema_integracao}';";
	}else{
		$sql = "
			INSERT INTO users (
				id,
				user_name,
				id_sistema_integracao,
				user_hash,
				date_modified
			) values (
				'{$id}',
				'{$user_name}',
				'{$id_sistema_integracao}',
				'{$senha}',
				'{$ultima_alteracao}'
			);";
	}

	mysql_query($sql);
	if(mysql_error()){
		die(mysql_error());
	}
}



?>