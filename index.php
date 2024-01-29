<!-- index.php -->
<?php
// Set the variable before including the header
$section = "index"; // Set the desired section
// Include the header file
require_once('header.php');
?>
<?php
if ($lang === 'en') {
    require_once('lang/en/index.php');
} else {
    require_once('lang/fr/index.php');
}
?>

<div class="conteneur">
  <h3><?php echo $lang_shortdesctipionname ?></h3>

  <p> <?php echo $lang_shortdesctipion ?></p>


      <hr>
      <h3>Curriculum vitae</h3>
      <center><a style="text-decoration:none" href=<?php $lang_cv_link ?> class="bouton1" target="_blank">CV</a></center>
      
  <hr>
  
  <h3>Contact</h3>
    
      <center>
                <a id="mel" title="pour m'envoyer un mail">
                    <font color="blue">
                        prenom.nom@ens-rennes.fr
                    </font>
                </a>
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
