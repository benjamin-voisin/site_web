#! /bin/lua

local function compile_source(source)
	local base_langage = "en"
	local other_langages = { "fr" }

	local F = require(source)
	if (F.build) then
		os.execute(string.format("mkdir -p ./public/"))
		local target = io.open(string.format("./public/%s.html", source), "w")
		if (not target) then
			io.stderr:write("Could not open result file\n")
			os.exit(1)
		end
		target:write(F:content(base_langage))
		target:close()
		for _, langue in pairs(other_langages) do
			os.execute(string.format("mkdir -p ./public/%s", langue))
			target = io.open(string.format("./public/%s/%s.html", langue, source), "w")
			if (not target) then
				io.stderr:write("Could not open result file\n")
				os.exit(1)
			end
			target:write(F:content(langue))
			target:close()
		end
	else
		io.stderr:write("Not a file to compile\n")
		os.exit(1)
	end
end

local sources = { "index", "recherche/index", "recherche/stagel3", "recherche/projetM1" }
for _, source in pairs(sources) do
	compile_source(source)
end
