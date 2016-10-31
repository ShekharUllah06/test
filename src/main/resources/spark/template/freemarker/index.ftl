<!DOCTYPE html>
<html>
<head>
  <#include "header.ftl">
</head>

<body>

<div class="jumbotron text-center">
  <div class="container">
    <a href="/" class="lang-logo">
      <img src="/lang-logo.png">
    </a>
    <h1>Geofence Demo</h1><br/>
<%
out.println("Your IP address is " + request.getRemoteAddr());
%>
  </div>
</div>



</body>
</html>
