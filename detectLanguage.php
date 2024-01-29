<?php
$supportedLanguages = ['en', 'fr'];
function detectLanguage() {
    global $supportedLanguages;
    if ((isset($_GET['lang'])) && (in_array($_GET['lang'], $supportedLanguages))) {
        return $_GET['lang'];
    }
    return 'en';
}

function urlLanguage($url, $lang) {
    return $url . '?lang=' . $lang;
}
?>
