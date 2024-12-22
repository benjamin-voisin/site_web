local base_template = [[
<!DOCTYPE html>
<html lang="%s">
<link rel="stylesheet" href="style.css" />
<head>
  <meta charset="utf-8">
  <title>Benjamin Vosin</title>
</head>

<body>
  <section class="section">
    <div class="container">
	  %s
    </div>
  </section>
</body>

</html>
]]
local header_format = [[
	<nav>
	  <ul>
		<li><a style="text-decoration:none" href="%s" class="bouton1">Acceuil</a></li><li><a style="text-decoration:none" href="%s" class="bouton2">Recherche</a></li><li><a style="text-decoration:none" href="%s" class="bouton1">Projets</a></li><li><a style="text-decoration:none" href="%s" class="bouton1">Contact</a></li>
  </ul>
	</nav>
]]

local function header(section)
	if (section == "Acceuil") then
		return string.format(header_format, "index.html", "recherche/index.html", "projets/index.html", "contact/index.html")
	elseif (section == "Recherche") then
		return string.format(header_format, "../index.html", "index.html", "../projets/index.html", "../contact/index.html")
	elseif (section == "Projets") then
		return string.format(header_format, "../index.html", "../recherche/index.html", "index.html", "../contact/index.html")
	elseif (section == "Contact") then
		return string.format(header_format, "../index.html", "../recherche/index.html", "../projets/index.html", "index.html")
	end
end

return {
	build = false,
	base = function(lang, contenu, section)
		return (string.format(base_template, lang, header(section)..contenu))
	end
}
