<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true" CodeFile="news_details.aspx.cs" Inherits="Visitors_news_details" %>

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
<div class="content">
        <div class="container_12">
            <div class="grid_12">
                <asp:DataList runat="server" ID="dv_list" Width="50%">
                    <ItemTemplate>
                       
                        <table width="100%">
                            <tr>
                                <td>
                                </td>
                            </tr>
                            <tr>
                               
                                <td>
                                    <div class="content_data">
                                        <p class="para">
                                        <h2>
                                            <%# Eval("str_news_title")%>
                                        </h2>
                                        </p>
                                    </div>
                                    <div class="content_data">
                                        <p class="para">
                                            
                                            <%# Eval("str_long_desc")%>
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

