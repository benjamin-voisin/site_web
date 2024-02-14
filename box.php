<!-- box.php -->
<?php
// Set the variable before including the header
$section = "projets"; // Set the desired section
// Include the header file
require_once('header.php');
?>
<?php
if ($lang === 'en') {
  require_once('lang/en/box.php');
} else {
  require_once('lang/fr/box.php');
}
?>

<div class="conteneur">

      <span style="position: relative; float: left;">
      <a style="text-decoration:none" href="https://perso.eleves.ens-rennes.fr/people/alexis.hamon/crocodile.html" class="bouton1"><?php echo $previous ?></a>
      </span>
<h3><?php echo $input ?></h3>
        <?php echo '<input type="text" id="input" placeholder="' . $input_text . '">'; ?>
        <button id="btn"><?php echo $button_text ?></button>
        <h3><?php echo $output ?></h3>
        <div id="output"></div>
        <script src="box.js"></script>
<script>

const btn= document.getElementById("btn");

btn.addEventListener('click', function(){
  var dna = document.getElementById("input").value;
  resultdiv = document.getElementById("output");
  ptr =Calculer les mots absents minimaux stringToNewUTF8(dna);
  result = _foisdeux(ptr);
  result_to_js = UTF8ToString(result);
  console.log(result_to_js);
  resultdiv.innerHTML = result_to_js;

});
</script>

        <hr>
</div>
</body>
