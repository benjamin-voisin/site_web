<!-- projets.php -->
<?php
// Set the variable before including the header
$section = "projets"; // Set the desired section
// Include the header file
require_once('header.php');
?>
<?php
if ($lang === 'en') {
    require_once('lang/en/projets.php');
} else {
    require_once('lang/fr/projets.php');
}
?>

<div class="conteneur">
<?php
  foreach ($experiments as $experiment => $data) {
    echo '<h3>' . $data['title'] . '</h3>';
    echo $data['description'];

    foreach ($data['ressources'] as $res) {
      echo '<a href="' . $res['link'] . '" target="_blank">' . $res['name'] . '</a>. ';
    }
    echo '<hr>';
  }
?>

</div>
</body>
