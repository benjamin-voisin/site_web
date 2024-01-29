<!-- recherche.php -->
<?php
// Set the variable before including the header
$section = "recherche"; // Set the desired section
// Include the header file
require_once('header.php');
?>
<?php
if ($lang === 'en') {
    require_once('lang/en/recherche.php');
} else {
    require_once('lang/fr/recherche.php');
}
?>

<div class="conteneur">
  <?php 
  foreach ($experiments as $experiment => $data) {
    echo '<h3>' . $data['title'] . '</h3>';
  }
  ?>
   
</div>
</body>
