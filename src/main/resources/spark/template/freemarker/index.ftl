<!DOCTYPE html>
<html>
<head>
  <#include "header.ftl">
<link rel="stylesheet" href="http://www.jacklmoore.com/colorbox/example1/colorbox.css" />
<script>
// When the user clicks on <div>, open the popup
function myFunction() {
    var popup = document.getElementById('myPopup');
    popup.classList.toggle('show');
}
</script>
</head>

<body>

<div class="jumbotron text-center">
  <div class="container">
    <a href="/" class="lang-logo">
      <img src="/lang-logo.png">
    </a>
    <h1>Geofence Demo</h1><br/>
  </div>
</div>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://www.jacklmoore.com/colorbox/jquery.colorbox.js"></script>
    <script>
      function openColorBox(){
        $.colorbox({iframe:true, width:"80%", height:"80%", href: "http://www.sitepoint.com"});
      }
      
      setTimeout(openColorBox, 5000);
    </script>

</body>
</html>
