<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="lostimg.aspx.cs" Inherits="Visitors_lostimg" %>

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
                <div class="grid_9">
                    <h2>
                        Search Lost Person
                    </h2>
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:TextBox ID="txt_name" placeholder="Name:" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txt_wlost" placeholder="Where Lost:" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txt_age" placeholder="age:" runat="server"></asp:TextBox>
                               

                            </td>
                        </tr>
                        <tr>
                        <td>
                        <br />
                            <asp:CheckBox ID="Chk1" runat="server" Text="All Required" />
                        </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btn_name" CssClass="btnstyle" runat="server" Text="Search" OnClick="btn_name_Click" />
                                <asp:Button ID="btn_clr" CssClass="btnstyle" runat="server" Text="Clear" 
                                    onclick="btn_clr_Click" />
                            </td>
                        </tr>
                    </table>
                    <h2>
                        Lost Person</h2>
                    <asp:DataList runat="server" ID="ddl_place" Width="950" RepeatColumns="4" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <ul id="da-thumbs" class="da-thumbs">
                                <li><a href='<%# "lost_details.aspx?id="+Eval("int_lost_id") %>'>
                                    <img src='<%# "../upload/lost_page/"+Eval("str_img_path") %>' width="204" height="160"
                                        alt="">
                                    <h4>
                                        Name :
                                        <%# Eval("str_name")%></h4>
                                </a>
                                    <br />
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
