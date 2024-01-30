<?php 
    require_once('lang/common/recherche.php');

    $encadrement = 'Avec';
    $experiments = [
        'projetM1' => [
            'title'  => "The Squirrel Prover",
            'people' => ['davidbaelde', 'josephlallemand'],
            'team'   => 'SPICY',
            'when'   => 'Septembre 2023 --',
            'ressources' => [
              'git' => [
                'name' => 'Répo git',
                'link' => 'https://github.com/squirrel-prover/squirrel-prover',
              ],
            ],
        ],
        'stageL3' => [
            'title'  => "Preuve à divulgation nulle de connaissance pour la vérification d’éligibilité dans le vote par internet",
            'people' => ['alexandredebant', 'luccahirschi'],
            'team'   => 'PESTO',
            'when'   => 'Mai -- Juillet 2023',
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
