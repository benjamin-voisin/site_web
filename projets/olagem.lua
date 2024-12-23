local Base = require("base")

return {
	build = true,
	lien = "projets/olagem.html",
	title = {
		fr = "olagem",
		en = "olagem",
	},
	description = {
		fr = "Un test de vitesse d’écriture dans le terminal, écrit en Rust avec Ratatui",
		en = "A terminal-based typing speed test, made with Rust and Ratatui"
	},
	ressources = {
		{
			name = {
				fr = "Dépôt git",
				en = "git repository",
			},
			link = "https://codeberg.org/BenjaminV/olagem",
		},
	},
	content = function(self, lang)
		return Base.base(lang, self.title[lang], "Projets", "../style.css", 1, self.lien)
	end
}
