﻿<#-- 
 
 crea el archivo web.config  ...
 Author : Luis Molina...
 
 -->
<#-- variables used internally by the generator... -->
<#assign nameFile="web">
<#assign extensionFile="config">
<#assign languageGenerated="c#">
<#assign description="c#">
<#assign targetDirectory="">
<#assign appliesToAllTables="true">
<#-- END variables used internally by the generator... -->
<?xml version="1.0" encoding="utf-8"?><configuration>


  <appSettings>
		<add key="mostrarErrores" value="1"/>
		<add key="ErroresDireccionCorreoDestino" value="xxx@micasoft.com"/>
		<add key="ErroresDireccionCorreoRemitente" value="xxx@micasoft.com"/>
		<add key="ErroresServidorSmtp" value="smtp.micasoft.com"/>
		<add key="ErroresUsuarioSmtp" value="xx"/>
		<add key="ErroresClaveSmtp" value="xx"/>

		<add key="AsociacionDireccionCorreoDestino" value="xxx@micasoft.com"/>
		<add key="AsociacionDireccionCorreoRemitente" value="xxx@micasoft.com"/>
		<add key="AsociacionServidorSmtp" value="smtp.micasoft.com"/>
		<add key="AsociacionUsuarioSmtp" value=""/>
		<add key="AsociacionClaveSmtp" value=""/>

		<add key="brevesRSS" value="http://news.google.es/nwshp?tab=wn&amp;ned=es&amp;topic=m&amp;output=rss"/>
		<add key="tituloPortal" value="xxx"/>
		<add key="directorioAplicacion" value="/"/>
		<add key="nombreAplicacion" value="xx"/>
		<add key="sessionAplicacion" value="xx"/>
		<add key="conStringAdoGeneral" value="Data Source=${project.host};Database=${project.database};User ID=${project.getuser()};Password=${project.getpassword()};Pooling=false;"/>

  </appSettings>
 

  <system.web>

    <!-- para evitar el problema con las sesiones y la frame activa-->
    <sessionState cookieless="false"/>
    
    <httpModules>
      <add name="themeHttpModule" type="themeHttpModule"/>   
    </httpModules>
   
    <compilation debug="true">
			<assemblies>
				<add assembly="System.Design, Version=2.0.0.0, Culture=neutral, PublicKeyToken=B03F5F7F11D50A3A"/>
				<add assembly="System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=B77A5C561934E089"/></assemblies></compilation>

   
    <!--
    <pages  maintainScrollPositionOnPostBack="true" validateRequest="false" enableViewStateMac="false" />
       
        -->      
    <customErrors mode="Off">
         </customErrors>
    <pages maintainScrollPositionOnPostBack="true" validateRequest="false"></pages>

    <browserCaps>
      <case match="W3C_Validator*">
        TagWriter = System.Web.UI.HtmlTextWriter
        W3CDomVersion = 1.0
      </case>
    </browserCaps>
  </system.web>

</configuration>