local Base = require("base")

return {
	build = true,
	lien = "projets/hexattd.html",
	title = {
		fr = "HexaTTD",
		en = "HexaTTD",
	},
	description = {
		fr = "Un jeu du style d’OpenTTD, sur une grille hexagonale. Fais en C++ avec raylib.",
		en = "An OpenTTD like game, but on an hex grid. Made in C++ with raylib"
	},
	ressources = {
		{
			name = {
				fr = "Dépôt git",
				en = "git repository",
			},
			link = "https://codeberg.org/BenjaminV/HexaTTD",
		},
	},
	content = function(self, lang)
		return Base.base(lang, self.title[lang], "Projets", "../style.css", 1, self.lien)
	end
}
