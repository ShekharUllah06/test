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
  <span class="popuptext" id="myPopup">
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyC5f-VBDfF9KAQfkGIFkuowgdlltUPJDwk'></script><div style='overflow:hidden;height:400px;width:520px;'><div id='gmap_canvas' style='height:400px;width:520px;'></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> <a href='https://www.embedmap.net/'>how to embed a google map into a website</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=3172a62e2caf563226156eb886c71e5353e1cf16'></script><script type='text/javascript'>function init_map(){var myOptions = {zoom:11,center:new google.maps.LatLng(36.8408722,-76.13120359999999),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(36.8408722,-76.13120359999999)});infowindow = new google.maps.InfoWindow({content:'<strong></strong><br>4500 Columbus Street<br> va Beach VA 23462<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</span>
</div>
</div>



</body>
</html>
