local Base = require("base")

return {
	build = true,
	content = function(self, lang)
		return Base.base(lang, "INDEX", "Acceuil")
	end
}
