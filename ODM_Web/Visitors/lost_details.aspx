<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="lost_details.aspx.cs" Inherits="Visitors_lost_details" %>

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
    document.getElementById("li10").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <asp:DataList runat="server" ID="dv_list" Width="50%">
                    <ItemTemplate>
                        <h2>
                            Lost Person Details
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
                                            <img src='<%# "../upload/lost_page/"+Eval("str_img_path") %>' height="200px" width="200px"
                                                alt="" />
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="content_data">
                                        <p class="para">
                                            Name : 
                                            <%# Eval("str_name")%>
                                        </p>
                                       
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Date :  
                                            <%# Eval("date_date","{0:dd/MM/yyyy}")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Time : 
                                            <%# Eval("str_time")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            Age : 
                                            <%# Eval("int_age")%>
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
                                            Where Lost : 
                                            <%# Eval("str_where_lost")%>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            found : 
                                            <%# Eval("bit_status")%>
                                        </p>
                                    </div>
                                     <div class="content_data">
                                        <p class="para">
                                            Find Date : 
                                             <%# Eval("date_find_date", "{0:dd/MM/yyyy}")%>
                                        </p>
                                    </div>
                                     <div class="content_data">
                                        <p class="para">
                                            Find Time : 
                                            <%# Eval("str_find_time")%>
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
