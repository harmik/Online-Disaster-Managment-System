<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="lost_page.aspx.cs" Inherits="Visitors_lost_page" %>

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
        document.getElementById("li2").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <table width="100%">
                
                    <tr>
                    <asp:Panel ID="pnledit" runat="server">
                        <td>
                            <h2>
                                Lost Info.</h2>
                            <table width="100%">
                                <tr>
                                    <td>
                                        User Name :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_uname" runat="server" ReadOnly="True"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Lost Person Name :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name"
                                            Display="None" ErrorMessage="please insert lost person name"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Date :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_date" Format="MM/dd/yyyy">
                                        </asp:CalendarExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_date"
                                            Display="None" ErrorMessage="please insert date"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Time :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_time" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_time"
                                            Display="None" ErrorMessage="please insert time"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Where Lost :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_wherelost" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_wherelost"
                                            Display="None" ErrorMessage="please insert person where lost"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator4">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Age :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_age"
                                            Display="None" ErrorMessage="please insert age"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator7">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       Lost Person Image :
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="fu_img" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fu_img"
                                            Display="None" ErrorMessage="please insert insert image"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only image is allowed."
                                            Display="None" ControlToValidate="fu_img" ValidationExpression="([^\s]+(?=\.(jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF|bmp|BMP))\.\2)"></asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator10">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RegularExpressionValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Gender :
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rdo_gender" runat="server">
                                            <asp:ListItem Value="M">Male</asp:ListItem>
                                            <asp:ListItem Value="F">Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn_add" CssClass="btnstyle" runat="server" Text="Submit" OnClick="btn_add_Click" />
                                        <asp:Button ID="btn_cancle" CssClass="btnstyle" runat="server" Text="Cancle" CausesValidation="False" OnClick="btn_cancle_Click"/>
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
                        </td>
                        </asp:Panel>
              
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
