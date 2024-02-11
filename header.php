<!-- header.php -->
<!DOCTYPE html>
<?php
require_once('detectLanguage.php');
$lang = detectLanguage();
echo '<html lang="' . $lang . '">';
?>
<?php
if ($lang === 'en') {
    require_once('lang/en/header.php');
} else {
    require_once('lang/fr/header.php');
}
?>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style.css" />
    <title>Benjamin Voisin</title>
  </head>

<body>
    <div id = "titre">
      <div id = "boite">
              <div id = "boitenom">
                <div id="nom">
                  Benjamin <span style="font-variant-caps:small-caps"> Voisin</span>
                </div>
              </div>
      </div>
    </div>
    <nav>
      <ul>
        <?php 
        $default_attrs = 'style="text-decoration:none"'; 
        $categories = [
            'index' => [
                'href'  => urlLanguage('index.php', $lang),
                'attrs' => '',
                'name'   => $lang_index,
            ],
            'recherche' => [
                'href'  => urlLanguage('recherche.php', $lang),
                'attrs' => '',
                'name'   => $lang_research,
            ],
            'projets' => [
                'href'  => urlLanguage('projets.php', $lang),
                'attrs' => '',
                'name'   => $lang_projects,
            ],
            /* 'wikipedia' => [ */
            /*     'href'  => urlLanguage('wikipedia.php', $lang), */
            /*     'attrs' => '', */
            /*     'name'   => $lang_wikipedia, */
            /* ], */
            'contact' => [
                'href' => urlLanguage('contact.php', $lang),
                'attrs' => '',
                'name' => 'Contact',
            ],
        ];
        foreach ($categories as $category => $data) {
            echo '<li><a ' . $default_attrs . $data['attrs'] . ' href="'. $data['href'] . '" class="';
            if ((isset($section)) && ($section == $category)) {
                echo "bouton2";
            } else {
                echo "bouton1";
            }
            echo '"';
            echo '>' . $data['name'] . '</a></li>';  
        }
?>
      <li class = deroulant>
      <a style="text-decoration:none" href=# class="bouton1">Langage</a> 
      <ul class = sous>
        <li><a style="text-decoration:none" href = "?lang=en" class="bouton3">English</a></li>
        <li><a style="text-decoration:none" href = "?lang=fr" class="bouton3">Français</a></li>
      </ul></li>

  </ul>
      </ul>
    </nav>
