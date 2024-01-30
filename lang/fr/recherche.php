<?php 
    require_once('lang/common/recherche.php');

    $encadrement = 'Avec';
    $experiments = [
        'projetM1' => [
            'title'  => "The Squirrel Prover",
            'people' => ['davidbaelde', 'josephlallemand'],
            'description' => "Travail effectué dans le cadre de mon projet de M1. L'objectif de ce travail est de formaliser et d'étudier la logique interne à l'assistant de preuve Squirrel afin de faciliter les preuves multi-systèmes, suivi d'une implémentation en pratique dans l'outil.",
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
            'description' => "Travail effectué dans le cadre de mon stage de L3. L'objectif de ce travail est de construire et d'évaluer une Zero Knowledge Proof d'éligibilité, pour pouvoir prouver une authentification à l'aide d'OpenID connect tout en préservant l'everslasting privacy. Le projet est réalisé en Rust à l'aide de la librairie <a href='https://github.com/0xPolygonZero/plonky2>' target='_blank'>Plonky2</a>.",
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
