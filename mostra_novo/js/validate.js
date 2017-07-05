$(function(){
	$(".mcjp-form").submit(function(){
		var nome = $(".nome").val();
		var sobrenome = $(".sobrenome").val();
		var email = $(".email").val();
		var telefone = $(".telefone").val();
		var rg = $(".rg").val();
		var participante = $(".participante").val();
		var hrA = $('input[name="palestrasA"]:checked').val();
		var hrB = $('input[name="palestrasB"]:checked').val();
		var hrC = $('input[name="palestrasC"]:checked').val();
		var hrD = $('input[name="palestrasD"]:checked').val();

		if(nome == ""){
			alert("Digite seu nome.");
			return false;
		}else if(sobrenome == ""){
			alert("Digite seu sobrenome.");
			return false;
		}else if(email == ""){
			alert("Digite seu email.");
			return false;
		}else if(telefone == ""){
			alert("Digite seu telefone.");
			return false;
		}else if(rg == ""){
			alert("Digite seu rg.");
			return false; 
		}else if(hrA == undefined && hrB == undefined && hrC == undefined && hrD == undefined){
			alert("Você não selecionou nenhum horário.");
			return false;
		}else{
			return true;
		};
	});

	$(".form-contato").submit(function(){
		var nome = $(".nome").val();
		var sobrenome = $(".sobrenome").val();
		var telefone = $(".telefone").val();
		var email = $(".email").val();
		var mensagem = $(".mensagem").val();

		if(nome == ""){ 
			alert("Digite seu nome.");
			return false;
		}else if(sobrenome == ""){
			alert("Digite seu sobrenome.");
			return false;
		}else if(telefone == ""){
			alert("Digite seu telefone.");
			return false;
		}else if(email == ""){
			alert("Digite seu email.");
			return false;
		}else if(mensagem == "" || mensagem.length < 2){
			alert("Digite sua mensagem.");
			return false;			
		}else{			
			return true;
		}

	});
});