local Base = require("base")

local intro = {
	fr = "Bienvenu sur ma page personnelle ! Je suis actuellement étudiant en deuxième année (M1 SIF) à l'ENS de Rennes",
	en = "Welcome to my personnal website ! I am currently in second year (M1 SIF) at the ENS Rennes",
}

return {
	build = true,
	content = function(self, lang)
		return Base.base(lang, intro[lang], "Acceuil", "style.css")
	end
}
