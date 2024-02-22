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

      <span style="position: relative; float: center;">

    <?php echo '<a style="text-decoration:none" href="' . urlLanguage('projets.php', $lang) . '" class="bouton1">' . $previous . '</a>'; ?>

        <div class="alert">
          <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
          <span>&#9888;</span> 
          <?php echo $warning ?>
        </div> 

      </span>
  <hr>
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

        <button id="graphbtn" style="display:none">
          <?php echo $print_graph ?>
        </button>
        <center>
          <div class="svg">
            <a id="downloadsvg" class="svgBtn" style="display:none" download>
              <?php echo $download_svg ?>
            </a>
            <div id="suffixsvg">
            </div>
          </div>
        </center>



<script src="box.js"></script>
<script>
var svg;
var dotString = "";

function vizLoaded() {
  graphbtn.addEventListener('click', function () {
    document.getElementById("suffixsvg").innerHTML = "";
    document.getElementById("downloadsvg").style.display="inline";

    Viz.instance().then(function(viz) {
      svg = viz.renderSVGElement(dotString);
      document.getElementById("suffixsvg").appendChild(svg);
      //get svg source.
      var serializer = new XMLSerializer();
      var source = serializer.serializeToString(svg);

      //add name spaces.
      if(!source.match(/^<svg[^>]+xmlns="http\:\/\/www\.w3\.org\/2000\/svg"/)){
        source = source.replace(/^<svg/, '<svg xmlns="http://www.w3.org/2000/svg"');
      }
      if(!source.match(/^<svg[^>]+"http\:\/\/www\.w3\.org\/1999\/xlink"/)){
        source = source.replace(/^<svg/, '<svg xmlns:xlink="http://www.w3.org/1999/xlink"');
      }

      //add xml declaration
      source = '<?xml version="1.0" standalone="no"?>\r\n' + source;

      //convert svg source to URI data scheme.
      var url = "data:image/svg+xml;charset=utf-8,"+encodeURIComponent(source);

      //set url value to a element's href attribute.
      document.getElementById("downloadsvg").href = url;
      //you can download svg file by right click menu.

    });

  });
};


const btn = document.getElementById("btn");
const copyAwBtn = document.getElementById("copyAw");
const copyDotBtn = document.getElementById("copyDot");
<!-- const svgBtn = document.getElementById("savesvg"); -->

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
    document.getElementById("graphbtn").style.display = "inline";
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
<script src="https://unpkg.com/@viz-js/viz@latest" onload="vizLoaded()"></script>

        <hr>
</div>
</body>
