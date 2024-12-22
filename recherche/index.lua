local Base = require("base")

local recherches = { "recherche/projetM1", "recherche/stagel3" }

-- local feur = [[<h3>The Squirrel Prover</h3>Travail effectué dans le cadre de mon projet de M1. L'objectif de ce travail est de formaliser et d'étudier la logique interne à l'assistant de preuve Squirrel afin de faciliter les preuves multi-systèmes, suivi d'une implémentation en pratique dans l'outil.<h4>Avec <a style="text-decoration:none" target="_blank" href="https://people.irisa.fr/David.Baelde/">David <span style="font-variant-caps:small-caps">Baelde</span></a>, <a style="text-decoration:none" target="_blank" href="https://people.irisa.fr/Joseph.Lallemand/">Joseph <span style="font-variant-caps:small-caps">Lallemand</span></a>, </h4><h5><a style="text-decoration:none" target="_blank" href="https://www-spicy.irisa.fr/">Inria Bretagne, SPICY, Irisa</a></h5><h6>Septembre 2023 --</h6><a href="https://github.com/squirrel-prover/squirrel-prover" target="_blank">Répo git</a>. ]]

local function format_experience_recherche(recherche, langue)
	local result = string.format([[
<h3><a href="../%s">%s</a></h3>%s
]], recherche.lien, recherche.title[langue], recherche.description[langue])

	result = result .. "<h4>Avec "
	for key, encadrant in pairs(recherche.encadrants) do
		if (key > 1) then
			result = result .. ", "
		end
		result = result .. string.format([[
<a style="text-decoration:none" target="_blank" href="%s">%s <span style="font-variant-caps:small-caps">%s</span></a>
]], encadrant.site, encadrant.prenom, encadrant.nom)
	end
	result = result .. "</h4>"
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
		return Base.base(langue, content, "Recherche", "../style.css")
	end
}
