<?php 
    require_once('lang/common/recherche.php');

    $encadrement = 'With';
    $experiments = [
        'projetM1' => [
            'title'  => "The Squirrel Prover",
            'people' => ['davidbaelde', 'josephlallemand'],
            'team'   => 'SPICY',
            'when'   => 'Septembre 2023 --',
            'ressources' => [
              'git' => [
                'name' => 'git repository',
                'link' => 'https://github.com/squirrel-prover/squirrel-prover',
              ],
            ],
        ],
        'stageL3' => [
            'title'  => "Zero Knowledge Proof and eligibility verifiability in electronic voting",
            'people' => ['alexandredebant', 'luccahirschi'],
            'team'   => 'PESTO',
            'when'   => 'May -- July 2023',
            'ressources' => [
              'rapport' => [
                'name' => 'Rapport',
                'link' => 'rapport_stage_L3.pdf',
              ],
              'beamer' => [
                'name' => 'Slides',
                'link' => 'Présentation_stage_L3.pdf',
              ],
            ],
        ],
    ];
?>
