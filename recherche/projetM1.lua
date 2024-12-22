local Base = require("base")

return {
	build = true,
	lien = "recherche/projetM1.html",
	title = {
		fr = "The Squirrel Prover",
		en = "The Squirrel Prover",
	},
	encadrants = {
		{
			prenom = "David",
			nom = "Baelde",
			site = "https://people.irisa.fr/David.Baelde/"
		},
		{
			prenom = "Joseph",
			nom = "Lallemand",
			site = "https://people.irisa.fr/Joseph.Lallemand/"
		}
	},
	description = {
		fr = "Travail effectué dans le cadre de mon projet de M1. L'objectif de ce travail est de formaliser et d'étudier la logique interne à l'assistant de preuve Squirrel afin de faciliter les preuves multi-systèmes, suivi d'une implémentation en pratique dans l'outil.",
		en = "Work done for my M1 project. The goal of this work is to formalize and study the internal logic of the Squirrel Prover, in order to facilitate multi-systems proofs, followed by a practical implementation in the tool."
	},
	location = "Inria Rennes",
	content = function(self, lang)
		return Base.base(lang, self.title[lang], "Recherche", "../style.css", 1)
	end
}
