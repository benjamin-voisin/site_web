#! /bin/lua

local function compile_source(source)
	local base_langage = "en"
	local other_langages = { "fr" }

	local F = require(source.require_path)
	if (F.build) then
		os.execute(string.format("mkdir -p ./public/%s", source.directory))
		os.execute(string.format("cp ./style.css ./public/"))
		local target = io.open(string.format("./public/%s.html", source.require_path), "w")
		if (not target) then
			io.stderr:write("Could not open result file\n")
			os.exit(1)
		end
		target:write(F:content(base_langage))
		target:close()
		for _, langue in pairs(other_langages) do
			os.execute(string.format("mkdir -p ./public/%s/%s", langue, source.directory))
			os.execute(string.format("cp ./style.css ./public/%s", langue))
			target = io.open(string.format("./public/%s/%s.html", langue, source.require_path), "w")
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

local function get_sources()
	local result = {}
	local find, err = io.popen("find . -name '*.lua'")
	if (not find) then
		io.stderr:write(err)
		os.exit(1)
	end
	local file = find:read("*l")
	while (file) do
		local require_path = string.gsub(file, ".lua", "")
		local directory = string.gsub(require_path, "/[%w]-$", "")
		if (require_path ~= "./compile" and require(require_path).build) then
			table.insert(result, { require_path = require_path, directory = directory })
		end
		file = find:read("*l")
	end
	return result
end

for _, source in pairs(get_sources()) do
	compile_source(source)
end
