<!-- #include file="header_inicio.asp" -->
<!--#include file="../../../Connections/formulario_diadafamilia.asp" -->
<!--#include file="../../scripts/contato_diadafamilia_verifica_vagas.asp" -->

<%
Response.Charset="ISO-8859-1"
set rs_verifica_HorarioA = Server.CreateObject("ADODB.Recordset")
rs_verifica_HorarioA.ActiveConnection = MM_formulario_diadafamilia_STRING
rs_verifica_HorarioA.Source = "SELECT DISTINCTROW palestras.cd_palestra, palestras.nm_palestra, Count(candidatos.cd_palestra_horarioA) AS qtde, palestras.qt_vagas FROM palestras LEFT JOIN candidatos ON palestras.cd_palestra=candidatos.cd_palestra_horarioA WHERE palestras.cd_horario = 'A' GROUP BY palestras.cd_palestra, palestras.nm_palestra, palestras.qt_vagas ORDER BY palestras.nm_palestra;"
rs_verifica_HorarioA.CursorType = 0
rs_verifica_HorarioA.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
rs_verifica_HorarioA.LockType = 3
rs_verifica_HorarioA.Open()
%>
<%
set rs_verifica_HorarioB = Server.CreateObject("ADODB.Recordset")
rs_verifica_HorarioB.ActiveConnection = MM_formulario_diadafamilia_STRING
rs_verifica_HorarioB.Source = "SELECT DISTINCTROW palestras.cd_palestra, palestras.nm_palestra, Count(candidatos.cd_palestra_horarioB) AS qtde, palestras.qt_vagas FROM palestras LEFT JOIN candidatos ON palestras.cd_palestra=candidatos.cd_palestra_horarioB WHERE palestras.cd_horario = 'B' GROUP BY palestras.cd_palestra, palestras.nm_palestra, palestras.qt_vagas ORDER BY palestras.nm_palestra;"
rs_verifica_HorarioB.CursorType = 0
rs_verifica_HorarioB.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
rs_verifica_HorarioB.LockType = 3
rs_verifica_HorarioB.Open()
%>
<%
set rs_verifica_HorarioC = Server.CreateObject("ADODB.Recordset")
rs_verifica_HorarioC.ActiveConnection = MM_formulario_diadafamilia_STRING
rs_verifica_HorarioC.Source = "SELECT DISTINCTROW palestras.cd_palestra, palestras.nm_palestra, Count(candidatos.cd_palestra_horarioC) AS qtde, palestras.qt_vagas FROM palestras LEFT JOIN candidatos ON palestras.cd_palestra=candidatos.cd_palestra_horarioC WHERE palestras.cd_horario = 'C' GROUP BY palestras.cd_palestra, palestras.nm_palestra, palestras.qt_vagas ORDER BY palestras.nm_palestra;"
rs_verifica_HorarioC.CursorType = 0
rs_verifica_HorarioC.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
rs_verifica_HorarioC.LockType = 3
rs_verifica_HorarioC.Open()
%>
<%
set rs_verifica_HorarioD = Server.CreateObject("ADODB.Recordset")
rs_verifica_HorarioD.ActiveConnection = MM_formulario_diadafamilia_STRING
rs_verifica_HorarioD.Source = "SELECT DISTINCTROW palestras.cd_palestra, palestras.nm_palestra, Count(candidatos.cd_palestra_horarioD) AS qtde, palestras.qt_vagas FROM palestras LEFT JOIN candidatos ON palestras.cd_palestra=candidatos.cd_palestra_horarioD WHERE palestras.cd_horario = 'D' GROUP BY palestras.cd_palestra, palestras.nm_palestra, palestras.qt_vagas ORDER BY palestras.nm_palestra;"
rs_verifica_HorarioD.CursorType = 0
rs_verifica_HorarioD.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
rs_verifica_HorarioD.LockType = 3
rs_verifica_HorarioD.Open()
%>

