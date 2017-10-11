<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true" CodeFile="resque_details.aspx.cs" Inherits="Visitors_resque_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    document.getElementById("li12").className = "current";
    </script>
 <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <asp:DataList runat="server" ID="dv_list" Width="50%">
                    <ItemTemplate>
                        <h2>
                            Resque Person Victim Details
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
                                           <img src='<%# "../upload/rescue_place_victim_page/"+Eval("str_victim_image_path") %>' width="204" height="160"
                                        alt="">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="content_data">
                                        <p class="para">
                                            Name : 
                                            <%# Eval("str_victim_name")%>
                                        </p>
                                    </div>
                              
                                    <div class="content_data">
                                        <p class="para">
                                            Age : 
                                            <%# Eval("int_victim_age")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Gender : 
                                            <%# Eval("str_gender")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Address : 
                                            <%# Eval("str_address")%>
                                        </p>
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

