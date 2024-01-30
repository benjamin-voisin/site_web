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
    echo '<h4>' . $encadrement . ' ';
    foreach ($data['people'] as $peopleid) {
      $peopledata = $knownpeople[$peopleid];
      echo '<a style="text-decoration:none" target="_blank" href="' . $peopledata['href'] . '">';
      echo $peopledata['surname'] . ' ';
      echo '<span style="font-variant-caps:small-caps">' . $peopledata['name'] . '</span></a>, ';
    }
    echo '</h4>';
    echo '<h5>';
    echo '<a style="text-decoration:none" target="_blank" href="';
    echo $knownteams[$data['team']]['href'];
    echo '">';
    echo $knownteams[$data['team']]['employer'] . ', ' . $knownteams[$data['team']]['teamname'] . ', ' . $knownteams[$data['team']]['lab'];
    echo '</a></h5>';
    echo '<h6>' . $data['when'] . '</h6>';
    foreach ($data['ressources'] as $res) {
      echo '<a href="' . $res['link'] . '" target="_blank">' . $res['name'] . '</a>.';
    }
    echo '<hr>';
  }
  ?>
   
</div>
</body>
