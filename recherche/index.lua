local Base = require("base")

local recherches = { "recherche/stageM1", "recherche/projetM1", "recherche/stagel3" }

local at = {
	fr = "à",
	en = "at",
}

local with = {
	fr = "Avec",
	en = "With",
}
local function format_experience_recherche(recherche, langue)
	local result = string.format([[
<h3><a href="../%s">%s</a> <font size=3>- %s</font></h3>%s]], recherche.lien, recherche.title[langue], recherche.dates[langue], recherche.description[langue])

	if (recherche.encadrants) then
		result = result .. "<h4>" .. with[langue] .." "
		for key, encadrant in pairs(recherche.encadrants) do
			if (key > 1) then
				result = result .. ", "
			end
			result = result .. string.format([[
<a style="text-decoration:none" target="_blank" href="%s">%s <span style="font-variant-caps:small-caps">%s</span></a>]], encadrant.site, encadrant.prenom, encadrant.nom)
		end
	end
	result = result .. " " .. at[langue].." " .. recherche.location.name[langue] .. "</h4>"
	for _, ressource in pairs(recherche.ressources) do
		result = result .. string.format([[
</h6><a href="%s" target="_blank">%s</a>. ]], ressource.link, ressource.name[langue])
	end
	return result
end
return {
	build = true,
	lien = "recherche/index.html",
	content = function(self, langue)
		local content = ""
		for _, recherche in pairs(recherches) do
			content = content .. format_experience_recherche(require(recherche), langue)
		end
		return Base.base(langue, content, "Recherche", "../style.css", 1, self.lien)
	end
}
