local Base = require("base")

return {
	build = true,
	lien = "recherche/stageM1.html",
	title = {
		fr = "Protocole AKMA dans le prouveur Squirrel",
		en = "AKMA protocol in the Squirrel Prover",
	},
	encadrants = {
		{
			prenom = "Ioana",
			nom = "Boureanu",
			site = "https://www.surrey.ac.uk/people/ioana-boureanu"
		}
	},
	description = {
		fr = "Étude formelle dans le prouveur Squirrel du protocole d’authentification AKMA pour la 5G.",
		en = "Formal study of the AMKMA authontication protocol for 5G, with the Squirrel Prover.",
	},
	location = {
		name = {
			fr = "l’Univesité de Surrey",
			en = "University of Surrey"
		},
		link = "https://www.surrey.ac.uk/"
	},
	ressources = {
		{
			name = {
				fr = "Dépôt git",
				en = "git repository",
			},
			link = "https://github.com/benjamin-voisin/AKMA-squirrel"
		},
	},
	dates = {
		fr = "Juillet 2024 - Septembre 2024",
		en = "July 2024 - Septembre 2024",
	},
	content = function(self, lang)
		return Base.base(lang, self.title[lang], "Recherche", "../style.css", 1, self.lien)
	end
}
