<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true"
    CodeFile="location.aspx.cs" Inherits="AdminPages_location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 
 
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script type ="text/javascript">
    var map; var infowindow;var lat;var lang;    
    function InitializeMap() {
        var latlng = new google.maps.LatLng(40.756, -73.986);


        var myOptions =
        {
            zoom: 8,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("map"), myOptions);
    }

    
    function markicons() {

        InitializeMap();

        var ltlng = [];

    //    ltlng.push(new google.maps.LatLng(lat, lang));
      ltlng.push(new google.maps.LatLng(13.5, 79.2));
        ltlng.push(new google.maps.LatLng(15.24, 77.16));

        map.setCenter(ltlng[0]);
        for (var i = 0; i <= ltlng.length; i++) {
            marker = new google.maps.Marker({
                map: map,
                position: ltlng[i]
            });

            (function (i, marker) {

                google.maps.event.addListener(marker, 'click', function () {

                    if (!infowindow) {
                        infowindow = new google.maps.InfoWindow();
                    }

                    infowindow.setContent("Message" + i);

                    infowindow.open(map, marker);

                });

            })(i, marker);

        }

    }

    window.onload = markicons; 

</script>
 
 
  <%--<asp:HiddenField runat="server" ID="hid_lat" />
    <asp:HiddenField runat="server" ID="hid_lang" />--%>
 
 
 
   <%-- <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">


        function InitializeMap() {


            var lat = document.getElementById('<%= hid_lat.ClientID %>').value;
            var lang = document.getElementById('<%= hid_lang.ClientID %>').value;



            var latlng = new google.maps.LatLng(lat, lang);
            var myOptions = {
                zoom: 10,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };



            map = new google.maps.Map(document.getElementById("map"), myOptions);
            var marker = new google.maps.Marker
            (
                {
                    position: new google.maps.LatLng(lat, lang),
                    map: map,
                    title: 'Click me'
                }
            );
            var infowindow = new google.maps.InfoWindow({
                content: 'Location info:<br/>Country Name:<br/>'
            });
            google.maps.event.addListener(marker, 'click', function () {
                // Calling the open method of the infoWindow 
                infowindow.open(map, marker);
            });
        }


    </script>
    <asp:HiddenField runat="server" ID="hid_lat" />
    <asp:HiddenField runat="server" ID="hid_lang" />--%>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Location</h2>
            </div>
            <table width="100%">
                <tr>
                    <td>
                        <div id="map" style="width: 800px; height: 450px">
                        </div>
                        
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
