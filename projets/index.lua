local Base = require("base")

local projets = { "projets/hexattd" , "projets/olagem"}

local function format_projet(projet, langue)
	local result = string.format([[
<h3><a href="../%s">%s</a></h3>%s]], projet.lien, projet.title[langue], projet.description[langue])
	result = result .. "<br><br>"
	for _, ressource in pairs(projet.ressources) do
		result = result .. string.format([[
</h6><a href="%s" target="_blank">%s</a>. ]], ressource.link, ressource.name[langue])
	end
	return result
end
return {
	build = true,
	lien = "projets/index.html",
	content = function(self, langue)
		local content = ""
		for _, projet in pairs(projets) do
			content = content .. format_projet(require(projet), langue)
		end
		return Base.base(langue, content, "Projets", "../style.css", 1, self.lien)
	end
}
