<!-- #include file="header_inicio.asp" -->
<main class="mcjp-contato blue darken-3 mcjp-form">
	<form action="/scripts/contato_Mostra.asp" name="form-contato" id="form-contato" class="form-contato container white-text" method="post">
		<div class="input-field col l6 m12 s12">
			<input id="nome" type="text" class="nome" name="nome">
			<label for="nome" class="white-text">Nome</label>
		</div>
		<div class="input-field col l6 m12 s12">
			<input id="sobrenome" type="text" class="sobrenome" name="sobrenome">
			<label for="sobrenome" class="white-text">Sobrenome</label>
		</div>
		<div class="input-field col l12 m12 s12">
			<input id="telefone" type="number" class="telefone" name="telefone">
			<label for="telefone" class="white-text">Telefone</label>
		</div>
		<div class="input-field col l12 m12 s12">
			<input id="email" type="email" class="email" name="email">
			<label for="email" class="white-text">Email</label>
		</div>
		<div class="input-field col l12 m12 s12">
          <textarea id="mensagem" class="materialize-textarea mensagem"></textarea>
          <label for="mensagem" class="white-text">Mensagem</label>
        </div>
        <div class="row mcjp-btn-enviar">
			<button class="btn waves-effect waves-light right orange" type="submit" name="action">
				Enviar
			</button>
		</div>
	</form>
</main>
<!-- #include file="footer.asp" -->