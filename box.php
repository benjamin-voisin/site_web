<!-- box.php -->
<?php
// Set the variable before including the header
$section = "projets"; // Set the desired section
// Include the header file
require_once('header.php');
?>
<?php
if ($lang === 'en') {
  require_once('lang/en/box.php');
} else {
  require_once('lang/fr/box.php');
}
?>

<div class="conteneur">

      <span style="position: relative; float: left;">

        <div class="alert">
          <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
          <span>&#9888;</span> 
          <?php echo $waring ?>
        </div> 

    <?php echo '<a style="text-decoration:none" href="' . urlLanguage('projets.php', $lang) . '" class="bouton1">' . $previous . '</a>'; ?>
      </span>
  <br>
  <br>
  <br>
<h3><?php echo $input ?></h3>
        <?php echo '<input type="text" id="input" placeholder="' . $input_text . '">'; ?>
        <button id="btn"><?php echo $button_text ?></button>

        <h3><?php echo $output ?></h3>
        <div class="flex-container">
          <div class="flex-child 1">
            <h4><?php echo $maw_title ?></h4>
            <center>
              <div class="scroll">
                <button class="copyBtn" id="copyAw">
                  <?php echo $copy ?>
                </button>
                <div id="awoutput"></div>
              </div>
            </center>
          </div>
          <div class="flex-child 2">
            <h4><?php echo $dot_title ?></h4>
            <center>
              <div class="scroll">
                <button class="copyBtn" id="copyDot">
                  <?php echo $copy ?>
                </button>
                <div id="dotoutput"></div>
              </div>
            </center>
          </div>
        </div>

        <div id="output"></div>
        <script src="box.js"></script>
<script>
const btn = document.getElementById("btn");
const copyAwBtn = document.getElementById("copyAw");
const copyDotBtn = document.getElementById("copyDot");

btn.addEventListener('click', function () {
  var dna = document.getElementById("input").value;
  awoutput = document.getElementById("awoutput");
  dotoutput = document.getElementById("dotoutput");
  ptr = stringToNewUTF8(dna);
  arbre = _buildST(ptr);
  absentWords = _computeAbsentWords(arbre);

  dot = _computeDOT(arbre);
  dotString = UTF8ToString(dot);
  absentWordString = UTF8ToString(absentWords);
  awoutput.innerHTML = absentWordString;
  dotoutput.innerHTML = dotString;
});

copyAwBtn.addEventListener('click', function () {
  copyToClipboard("awoutput", copyAwBtn);
});

copyDotBtn.addEventListener('click', function () {
  copyToClipboard("dotoutput", copyDotBtn);
});

function copyToClipboard(elementId, button) {
  const element = document.getElementById(elementId);
  const text = element.innerText;

  navigator.clipboard.writeText(text)
    .then (() => {
    button.innerText = "Result Copied";
    setTimeout(() => {
    button.innerText = "Copy to clipboard";
    }, 2000);
  })
    .catch(err => {
    button.innerText = "The text has not been copied, an error occured";
    setTimeout(() => {
    button.innerText = "Copy to clipboard";
    }, 2000);
    });
}
</script>

        <hr>
</div>
</body>
