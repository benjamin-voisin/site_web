<?php 

    $experiments = [
      'box' => [
        'title' => 'Box',
        'description' => "A fast C algorithm to compute MAWs (minimal absent words).",
        'ressources' => [
          'git' => [
            'name' => 'git repository',
            'link' => 'https://framagit.org/AlexisHamon/box_project',
			'attributes' => 'target="_blank"',
          ],
          'paper' => [
            'name' => 'Scientific report',
            'link' => 'docs/Scientific_report.pdf',
			'attributes' => 'target="_blank"',
          ],
          'wasm' => [
            'name' => 'Try it online !',
            'link' => urlLanguage('box.php', $lang),
			'attributes' => '',
          ],
        ],
      ],
      'olagem' => [
        'title' => 'Olagem',
        'description' => "A typing-speed test written in Rust.",
        'ressources' => [
          'git' => [
            'name' => 'git repository',
            'link' => 'https://github.com/benjamin-voisin/olagem/',
			'attributes' => 'target="_blank"',
          ],
        ],
      ],
      'powernuts' => [
        'title' => 'PowerNuts',
        'description' => "A neovim plugin for the Squirrel proof-assistant.",
        'ressources' => [
          'git' => [
            'name' => 'git repository',
            'link' => 'https://github.com/benjamin-voisin/PowerNuts/',
			'attributes' => 'target="_blank"',
          ],
        ],
      ],
      'cehavl' => [
        'title' => 'Cehavl.nvim',
        'description' => "A neovim plugin to miw around letters of a word.",
        'ressources' => [
          'git' => [
            'name' => 'git repository',
            'link' => 'https://github.com/benjamin-voisin/cehavl.nvim',
			'attributes' => 'target="_blank"',
          ],
        ],
      ],
    ];
?>
