<?php

echo "<pre>";
print_r($retorno->RetornarClientesResult);
echo "</pre>";
// die();
if (count($retorno->RetornarClientesResult->Clientes->Cliente) == 0) {
	$retorno->RetornarClientesResult->Clientes->Cliente = array();
} elseif (count($retorno->RetornarClientesResult->Clientes->Cliente) == 1) {
	$retorno->RetornarClientesResult->Clientes->Cliente = array('0' => $retorno->RetornarClientesResult->Clientes->Cliente);
}

foreach($retorno->RetornarClientesResult->Clientes->Cliente as $key => $value){

	$id = create_guid(); //chamar função de geração de id no sugnar
	$id2 = create_guid(); //chamar função de geração de id no sugnar
	$cpf_cnpj = $value->CNPJCPF;
	$nome = $value->Nome;
	$ultima_alteracao = $value->DataUltimaAlteracao;
	$estado = strtoupper($value->Estado);
	$pais = $value->Pais;
	$ramo_atividade_id_integracao = $value->RamoAtividade; // Pegar de futura tabela de ramos atividades
	$rua = $value->Rua;

	//Verifica se o usuário já está cadastrado no sistema
	
	$busca_cliente = "SELECT * FROM accounts WHERE name='{$nome}'";
	// Transformar name em campo único
	$result = mysql_query($busca_cliente);
	$result = mysql_fetch_assoc($result);
	if(count($result)>1){
		$sql = "
			UPDATE accounts SET
				name = '{$nome}',
				date_modified = '{$ultima_alteracao}', 
				billing_address_state = '{$estado}',
				shipping_address_state = '{$estado}',
				billing_address_country = '{$pais}',
				shipping_address_country = '{$pais}',
				billing_address_street = '{$rua}' ,
				shipping_address_street = '{$rua}'
			WHERE
				name = '{$nome}'
			;";

		mysql_query($sql);

		if(mysql_error()){
			die(mysql_error());
		}

		//Verifica se o campo cpf não está vazio
		if(!empty($cpf_cnpj)){
			//Verifica se o cpf ta preenchido na tabela custom de accounts
			$busca_cpf_cnpj = "SELECT * FROM accounts_cstm WHERE id_c='{$result['id']}'";
			$result2 = mysql_query($busca_cpf_cnpj);
			$result2 = mysql_fetch_assoc($result2);
			if(count($result2)>1){
				$sql = "
					UPDATE accounts_cstm SET 
						cpf_cnpj_c = '{$cpf_cnpj}'
					WHERE
						id_c = '{$result['id']}'
					;";

				mysql_query($sql);

				if(mysql_error()){
					die(mysql_error());
				}
			}else{
				$sql = "INSERT INTO accounts_cstm (id_c, cpf_cnpj_c) VALUES ('{$result['id']}', '{$cpf_cnpj}');";

				mysql_query($sql);

				if(mysql_error()){
					die(mysql_error());
				}
			}
		}

		if(!empty($ramo_atividade_id_integracao)){
			$sql = "DELETE FROM accounts_ra_ramos_atividade_1_c WHERE accounts_ra_ramos_atividade_1accounts_ida='{$result['id']}'";
			mysql_query($sql);
			$sql = "INSERT INTO accounts_ra_ramos_atividade_1_c (id, accounts_ra_ramos_atividade_1accounts_ida, accounts_ra_ramos_atividade_1ra_ramos_atividade_idb) VALUES ('{$id2}', '{$result['id']}', '{$ramo_atividade_id_integracao}');";

			mysql_query($sql);

			if(mysql_error()){
				die(mysql_error());
			}
		}
	}else{
		$sql = "
			INSERT INTO accounts (
				id,
				name,
				date_modified,
				billing_address_state,
				shipping_address_state,
				billing_address_country,
				shipping_address_country,
				billing_address_street,
				shipping_address_street
			) values (
				'{$id}',
				'{$nome}',
				'{$ultima_alteracao}',
				'{$estado}',
				'{$estado}',
				'{$pais}',
				'{$pais}',
				'{$rua}',
				'{$rua}'
			);";

		mysql_query($sql);

		if(mysql_error()){
			die(mysql_error());
		}

		if(!empty($cpf_cnpj)){
			$sql = "INSERT INTO accounts_cstm (id_c, cpf_cnpj_c) VALUES ('{$id}', '{$cpf_cnpj}');";

			mysql_query($sql);

			if(mysql_error()){
				die(mysql_error());
			}
		}

		if(!empty($ramo_atividade_id_integracao)){
			$sql = "INSERT INTO accounts_ra_ramos_atividade_1_c (id, accounts_ra_ramos_atividade_1accounts_ida, accounts_ra_ramos_atividade_1ra_ramos_atividade_idb) VALUES ('{$id2}', '{$id}', '{$ramo_atividade_id_integracao}');";

			mysql_query($sql);

			if(mysql_error()){
				die(mysql_error());
			}
		}
	}

	

}

?>