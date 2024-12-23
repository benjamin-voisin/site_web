local Base = require("base")

return {
	build = true,
	lien = "contact/index.html",
	content = function(self, langue)
		local content = "Contact..."
		return Base.base(langue, content, "Contact", "../style.css", 1, self.lien)
	end
}
