<%
	Response.charset = "ISO-88591"
	Set MM_conteudoTabelasA = Server.CreateObject("ADODB.Recordset")
	MM_conteudoTabelasA.ActiveConnection = MM_SiteJPCOM_STRING
	MM_conteudoTabelasA.Source = "select * from palestras WHERE cd_horario = 'A' order by cd_palestra"
	MM_conteudoTabelasA.CursorType = 0
	MM_conteudoTabelasA.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
	MM_conteudoTabelasA.LockType = 3
	MM_conteudoTabelasA.Open()

	Set MM_conteudoTabelasB = Server.CreateObject("ADODB.Recordset")
	MM_conteudoTabelasB.ActiveConnection = MM_SiteJPCOM_STRING
	MM_conteudoTabelasB.Source = "select * from palestras WHERE cd_horario = 'B' order by cd_palestra"
	MM_conteudoTabelasB.CursorType = 0
	MM_conteudoTabelasB.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
	MM_conteudoTabelasB.LockType = 3
	MM_conteudoTabelasB.Open()

	Set MM_conteudoTabelasC = Server.CreateObject("ADODB.Recordset")
	MM_conteudoTabelasC.ActiveConnection = MM_SiteJPCOM_STRING
	MM_conteudoTabelasC.Source = "select * from palestras WHERE cd_horario = 'C' order by cd_palestra"
	MM_conteudoTabelasC.CursorType = 0
	MM_conteudoTabelasC.CursorLocation = 3 'CursorLocation tipo 3 indica que o cursor vai rodar no cliente adUseClient
	MM_conteudoTabelasC.LockType = 3
	MM_conteudoTabelasC.Open()
%>