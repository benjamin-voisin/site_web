local Base = require("base")

local para = {
	fr = [[
  Vous pouvez me contacter à mon adresse mail suivante : <a id="melcontact" a="YmVuamFtaW4udm9pc2lu" b="QGVucy1yZW5uZXMuZnI">prenom.nom@ens-rennes.fr</a>. Ma clé PGP est disponible <a href="../media/public_key.asc" download>ici</a>.
]],
	en = [[
  You can email me at <a id="melcontact" a="YmVuamFtaW4udm9pc2lu" b="QGVucy1yZW5uZXMuZnI">firstname.name@ens-rennes.fr</a>. My PGP key is available <a href="../media/public_key.asc" download>here</a>.
]],
}

local script = [[
<script>
  function courrielcontact() {
    let courrieldiv = document.getElementById("melcontact");
    let a = courrieldiv.getAttribute("a");
    let b = courrieldiv.getAttribute("b");
    let courriel = atob(a+b);
    courrieldiv.innerHTML = courriel;
    courrieldiv.href = atob("bWFpbHRvOg==") + courriel;
  }
  eval(atob("c2V0VGltZW91dCgoKSA9PiBjb3VycmllbGNvbnRhY3QoKSwgMTAwMCk="));
</script>
]]
return {
	build = true,
	lien = "contact/index.html",
	content = function(self, langue)
		return Base.base(langue, para[langue] .. script, "Contact", "../style.css", 1, self.lien)
	end
}
