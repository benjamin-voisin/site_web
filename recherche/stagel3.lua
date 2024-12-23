local Base = require("base")

return {
	build = true,
	lien = "recherche/stagel3.html",
	title = {
		fr = "Preuve à divulgation nulle de connaissance pour la vérification d’éligibilité dans le vote par internet",
		en = "Zero Knowledge Proof and eligibility verifiability in electronic voting"
	},
	encadrants = {
		{
			prenom = "Alexandre",
			nom = "Debant",
			site = "https://members.loria.fr/ADebant/"
		},
		{
			prenom = "Lucca",
			nom = "Hirschi",
			site = "https://members.loria.fr/LHirschi/"
		}
	},
	description = {
		fr = "travail effectué dans le cadre de mon stage de L3. L'objectif de ce travail est de construire et d'évaluer une Zero Knowledge Proof d'éligibilité, pour pouvoir prouver une authentification à l'aide d'OpenID connect tout en préservant l'everslasting privacy. Le projet est réalisé en Rust à l'aide de la librairie Plonky2.",
		en = "Work done for my L3 internship. The goal of this work is to build a Zero Knowledge Proof of eligibility, in order to prove an authentication with OpenID connect, while maintinning everlasting privacy. The projects is written in Rust with the Plonky2 library."
	},
	location = {
		name = {
			fr = "l’Inria Grand Est - Loria",
			en = "Inria Grand Est - Loria",
		},
		link = "https://www.loria.fr/fr/"
	},
	ressources = {
		{
			name = {
				fr = "Rapport",
				en = "Report",
			},
			link = "../media/rapport_stage_L3.pdf"
		},
		{
			name = {
				fr = "Présentation",
				en = "Slides",
			},
			link = "../media/Présentation_stage_L3.pdf"
		}
	},
	dates = {
		fr = "Mai - Juillet 2023",
		en = "May - July 2023",
	},
	content = function(self, lang)
		return Base.base(lang, self.title[lang], "Recherche", "../style.css", 1, self.lien)
	end
}
