<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                getLocation();
                //$("#myModal").modal('show');
            });
        </script>
    </head>
    <body>
        <div class="jumbotron text-center">
            <div class="container">
                
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
       
        <p id="demo"></p>

        <script>
            var x = document.getElementById("demo");
            var distance;
            function getLocation() {
                if (navigator.geolocation) {
                    return navigator.geolocation.getCurrentPosition(showPosition, showError);
                    //alert(distance);
                } else {
                    x.innerHTML = "Geolocation is not supported by this browser.";
                }
            }

            function showPosition(position) {
                //set your shop Latitude
                var shopLatitude=28.04024;
                //set your shop Longitude
                var shopLongitude=-81.95454;
                
                distance = getDistanceFromLatLonInKm(shopLatitude, shopLongitude, position.coords.latitude, position.coords.longitude);
                //x.innerHTML = "Latitude: " + position.coords.latitude +
                //"<br>Longitude: " + position.coords.longitude + "<br>Distance: " + distance;
                if (distance <= 5) {
                    $("#myModal").modal('show');
                } else
                {
                    alert('Your distance is ' + distance + " KM");
                }

            }

            function showError(error) {
                switch (error.code) {
                    case error.PERMISSION_DENIED:
                        x.innerHTML = "User denied the request for Geolocation."
                        break;
                    case error.POSITION_UNAVAILABLE:
                        x.innerHTML = "Location information is unavailable."
                        break;
                    case error.TIMEOUT:
                        x.innerHTML = "The request to get user location timed out."
                        break;
                    case error.UNKNOWN_ERROR:
                        x.innerHTML = "An unknown error occurred."
                        break;
                }
            }

            function getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2) {
                var R = 6371; // Radius of the earth in km
                var dLat = deg2rad(lat2 - lat1);  // deg2rad below
                var dLon = deg2rad(lon2 - lon1);
                var a =
                        Math.sin(dLat / 2) * Math.sin(dLat / 2) +
                        Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
                        Math.sin(dLon / 2) * Math.sin(dLon / 2)
                        ;
                var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
                var d = R * c; // Distance in km
                return d;
            }

            function deg2rad(deg) {
                return deg * (Math.PI / 180)
            }

        </script>

    </body>
</html>
