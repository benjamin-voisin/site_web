local base_template = [[
<!DOCTYPE html>
<html lang="%s">
<head>
  <meta charset="utf-8">
  <title>Benjamin Vosin</title>
  <link rel="stylesheet" href="%s"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=B612:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
</head>
<body>
	%s
    <div class="container">
	  %s
    </div>
</body>

</html>
]]
local header_format = [[
<div class="nom">
Benjamin <span style="font-variant-caps:small-caps">Voisin</span>
</div>
	<nav>
	  <ul>
		<li><a style="text-decoration:none" href="%s" class="%s">Acceuil</a></li><li><a style="text-decoration:none" href="%s" class="%s">Recherche</a></li><li><a style="text-decoration:none" href="%s" class="%s">Projets</a></li><li><a style="text-decoration:none" href="%s" class="%s">Contact</a></li>
  </ul>
	</nav>
]]

local function header(section)
	if (section == "Acceuil") then
		return string.format(header_format, "index.html", "bouton2", "recherche/index.html", "bouton1", "projets/index.html", "bouton1", "contact/index.html", "bouton1")
	elseif (section == "Recherche") then
		return string.format(header_format, "../index.html", "bouton1", "index.html", "bouton2", "../projets/index.html", "bouton1", "../contact/index.html", "bouton1")
	elseif (section == "Projets") then
		return string.format(header_format, "../index.html", "bouton1", "../recherche/index.html", "bouton1", "index.html", "bouton2", "../contact/index.html", "bouton1")
	elseif (section == "Contact") then
		return string.format(header_format, "../index.html", "bouton1", "../recherche/index.html", "bouton1", "../projets/index.html", "bouton1", "index.html", "bouton2")
	end
end

return {
	build = false,
	base = function(lang, contenu, section, style_path)
		return (string.format(base_template, lang, style_path, header(section), contenu))
	end
}
