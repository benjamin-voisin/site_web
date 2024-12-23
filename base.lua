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
					<a href ="https://github.com/benjamin-voisin" target="_blank"><img class = "contact_image" src="%sgithub.svg" alt="Compte GitHub : benjamin-voisin" width = "20px" ></a>
				</div>
				<div class = "contact_box">
					<a rel="me" href="https://piaille.fr/@benjaminV" target="_blank"><img class = "contact_image" src="%smastodon.svg" alt="Compte mastodon : @piaille.fr@benjaminV" height="20px" width="20px"></a>
				</div>
				<div class = "contact_box">
					<a href ="https://codeberg.org/benjaminV" target="_blank"><img class = "contact_image" src="%scodeberg.svg" alt="Compte Codeberg : benjaminV" height="20px" width="20px"></a>
				</div>
				<div class = "contact_box">
					<a href ="%scroco.html"><img class = "contact_image" src="%scrocodile.svg" height="20px" width="20px"></a>
				</div>
			</div>
			</div>
	  </center> 
]]

local base_template = [[
<!DOCTYPE html>
<html lang="%s">
<meta name="fediverse:creator" content="@benjaminV@piaille.fr">
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
%s
</div>
	<nav>
	  <ul>
		<li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="%s">%s</a></li><li><a style="text-decoration:none" href="%s" class="bouton1">%s</a></li>
  </ul>
	</nav>
]]

local buttons_name = {
	acceuil = {
		fr = "Acceuil",
		en = "Home",
		croco = "CrocHome",
	},
	recherche = {
		fr = "Recherche",
		en = "Research",
		croco = "CrocoResearch",
	},
	projets = {
		fr = "Projets",
		en = "Projects",
		croco = "CrocoProjets",
	},
	contact = {
		fr = "Contact",
		en = "Contact",
		croco = "CroContacts",
	},
}

local function op_lang(langage)
	if (langage == "fr") then
		return "en"
	else
		return "fr"
	end
end

local function depth_to_path(depth)
	local prefixe = ""
	for i = 1, depth or 0 do
		prefixe = prefixe .. "../"
	end
	return prefixe
end

local function header(section, langage, depth, lien)
	local name = [[Benjamin <span style="font-variant-caps:small-caps">Voisin</span>]]
	local change_langage = depth_to_path(depth) .. lien
	local l = op_lang(langage)
	if (langage == "fr") then
		change_langage = depth_to_path(depth + 1) .. lien
		l = "en"
	else
		change_langage = depth_to_path(depth) .. "fr/" .. lien
		l = "fr"
	end
	if (section == "Acceuil") then
		return string.format(header_format, name, "index.html", "bouton2", buttons_name.acceuil[langage], "recherche/index.html", "bouton1", buttons_name.recherche[langage], "projets/index.html", "bouton1", buttons_name.projets[langage], "contact/index.html", "bouton1", buttons_name.contact[langage], change_langage, l)
	elseif (section == "Recherche") then
		return string.format(header_format, name, "../index.html", "bouton1", buttons_name.acceuil[langage], "index.html", "bouton2", buttons_name.recherche[langage], "../projets/index.html", "bouton1", buttons_name.projets[langage], "../contact/index.html", "bouton1", buttons_name.contact[langage], change_langage, l)
	elseif (section == "Projets") then
		return string.format(header_format, name, "../index.html", "bouton1", buttons_name.acceuil[langage], "../recherche/index.html", "bouton1", buttons_name.recherche[langage], "index.html", "bouton2", buttons_name.projets[langage], "../contact/index.html", "bouton1", buttons_name.contact[langage], change_langage, l)
	elseif (section == "Contact") then
		return string.format(header_format, name, "../index.html", "bouton1", buttons_name.acceuil[langage], "../recherche/index.html", "bouton1", buttons_name.recherche[langage], "../projets/index.html", "bouton1", buttons_name.projets[langage], "index.html", "bouton2", buttons_name.contact[langage], change_langage, l)
	else
		-- Section is "croco"
		local croco_name = [[Colie <span style="font-variant-caps:small-caps">Coolol</span>]]
		return string.format(header_format, croco_name, "./index.html", "bouton1", buttons_name.acceuil.croco, "./recherche/index.html", "bouton1", buttons_name.recherche.croco, "./projets/index.html", "bouton1", buttons_name.projets.croco, "./contact/index.html", "bouton1", buttons_name.contact.croco, change_langage, l)
	end
end

local function footer(depth)
	local prefixe = depth_to_path(depth) .. "media/"
	return string.format(footer_format, prefixe, prefixe, prefixe, prefixe, depth_to_path(depth), prefixe)
end

return {
	build = false,
	base = function(lang, contenu, section, style_path, depth, lien)
		return (string.format(base_template, lang, style_path, depth_to_path(depth), header(section, lang, depth, lien), contenu, footer(depth)))
	end
}
