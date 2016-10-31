<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <body>
        <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyC5f-VBDfF9KAQfkGIFkuowgdlltUPJDwk'></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
              rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            $(function () {
                $("#btnShow").click(function () {
                    $("#dialog").dialog({
                        modal: true,
                        title: "Google Map",
                        width: 600,
                        hright: 450,
                        buttons: {
                            Close: function () {
                                $(this).dialog('close');
                            }
                        },
                        open: function () {
                            var myOptions = {zoom: 11, center: new google.maps.LatLng(36.8408722, -76.13120359999999), mapTypeId: google.maps.MapTypeId.ROADMAP};
                            var marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(36.8408722, -76.13120359999999)});
                            var map = new google.maps.Map($("#dvMap")[0], myOptions);
                            var infowindow = new google.maps.InfoWindow({content: '<strong></strong><br>4500 Columbus Street<br> va Beach VA 23462<br>'});
                            google.maps.event.addListener(marker, 'click', function () {
                                infowindow.open(map, marker);
                            });
                            marker.setMap(map);
                            infowindow.open(map, marker);
                        }
                    });
                });
            });
        </script>
        <input id="btnShow" type="button" value="Show Maps" />
        <div id="dialog" style="display: none">
            <div id="dvMap" style="height: 380px; width: 580px;">
            </div>
        </div>
        </body>
</html>
