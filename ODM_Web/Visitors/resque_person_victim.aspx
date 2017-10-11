<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="resque_person_victim.aspx.cs" Inherits="Visitors_resque_person_victim" %>

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
        document.getElementById("li12").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <div class="grid_9">
                    <h2>
                        Resque Person Victim</h2>
                    <table width="132%">
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                <asp:TextBox ID="txt_search_box" placeholder="Rescue Person Name:" runat="server"></asp:TextBox>
                                <asp:Button ID="btn_search"  runat="server"  Text="Search" CssClass="btnstyle" CausesValidation="false"
                                    OnClick="btn_search_Click" />
                                <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btnstyle" CausesValidation="false"
                                    OnClick="btn_clear_Click" />
                                  
                            </td>
                          
                        </tr>
                    </table>
                    <br />
                    <table width="100%">
                        <tr>
                            <asp:DataList runat="server" ID="ddl_place" Width="950" RepeatColumns="4" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <td>
                                        <ul id="da-thumbs" class="da-thumbs">
                                            <li><a href='<%# "resque_details.aspx?id="+Eval("int_victim_id") %>'>
                                                <img src='<%# "../upload/rescue_place_victim_page/"+Eval("str_victim_image_path") %>'
                                                    width="204" height="160" alt="">
                                                <h4>
                                                    Name :
                                                    <%# Eval("str_victim_name")%></h4>
                                            </a>
                                                <br />
                                            </li>
                                        </ul>
                                    </td>
                                </ItemTemplate>
                            </asp:DataList>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
