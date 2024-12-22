local footer_format = [[
<br>
		<center>
			<div id = "footer">
			<hr>
			<a id="mel" title="pour m'envoyer un mail">
				<font color="blue">
					prenom.nom@ens-rennes.fr
				</font>
			</a>
			<a href="%s/public_key.asc" download>
			PGP
			</a>
			<br>
			<div id = "contact" >
				<div class = "contact_box">
					<a href ="https://github.com/benjamin-voisin" target="_blank"><img src="%slogo github.png" alt="Compte GitHub : benjamin-voisin" height="50px" width="50px"></a>
				</div>
				<div class = "contact_box">
					<a href ="https://fr.wikipedia.org/wiki/Utilisateur:Tétraodon_pardalis" target="_blank"><img src="%slogo wikipedia.png" alt="Compte Wikipédia : Tétraodon pardalis" height="50px" width="50px"></a>
				</div>
				<div class = "contact_box">
					<a href ="https://framagit.org/Vneb23" target="_blank"><img src="%sframasoft.png" alt="Compte framagit : Vneb23" height="50px" width="50px"></a>
				</div>
			</div>
			</div>
	  </center> 
]]

local base_template = [[
<!DOCTYPE html>
<html lang="%s">
<head>
  <meta charset="utf-8">
  <title>Benjamin Vosin</title>
  <link rel="stylesheet" href="%s"/>
<link href="%smedia/font" rel="stylesheet">
</head>
<body>
	%s
    <div class="container">
	  %s
	  %s
	</div>
</body>
<script>
  function mail() {
    let a = "YmVuamFtaW4udm9pc2lu";
    let b = "QGVucy1yZW5uZXMuZnI";
    mel = atob(a+b);
    meldiv = document.getElementById("mel");
    meldiv.innerHTML = mel;
    meldiv.href = atob("bWFpbHRvOg==") + mel;
  }
  mail();
</script>
</html>
]]
local header_format = [[
<div class="nom">
Benjamin <span style="font-variant-caps:small-caps">Voisin</span>
</div>
	<nav>
	  <ul>
		<li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="%s">%s</a></li>
  </ul>
	</nav>
]]

local buttons_name = {
	acceuil = {
		fr = "Acceuil",
		en = "Home"
	},
	recherche = {
		fr = "Recherche",
		en = "Research"
	},
	projets = {
		fr = "Projets",
		en = "Projects"
	},
	contact = {
		fr = "Contact",
		en = "Contact"
	},
}

local function header(section, langage)
	if (section == "Acceuil") then
		return string.format(header_format, "index.html", "bouton2", buttons_name.acceuil[langage], "recherche/index.html", "bouton1", buttons_name.recherche[langage], "projets/index.html", "bouton1", buttons_name.projets[langage], "contact/index.html", "bouton1", buttons_name.contact[langage])
	elseif (section == "Recherche") then
		return string.format(header_format, "../index.html", "bouton1", buttons_name.acceuil[langage], "index.html", "bouton2", buttons_name.recherche[langage], "../projets/index.html", "bouton1", buttons_name.projets[langage], "../contact/index.html", "bouton1", buttons_name.contact[langage])
	elseif (section == "Projets") then
		return string.format(header_format, "../index.html", "bouton1", buttons_name.acceuil[langage], "../recherche/index.html", "bouton1", buttons_name.recherche[langage], "index.html", "bouton2", buttons_name.projets[langage], "../contact/index.html", "bouton1", buttons_name.contact[langage])
	elseif (section == "Contact") then
		return string.format(header_format, "../index.html", "bouton1", buttons_name.acceuil[langage], "../recherche/index.html", "bouton1", buttons_name.recherche[langage], "../projets/index.html", "bouton1", buttons_name.projets[langage], "index.html", "bouton2", buttons_name.contact[langage])
	end
end

local function depth_to_path(depth)
	local prefixe = ""
	for i = 1, depth or 0 do
		prefixe = prefixe .. "../"
	end
	return prefixe
end
local function footer(depth)
	local prefixe = depth_to_path(depth) .. "media/"
	return string.format(footer_format, prefixe, prefixe, prefixe, prefixe)
end

return {
	build = false,
	base = function(lang, contenu, section, style_path, depth)
		return (string.format(base_template, lang, style_path, depth_to_path(depth), header(section, lang), contenu, footer(depth)))
	end
}