<main class="mcjp-inscricao deep-purple lighten-1">
	<form class="container white-text mcjp-form" name="mcjp-form" id="mcjp-form" class="mcjp-form" action="../../scripts/mostra-cultural/cadastrar.asp" method="post">
		<div class="input-field col l6 m12 s12">
          <input id="nome" type="text" class="validate" name="nome">
          <label for="nome" class="white-text">Nome</label>
        </div>
		<div class="input-field col l6 m12 s12">
          <input id="sobrenome" type="text" class="validate" name="sobrenome">
          <label for="sobrenome" class="white-text">Sobrenome</label>
        </div>
		<div class="input-field col l12 m12 s12">
          <input id="rg" type="text" class="validate" name="rg">
          <label for="rg" class="white-text">RG</label>
        </div>
		<div class="input-field col l12 m12 s12">
          <input id="email" type="email" class="validate" name="email">
          <label for="email" class="white-text">Email</label>
        </div>
        <p> Participante: </p>
	    <p>
	      <input name="tipoparticipante" type="radio" id="aluno" class="rd_participante" value="aluno" checked>
	      <label for="aluno" class="white-text">Aluno</label>
	    </p>
	    <p>
	      <input name="tipoparticipante" type="radio" id="pai" class="rd_participante" value="pai">
	      <label for="pai" class="white-text">Pai</label>
	    </p>
	    <p>
	      <input name="tipoparticipante" type="radio" id="mae" class="rd_participante" value="mãe">
	      <label for="mae" class="white-text">Mãe</label>
	    </p>
	    <p>
	      <input name="tipoparticipante" type="radio" id="familiar" class="rd_participante" value="familiar">
	      <label for="familiar" class="white-text">Familiar</label>
	    </p>
	    <p>
	      <input name="tipoparticipante" type="radio" id="funcionario" class="rd_participante" value="funcionário">
	      <label for="funcionario" class="white-text">Funcionário</label>
	    </p>
	    <p> Selecione a atividade que você gostaria de participar: </p>
	    <div class="row mcjp-table">
	    	<p class="col l4 m12 s12">
	    		<strong>9h às 10h</strong><br>
				<% while not rs_verifica_HorarioA.EOF %>
					<% if not (rs_verifica_HorarioA.Fields.Item("qtde").Value >= rs_verifica_HorarioA.Fields.Item("qt_vagas").Value) then %>
						<input name="palestrasA" type="radio" id="<%=rs_verifica_HorarioA.Fields.Item("cd_palestra").Value%>" class="rd_participante" value="<%=rs_verifica_HorarioA.Fields.Item("cd_palestra").Value%>">
					<% else %>
						<i class="material-icons">highlight_off</i>
					<% end if %>
					<label for="<%=rs_verifica_HorarioA.Fields.Item("cd_palestra").Value%>" class="white-text"  style="font-size:1rem; vertical-align:6px;">
						<%=rs_verifica_HorarioA.Fields.Item("nm_palestra").Value%>
					</label><br>
			   	<% rs_verifica_HorarioA.MoveNext() %>
				<% wend %>
			</p>
	    	<p class="col l4 m12 s12">
	    		<strong>10h às 11h</strong><br>
				<% while not rs_verifica_HorarioB.EOF %>
					<% if not (rs_verifica_HorarioB.Fields.Item("qtde").Value >= rs_verifica_HorarioB.Fields.Item("qt_vagas").Value) then %>
						<input name="palestrasB" type="radio" id="<%=rs_verifica_HorarioB.Fields.Item("cd_palestra").Value%>" class="rd_participante" value="<%=rs_verifica_HorarioB.Fields.Item("cd_palestra").Value%>">
					<% else %>
						<i class="material-icons">highlight_off</i>
					<% end if %>
					<label for="<%=rs_verifica_HorarioB.Fields.Item("cd_palestra").Value%>" class="white-text" style="font-size:1rem; vertical-align:6px;">
						<%=rs_verifica_HorarioB.Fields.Item("nm_palestra").Value%>
					</label><br>
			    <% rs_verifica_HorarioB.MoveNext() %>
		        <% wend %>
	    	</p>
	    	<p class="col l4 m12 s12">
	    		<strong>11h às 12h</strong><br>
			    <% while not rs_verifica_HorarioC.EOF %>
			    	<% if not (rs_verifica_HorarioC.Fields.Item("qtde").Value >= rs_verifica_HorarioC.Fields.Item("qt_vagas").Value) then %>
						<input name="palestrasC" type="radio" id="<%=rs_verifica_HorarioC.Fields.Item("cd_palestra").Value%>" class="rd_participante" value="<%=rs_verifica_HorarioC.Fields.Item("cd_palestra").Value%>">
					<% else %>	
						<i class="material-icons">highlight_off</i>
                   	<% end if %>
					<label for="<%=rs_verifica_HorarioC.Fields.Item("cd_palestra").Value%>" class="white-text" style="font-size:1rem; vertical-align:6px;">
						<%=rs_verifica_HorarioC.Fields.Item("nm_palestra").Value%>
					</label><br>
			    <% rs_verifica_HorarioC.MoveNext() %>
		        <% wend %>
	    	</p>
	    </div>
        <div class="row mcjp-btn-enviar">
			<button class="btn waves-effect waves-light right orange" type="submit" name="action">
				Enviar
			</button>
		</div>
	</form>
</main>
<!-- #include file="footer.asp" -->