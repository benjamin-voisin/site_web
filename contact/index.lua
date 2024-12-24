local Base = require("base")

local para = {
	fr = [[
<h2>Mail (méthode à privilégier)</h2>
Pour les contacts professionnels, le meilleur moyen de contact reste  les mails, de préférence chiffré (avec ma clé <a href="../media/public_key.asc" download>PGP</a> <font size=2>(F6BB 7666 62E7 D433 F7EE 159E C5C8 EDD1 25FB FD78)</font>).
<h2>Messageries instantanées</h2>
Je suis également joignables sur les messagerise instantannées (par ordre de préférence) :
<br><br>
<table>
  <tr><td>XMPP</td><td>benjaminv@xmpp-dev.sinfonie.org</td></tr>
  <tr><td>Discord</td><td>@bvoisin</td></tr>
  <tr><td>Mastodon</td><td><a href="https://piaille.fr/@benjaminV">@benjaminV@piaille.fr</a></td></tr>
</table>
]],
	en = [[
<h2>Email (preferred method)</h2>
For professional contacts, the preffered means still is email, encrypted if possible (with my <a href="../media/public_key.asc" download>PGP key</a> <font size=2>(F6BB 7666 62E7 D433 F7EE 159E C5C8 EDD1 25FB FD78)</font>).
<h2>Instant Messaging Systems</h2>
I’m also available on theese instant messaging systems (ordered by preferences) :
<table>
  <tr><td>XMPP</td><td>benjaminv@xmpp-dev.sinfonie.org</td></tr>
  <tr><td>Discord</td><td>@bvoisin</td></tr>
  <tr><td>Mastodon</td><td><a href="https://piaille.fr/@benjaminV">@benjaminV@piaille.fr</a></td></tr>
</table>
]],
}

return {
	build = true,
	lien = "contact/index.html",
	content = function(self, langue)
		return Base.base(langue, para[langue], "Contact", "../style.css", 1, self.lien)
	end
}
