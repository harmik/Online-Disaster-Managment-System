<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="forgetpwd.aspx.cs" Inherits="Visitors_forgetpwd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <h2>
                    Forget Password</h2>
                <table width="100%">
                    <tr>
                        <td>
                            Enter E-mail Address:
                        </td>
                        <td>
                            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Please enter your email address." ControlToValidate="txt_email" 
                                Display="None"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                            </asp:ValidatorCalloutExtender>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="E-mail Address Format:abc@xyz.com" ControlToValidate="txt_email" 
                                Display="None" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RegularExpressionValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btn_sub" CssClass="btnstyle" runat="server" Text="Submit" OnClick="btn_sub_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
