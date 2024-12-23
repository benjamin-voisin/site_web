local Base = require("base")

local para = {
	fr = [[
  Vous pouvez me contacter à mon adresse mail suivante : <a id="melcontact" title="to send me an email"> <font color="blue"> prenom.nom@ens-rennes.fr </font> </a>. Ma clé PGP est disponible <a href="../media/public_key.asc" download>ici</a>.
]],
	en = [[
  You can email me at <a id="melcontact" title="to send me an email"> <font color="blue"> firstname.name@ens-rennes.fr </font> </a>. My PGP key is available <a href="../media/public_key.asc" download>here</a>.
]],
}

local script = [[

<script>
  function mail() {
    let a = "YmVuamFtaW4udm9pc2lu";
    let b = "QGVucy1yZW5uZXMuZnI";
    mel = atob(a+b);
    meldiv = document.getElementById("melcontact");
    meldiv.innerHTML = mel;
    meldiv.href = atob("bWFpbHRvOg==") + mel;
  }
  mail();
</script>
]]
return {
	build = true,
	lien = "contact/index.html",
	content = function(self, langue)
		return Base.base(langue, para[langue] .. script, "Contact", "../style.css", 1, self.lien)
	end
}
