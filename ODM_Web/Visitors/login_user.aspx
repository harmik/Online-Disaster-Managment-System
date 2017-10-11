<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="login_user.aspx.cs" Inherits="Visitors_login_user" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
        document.getElementById("li4").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <h2>
                   User Login</h2>
                <table width="100%">
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                <td>
                    User name :
                </td>
                <td>
                    <asp:TextBox ID="txt_user_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_user_name"
                        Display="None" ErrorMessage="please insert user name"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator4">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    password :
                </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_password"
                        Display="None" ErrorMessage="please insert password"></asp:RequiredFieldValidator>
                   <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                  <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000066" NavigateUrl="forgetpwd.aspx">Forget Password</asp:HyperLink><br />
                    <asp:Button ID="btn_login" CssClass="btnstyle" runat="server" Text="Login" OnClick="btn_add_Click1" />
                 
                </td>
               
            </tr>
        </table>
            </div>
        </div>
    </div>
</asp:Content>
