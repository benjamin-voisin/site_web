local Base = require("base")

local cv_link = {
	fr = "media/CV_français.pdf",
	en = "media/CV_english.pdf",
}
local intro = {
	fr = string.format([[
Bienvenu sur ma page personnelle ! Je suis actuellement étudiant en troisième année à l'ENS de Rennes, en préparation à l’agrégation d’informatique.
<br><br>
Mon CV est disponnible <a href = "%s">ici</a>.
<br><br>
<h2>Recherche <font size = 4>(<a href="./recherche/index.html">Détails</a>)</font></h2>
Je m’intéresse personnellement aux méthodes formelles, principallement dans le cadre de la preuves de protocoles.
<h2>Projets personnels <font size = 4>(<a href="./projets/index.html">Détails</a>)</font></h2>
J’ai égalements des projets peronnels, comme le test de vitesse d’écriture <a href="./projets/olagem.html">olagem</a>, et le jeu <a href="./projets/hexattd.html">HexaTTD</a>.
]], cv_link.fr),
	en = string.format([[
Welcome to my personnal website ! I am currently in third year at ENS de Rennes, in preparation for the agrétation in computer science.
<br><br>
My resume is available <a href = "%s">here</a>.
<br>
<h2>Research <font size = 4>(<a href="./recherche/index.html">Details</a>)</font></h2>
Main main research insterest is formal methods, mostly applied to proof of protocols.
<h2>Personnal projects <font size = 4>(<a href="./projets/index.html">Details</a>)</font></h2>
I also participate in some personnal projects, including the typing-speed test <a href="./projets/olagem.html">olagem</a>, and the OpenTTD-like game <a href="./projets/hexattd.html">HexaTTD</a>.
]], cv_link.en),
}

return {
	build = true,
	lien = "./index.html",
	content = function(self, lang)
		return Base.base(lang, intro[lang], "Acceuil", "style.css", 0, self.lien)
	end
}
