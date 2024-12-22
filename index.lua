local Base = require("base")

return {
	build = true,
	content = function(lang)
		return Base.base(lang, "INDEX")
	end
}
