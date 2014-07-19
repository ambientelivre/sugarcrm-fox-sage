<?php
include_once "functions/functions.php";
//Conecta banco de dados
$host = "localhost";
$user = "root";
$password = "123456";
$db = "altiseg";

$link = mysql_connect($host, $user, $password);
if (!$link) {
    die('Not connected : ' . mysql_error());
}

$db_selected = mysql_select_db($db, $link);
if (!$db_selected) {
    die ('Can\'t use '.$db.' : ' . mysql_error());
}




//Define credenciais para acesso ao webservice
class Credenciais
{
	function Credenciais($Dominio, $ChaveDominio, $Usuario, $Senha) {
		$this->Dominio = $Dominio;
		$this->ChaveDominio = $ChaveDominio;
		$this->Usuario = $Usuario;
		$this->Senha = $Senha;
	}	
}
$credenciais = new Credenciais("http://localhost/", "localhost", "IntegradorSugar", "A62A14EF-ADB9-4B83-B49F-4F4B9A7D117E");

//Acessando webservice WSDL via SOAP
$client = new SoapClient("http://portalintegracao.ebs.com.br/Service/EBS.PortalFoxService.IntegracaoService.svc?wsdl");

//Definindo primeira parte da variável params
$params = array (
"credenciais" => $credenciais
);

?>