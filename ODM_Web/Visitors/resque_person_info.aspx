<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="resque_person_info.aspx.cs" Inherits="Visitors_resque_person_info" %>

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
        document.getElementById("li13").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <h2>
                    Rescue person information</h2>
                <table width="100%">
                    <tr>
                        <td>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txt_search_box" placeholder="Lost person Name:" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server"  Text="Search" CssClass="btnstyle" CausesValidation="false"
                                OnClick="btn_search_Click" />
                            <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btnstyle" CausesValidation="false"
                                OnClick="btn_clear_Click" />
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <div class="form_settings" style="width: 100%; height: 100%; overflow: auto;">
                            <asp:DataList ID="dv_list" runat="server" RepeatDirection="Vertical" RepeatColumns="2">
                                <ItemTemplate>
                                    <td>
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    </td>
                                    <td>
                                    <p> <br />
                                            <img src='<%#"../upload/lost_page/"+Eval("str_img_path") %>' height="100px" width="100px"
                                                alt="image not found" />
                                        </p>
                                        <p>
                                           
                                            <b><span>Lost person name :</span></b>
                                            <%# Eval("str_name")%>
                                        </p>
                                        <p>
                                            <b><span>Address :</span></b>
                                            <%# Eval("str_address")%>
                                        </p>
                                        <p>
                                            <b><span>Contact no. :</span></b>
                                            <%# Eval("int_contact")%>
                                        </p>
                                        <p>
                                            <b><span>Description :</span></b>
                                            <%# Eval("str_description")%>
                                        </p>
                                        <p>
                                            <b><span>Voluntar team name :</span></b>
                                            <%# Eval("str_voluntar_team_name")%>
                                        </p>
                                        
                                        <div style="border-top: 1px solid rgba(128, 125, 125, 1);" />
                                    </td>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </tr>
                </table>
            </div>
        </div>
    </div>

  
</asp:Content>
