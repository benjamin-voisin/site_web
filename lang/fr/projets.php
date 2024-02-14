<?php 

    $experiments = [
      'box' => [
        'title' => 'Box',
        'description' => "Un outil pour calculer rapidement des mots absents minimaux.",
        'ressources' => [
          'git' => [
            'name' => 'Répo git',
            'link' => 'https://framagit.org/AlexisHamon/box_project',
          ],
          'paper' => [
            'name' => 'Rapport',
            'link' => 'docs/Scientific_report.pdf',
          ],
          'wasm' => [
            'name' => 'Try it online !',
            'link' => urlLanguage('box.php', $lang),
          ],
        ],
      ],
      'olagem' => [
        'title' => 'Olagem',
        'description' => "Un test de vitesse d'écriture, écrit en Rust.",
        'ressources' => [
          'git' => [
            'name' => 'Répo git',
            'link' => 'https://github.com/benjamin-voisin/olagem/',
          ],
        ],
      ],
      'powernuts' => [
        'title' => 'PowerNuts',
        'description' => "Un plugin Neovim pour pouvoir utiliser l'assistant de preuve Squirrel.",
        'ressources' => [
          'git' => [
            'name' => 'Répo git',
            'link' => 'https://github.com/benjamin-voisin/PowerNuts/',
          ],
        ],
      ],
      'cehavl' => [
        'title' => 'Cehavl.nvim',
        'description' => "Cehavl est un plugin Neovim permettant de mélanger l'ordre des lettres dans un mot. Par exemple, \"cheval\" peut devenir \"cehavl\" ou \"haevcl\".",
        'ressources' => [
          'git' => [
            'name' => 'Répo git',
            'link' => 'https://github.com/benjamin-voisin/cehavl.nvim',
          ],
        ],
      ],
    ];
?>
