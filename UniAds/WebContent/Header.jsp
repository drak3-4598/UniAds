<%@page import="it.unisa.model.Corriere"%>
<%@page import="it.unisa.model.Amministratore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="it.unisa.model.Utente"%>
<header>
	<div id="logo"><a href="HomePage.jsp" title="UniAds"><img src="img/logo.png"></a></div>
		<nav>  
			<%
				Amministratore amministratore = new Amministratore();
				Utente utente = new Utente();
				Corriere corriere = new Corriere();
				Boolean isLog = (Boolean) request.getSession().getAttribute("login");	
				Object object = request.getSession().getAttribute("utente");
				if(isLog!=null && isLog.equals(true) && object!=null && object instanceof Amministratore ){
					amministratore = (Amministratore) request.getSession().getAttribute("utente");
			%>	
			<ul>
				<li class="selectUtente">
				    <span class="prova">
				    <select onchange="selectOperazioni(value)">
				    	<option><%=amministratore.getNome()%></option>
				    	<option value="1" >Gestione Sito</option>
				    	<option value="2">Hello 2</option>
				        <option value="3">Hello 3</option> 
				        <option value="4">Hello 4</option>
				    </select>
				    <span class="select_arrow"></span>
				    </span>
				</li>
    			<li><a href="InserimentoAnnuncio.jsp"><nobr>Crea Annuncio</nobr></a></li>
				<li><a href="Logout">Esci</a></li>
				<!-- aggiungi il select dell utente -->
			</ul>
			<%}%>
			
			<%
				if(isLog!=null && isLog.equals(true) && object!=null && object instanceof Utente ){
					utente = (Utente) request.getSession().getAttribute("utente");			
			%>
			<ul>
				<li class="selectUtente">
				    <span class="prova">
				    <select onchange="selectOperazioni(value)">
				        <option><%=utente.getNome()%></option>
				        <option value="5">Gestione sito</option>
				        <option value="6">Hello 2</option>
				        <option value="7">Hello 3</option> 
				        <option value="8">Hello 4</option>
				    </select>
				    <span class="select_arrow"></span>
				    </span>
				</li>
    			<li><a href="InserimentoAnnuncio.jsp"><nobr>Crea Annuncio</nobr></a></li>
				<li><a href="Logout">Esci</a></li>
				<!-- aggiungi il select dell utente -->
			</ul>
			<%
				}
			%>
			<%
				if(isLog!=null && isLog.equals(true) && object!=null && object instanceof Corriere ){
					corriere = (Corriere) request.getSession().getAttribute("utente");			
			%>
			<ul>
				<li class="selectUtente">
				    <span class="prova">
				    <select onchange="selectOperazioni(value)">
				        <option><%=corriere.getNome()%></option>
				        <option value="9">Gestione consegna</option>
				        <option value="10">Hello 2</option>
				        <option value="11">Hello 3</option> 
				        <option value="12">Hello 4</option>
				    </select>
				    <span class="select_arrow"></span>
				    </span>
				</li>
    			<li><a href="InserimentoAnnuncio.jsp"><nobr>Crea Annuncio</nobr></a></li>
				<li><a href="Logout">Esci</a></li>
				<!-- aggiungi il select dell utente -->
			</ul>
			<%
				}
			%>
		
			<%	
				if(isLog==null || isLog.equals(false) || object==null){
			%>
			
			<ul>
				<li><a href="Login.jsp">Accedi</a></li>
				<li><a href="Registrazione.jsp">Registrati</a></li>
				<li><a href="Login.jsp"><nobr>Crea Annuncio</nobr></a></li>
			</ul>
			<%}%>
				
		</nav>

</header>

