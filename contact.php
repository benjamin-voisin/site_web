<!-- contact.php -->
<?php
// Set the variable before including the header
$section = "contact"; // Set the desired section
// Include the header file
require_once('header.php');
?>
<?php
if ($lang === 'en') {
    require_once('lang/en/contact.php');
} else {
    require_once('lang/fr/contact.php');
}
?>

<div class="conteneur">
  <?php echo $contact_description ?>


    <center>
			<br>
			<hr>
			<br>

			<div id = "contact" >
				<div class = "contact_box">
					<a href ="https://github.com/benjamin-voisin" target="_blank"><img src="logo github.png" alt="Compte GitHub : Vneb23" height="50px" width="50px"></a>
				</div>
				<div class = "contact_box">
					<a href ="https://fr.wikipedia.org/wiki/Utilisateur:T%C3%A9traodon_pardalis" target="_blank"><img src="logo wikipedia.png" alt="Compte Wikipédia : Tétraodon pardalis" height="50px" width="50px"></a>
				</div>
				<div class = "contact_box">
					<a href ="https://framagit.org/Vneb23" target="_blank"><img src="framasoft.png" alt="Compte Wikipédia : Tétraodon pardalis" height="50px" width="50px"></a>
				</div>
			</div>
      </center> 
  <br>
    
</div>
<script>
  function mail() {
    let a = "YmVuamFtaW4udm9pc2lu";
    let b = "QGVucy1yZW5uZXMuZnI";
    mel = atob(a+b);
    meldiv = document.getElementById("mel");
    meldiv.innerHTML = mel;
    meldiv.href = atob("bWFpbHRvOg==") + mel;
  }
  mail();
</script>
</body>
