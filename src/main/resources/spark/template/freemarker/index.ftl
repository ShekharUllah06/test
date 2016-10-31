<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Example of Auto Loading Bootstrap Modal on Page Load</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
</head>
<body>
<div class="jumbotron text-center">
  <div class="container">
    <a href="/" class="lang-logo">
      <img src="/lang-logo.png">
    </a>
    <h1>Geofence Demo</h1>
  </div>
</div>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Offer</h4>
            </div>
            <div class="modal-body">
                <p><h2>We will beat Any offer by Beach Ford</h2></p>
                <form>
                    
                    <button type="submit" class="btn btn-primary">OK</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>  