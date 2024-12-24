local Base = require("base")

return {
	build = true,
	lien = "projets/luasti.html",
	title = {
		fr = "Luastic",
		en = "Luastic",
	},
	description = {
		fr = "Un générateur de site statique (qui à construit le site sur lequel vous êtes actuellement), fait en et pour lua.",
		en = "A static website generator (the one that built this website), made with and for lua."
	},
	ressources = {
		{
			name = {
				fr = "Dépôt git",
				en = "git repository",
			},
			link = "https://codeberg.org/BenjaminV/luastic",
		},
	},
	content = function(self, lang)
		return Base.base(lang, self.title[lang], "Projets", "../style.css", 1, self.lien)
	end
}
