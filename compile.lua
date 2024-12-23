#! /bin/lua

local base_langage = "en"
local other_langages = { "fr" }

local output_dir = "public_html"

local function copy_style()
	os.execute(string.format("mkdir -p ./%s/", output_dir))
	os.execute(string.format("cp ./style.css ./%s/", output_dir))
	for _, langue in pairs(other_langages) do
		os.execute(string.format("mkdir -p ./%s/%s", output_dir, langue))
		os.execute(string.format("cp ./style.css ./%s/%s", output_dir, langue))
	end
end

local function copy_media()
	os.execute(string.format("mkdir -p ./%s/media", output_dir))
	os.execute(string.format("cp ./media/* ./%s/media/", output_dir))
	for _, langue in pairs(other_langages) do
		os.execute(string.format("mkdir -p ./%s/%s/media", output_dir, langue))
		os.execute(string.format("cp ./media/* ./%s/%s/media/", output_dir, langue))
	end
end

local function compile_source(source)

	local F = require(source.require_path)
	if (F.build) then
		os.execute(string.format("mkdir -p ./%s/%s", output_dir, source.directory))
		local target = io.open(string.format("./%s/%s.html", output_dir, source.require_path), "w")
		if (not target) then
			io.stderr:write("Could not open result file\n")
			os.exit(1)
		end
		target:write(F:content(base_langage))
		target:close()
		for _, langue in pairs(other_langages) do
			os.execute(string.format("mkdir -p ./%s/%s/%s", output_dir, langue, source.directory))
			target = io.open(string.format("./%s/%s/%s.html", output_dir, langue, source.require_path), "w")
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

copy_media()
copy_style()
for _, source in pairs(get_sources()) do
	compile_source(source)
end
