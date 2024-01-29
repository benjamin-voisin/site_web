<!-- header.php -->
<!DOCTYPE html>
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
                'href'  => 'index.php',
                'attrs' => '',
                'name'   => 'Accueil',
            ],
            'research' => [
                'href'  => 'recherche.php',
                'attrs' => '',
                'name'   => 'Recherche',
            ],
            'projects' => [
                'href'  => 'projets.php',
                'attrs' => '',
                'name'   => 'Enseignement',
            ],
            'wikipedia' => [
                'href'  => 'wikipedia.php',
                'attrs' => '',
                'name'   => 'Contact',
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

  </ul>
      </ul>
    </nav>
<div class="conteneur">
