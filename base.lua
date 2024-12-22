local base_template = [[
<!DOCTYPE html>
<html lang="%s">

<head>
  <meta charset="utf-8">
  <title>Benjamin Vosin</title>
</head>

<body>
  <section class="section">
    <div class="container">
	  %s
    </div>
  </section>
</body>

</html>
]]

return {
	build = false,
	base = function(lang, contenu)
		return (string.format(base_template, lang, contenu))
	end
}
