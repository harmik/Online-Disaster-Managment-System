<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="disaster_details.aspx.cs" Inherits="Visitors_disaster_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .btnstyle
        {
            margin-top: 25px;
            color: #fff;
            font-size: 12px;
            line-height: 20px;
            display: inline-block;
            padding: 4px 17px 5px;
            background-color: #60bf93;
        }
        
        .btnstyle:hover
        {
            background-color: #E14F42;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        document.getElementById("li6").className = "current";
    </script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
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
    <asp:HiddenField runat="server" ID="hid_lang" />
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <asp:DataList runat="server" ID="dv_list" Width="100%">
                    <ItemTemplate>
                        <h2>
                            Disaster Details
                        </h2>
                        <table width="100%">
                            <tr>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="sidebar">
                                        <div class="sidebar_top">
                                            <img src='<%# "../upload/disaster/"+Eval("str_img") %>' height="300px" width="400px"
                                                alt="" />
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="content_data">
                                        <p class="para">
                                            Name :
                                            <%# Eval("str_disaster_name")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Active Date :
                                            <%# Eval("date_active_date", "{0:dd/MM/yyyy}")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            End Date :
                                            <%# Eval("date_end_date", "{0:dd/MM/yyyy}")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Place :
                                            <%# Eval("str_place")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Latitude :
                                            <%# Eval("str_longitude")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            longitude :
                                            <%# Eval("str_latitude")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Status :
                                            <%# Eval("bit_status")%>
                                        </p>
                                    </div>

                                </td>
                            </tr>
                        
                        </table>
                        <table width="100%">
                       
                            <tr>
                                <td>
                                     
                                </td>
                                <td>
                                   <div id="map" style="width: 400px;  height: 250px">
                                    </div>
                                   
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
  
</asp:Content>
