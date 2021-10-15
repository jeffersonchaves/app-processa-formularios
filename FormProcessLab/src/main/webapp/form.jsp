<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet">
 -->
<style type="text/css">

	body {
		font-family: 'Roboto Condensed', sans-serif;
	}
	
	h2, a {
		margin-left: 5px;
	}

	div.item {
		margin-left: 45px;
		border: solid 1px;
		margin: 5px 15px 5px 5px;
	}
	
	form {
		margin-top: 15px;
		margin-left: 5px;
	}
	
	p{
		clear: both;
	    display: block;
	}
	
	input[type="text"], input[type="number"], input[type="date"] {
		margin-bottom: 15px;
	    clear: both;
	    display: block;
	    width: 150px;
	}
	
	input[type="radio"]  {
	}

</style>


</head>
<body>

	<form method="get" action="processa-form" enctype="multipart/form-data">
		
		<!-- NOME -->
		<label for="nome-id">nome: </label>
		<input id="nome-id" type="text" name="campo_nome" value="anônimo" />
		
		<!-- IDADE -->
		<label for="idade-id">idade: </label>
		<input id="idade-id" type="number" name="campo_idade" />
		
		<!-- NASCIMENTO -->
		<label for="idade-id">data nascimento: </label>
		<input type="date" name="campo_data_nascimento" />
		
		<!-- Checkbox -->
		Você aceita os termos?<br />
		<input type="checkbox" value="marcado" name="campo_aceita"><label for="">li e aceito os termos</label>
		
		<!-- Radio -->
		<label for="" style="margin-top: 15px; display: block;">Selecione seu complemento:</label>
		<input type="radio" checked="checked" name="complemento" value="queijo_extra"><label>Queijo extra</label><br />
		<input type="radio" name="complemento" value="pimenta"><label>Pimenta</label><br />
		<input type="radio" name="complemento" value="peperoni"><label>Peperoni</label><br />
		
		<!-- Multiplos campos marcados --> <br />
		<label for="nome-id">Quais filmes de super herói você assistiu nos últimos 5 anos: </label><br />
		<input type="checkbox" name="filmes" value="homem-aranha"> Homem Aranha <br />
		<input type="checkbox" name="filmes" value="batman"> Batman <br />
		<input type="checkbox" name="filmes" value="thor" > Thor <br />
		<input type="checkbox" name="filmes" value="superman" > Superman <br />
		
		<br /><br />
		
		<input type="submit" value="enviar dados" />
		
	
	</form>

</body>
</html>