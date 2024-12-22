local Base = require("base")
return {
	build = true,
	lien = "recherche/index.html",
	content = function(self, langue)
		local content = "Projets..."
		return Base.base(langue, content, "Projets", "../style.css")
	end
}
