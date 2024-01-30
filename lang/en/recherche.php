<?php 
    require_once('lang/common/recherche.php');

    $encadrement = 'With';
    $experiments = [
        'projetM1' => [
            'title'  => "The Squirrel Prover",
            'people' => ['davidbaelde', 'josephlallemand'],
            'description' => "Work done for my M1 project. The goal of this work is to formalize and study the internal logic of the Squirrel Prover, in order to facilitate multi-systems proofs, followed by a practical implementation in the tool.",
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
            'description' => "Work done for my L3 internship. The goal of this work is to build a Zero Knowledge Proof of eligibility, in order to prove an authentication with OpenID connect, while maintinning everlasting privacy. The projects is written in Rust with the <a href='https://github.com/0xPolygonZero/plonky2' target='_blank' >Plonky2</a> library.",
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
