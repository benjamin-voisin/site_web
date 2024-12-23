local Base = require("base")

local text = [[
<center>
<img src="./media/colie-coolol.png" width = "50%%">
</center>

<h1>You fell in a CrocoLoop !</h1>
Why not click on theese buttons to see the rest of the loop ?
<br><br>
<span style="position: relative; float: left;">
	<a style="text-decoration:none" href="https://perso.eleves.ens-rennes.fr/people/alexis.hamon/crocodile.html" class="bouton1"><= Previous</a>
</span>
<span style="position: relative; float: right;">
	<a style="text-decoration:none" href="https://perso.eleves.ens-rennes.fr/people/jules.timmerman/croco.html" class="bouton1">Next =></a>
</span>
]]

return {
	build = true,
	lien = "./index.html",
	content = function(self, lang)
		return Base.base(lang, text, "Croco", "style.css", 0, self.lien)
	end
}
