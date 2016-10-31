<!DOCTYPE html>
<html>
<head>
  <#include "header.ftl">
<script>
// When the user clicks on <div>, open the popup
function myFunction() {
    var popup = document.getElementById('myPopup');
    popup.classList.toggle('show');
}
</script>
</head>

<body onload="myFunction()">

<div class="jumbotron text-center">
  <div class="container">
    <a href="/" class="lang-logo">
      <img src="/lang-logo.png">
    </a>
    <h1>Geofence Demo</h1><br/>
  </div>
<div class="popup" onclick="myFunction()">Click me!
  <span class="popuptext" id="myPopup">Popup text...</span>
</div>
</div>



</body>
</html>
