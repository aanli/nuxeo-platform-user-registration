<html>
<body>
Bonjour ${registrationDoc.userinfo.firstName} ${registrationDoc.userinfo.lastName}, <br />
<br />
Vous êtes invité à accéder au dossier <b>${registrationDoc.docinfo.documentTitle}</b> de la plateforme Nuxeo.
<br />
<a href="${docUrl}">${docTitle}</a>
<br/>
 
<p>Cliquez ci-après pour accepter le partage.</p><br/>
<div style="text-align:center">
	<div style="display: inline-block;padding:10px;margin:10px;background-image: -moz-linear-gradient(center top ,#EFF4F4, #EFF4F4);">
		<a target="_blank" style="text-decoration:none;font-weight:bold" href="${info['validationBaseURL']}${registrationDoc.id}">Valider le partage</a>
	</div>
</div>
<br/><p>Si vous ne pouvez pas cliquer sur le lien précédent, copiez l'URL suivante sur la barre d'adresse de votre navigateur :<br/>${info['validationBaseURL']}${registrationDoc.id}</p><br/>
<br /><br />
<p>Here are your login information:</p>
<p>Login:  ${registrationDoc.userinfo.login}</p>
<p>Password:
<#if userAlreadyExists>
Your usual account password.
<#else>
${registrationDoc.userinfo.password}
</#if>
</p>
<br />
<#if registrationDoc.registration.comment??>
<p>Comment:</p>
<p>${registrationDoc.registration.comment}</p>

</#if>
<p>Please, update your password after your first login.</p>
<br />
</body>
</html>
