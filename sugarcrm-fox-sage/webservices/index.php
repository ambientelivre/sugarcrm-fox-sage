<?php

include_once "config.php";

echo '<div style="width:100%; margin: 0px auto; text-align:center;">';
	echo '<div style="width:80%; margin: 0px auto; text-align:left;">';
		echo '<a href="?operacao=RetornarClientes" >Retornar Clientes</a>  |  ';
		echo '<a href="?operacao=RetornarOrcamentos" >Retornar Or&ccedil;amentos</a>  |  ';
		echo '<a href="?operacao=RetornarRamosAtividades" >Retornar Ramos Atividades</a>  |  ';
		echo '<a href="?operacao=RetornarUsuarios" >Retornar Usu&aacute;rios</a>  |  <br />';
		if(isset($_GET['operacao'])){
			echo '<p style="font-size:20px;margin-top:50px;">'.$_GET['operacao'].'</p>';
		}
		echo '<div style="border: grey 1px solid; background:#C0C0C0">';




if(isset($_GET['operacao'])){
	$operacao = $_GET['operacao'];
	//Busca ultima data execução do script
	$sqlExecucao = "SELECT * FROM conf_cron WHERE nome='{$operacao}'";
	$sqlExecucao = mysql_query($sqlExecucao);
	$sqlExecucao = mysql_fetch_assoc($sqlExecucao);
	$data = str_replace(" ", "T", $sqlExecucao["data_ultima_execucao"]); // aaaa-mm-ddThh:ii:ss
	$params['DataAlteracaoInicial'] = $data;

	$retorno = $client->__soapCall($operacao, array($params));

	include_once "operations/".$operacao.".php";

	//Altera ultima data execução do script
	$sqlAlteracao = "UPDATE conf_cron SET data_ultima_execucao=now() WHERE nome='{$operacao}'";
	$sqlAlteracao = mysql_query($sqlAlteracao);
}else{
	echo "Selecionar Opera&ccedil;&atilde;o!";
}





		echo '</div>';
	echo '</div>';
echo '</div>';
?>