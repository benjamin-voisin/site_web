local Base = require("base")

return {
	build = true,
	lien = "recherche/index.html",
	content = function(self, langue)
		local content = "Contact..."
		return Base.base(langue, content, "Contact", "../style.css")
	end
}
