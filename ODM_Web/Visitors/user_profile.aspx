<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="user_profile.aspx.cs" Inherits="Visitors_user_profile" %>

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
        document.getElementById("li7").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <br />
                <center>
                    <b>
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Microsoft New Tai Lue"
                            Font-Size="15pt" ForeColor="#60bf93"></asp:Label>
                    </b>
                </center>
                <table width="100%">
                    <tr>
                        <td>
                            <asp:LinkButton ID="lb_rcd" runat="server" CausesValidation="False" EnableViewState="False"
                                Font-Bold="False" Font-Italic="False" Font-Names="Activa-Bold" Font-Size="Medium"
                                Font-Underline="False" OnClick="lb_rcd_Click">Change Password</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <h2>
                    User Profile</h2>
                <asp:Panel ID="pnl_view_user_details" runat="server">
                    <table width="100%">
                        <tr>
                            <td>
                                Name :
                            </td>
                            <td>
                                <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address :
                            </td>
                            <td>
                                <asp:Label ID="lbladd" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contact No. :
                            </td>
                            <td>
                                <asp:Label ID="lblcont" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email :
                            </td>
                            <td>
                                <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btn_edit_profile" CssClass="btnstyle" runat="server" Text="Edit Profile"
                                    OnClick="btn_edit_profile_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnl_edit_user" runat="server">
                    <table width="100%">
                        <tr>
                            <td>
                                Name :
                            </td>
                            <td>
                                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address :
                            </td>
                            <td>
                                <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contact No. :
                            </td>
                            <td>
                                <asp:TextBox ID="txt_con" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email :
                            </td>
                            <td>
                                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btn_update" CssClass="btnstyle" runat="server" Text="Save Changes"
                                    OnClick="btn_update_Click" />
                            </td>
                            <td>
                                <asp:LinkButton ID="l_back" runat="server" CausesValidation="False" EnableViewState="False"
                                    Font-Bold="False" Font-Italic="False" Font-Names="Activa-Bold" Font-Size="Medium"
                                    Font-Underline="False" OnClick="l_back_Click">Back</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnl_changepwd" runat="server">
                    <table width="100%" border="2">
                        <tr>
                            <td>
                                Old Password :
                            </td>
                            <td>
                                <asp:TextBox ID="old_pass" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please insert old password"
                                    ControlToValidate="old_pass" Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                New Password :
                            </td>
                            <td>
                                <asp:TextBox ID="new_pass" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please insert new password"
                                    ControlToValidate="new_pass" Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator2">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Conform Password :
                            </td>
                            <td>
                                <asp:TextBox ID="con_pass" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please insert conform password"
                                    ControlToValidate="con_pass" Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator3">
                                </asp:ValidatorCalloutExtender>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not match"
                                    ControlToCompare="new_pass" ControlToValidate="con_pass" Display="None"></asp:CompareValidator>
                                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="CompareValidator1">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btn_save" CssClass="btnstyle" runat="server" Text="change" OnClick="btn_save_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
