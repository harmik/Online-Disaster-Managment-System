<%@ Page Title="" Language="C#" MasterPageFile="~/Voluntar/voluntar.master" AutoEventWireup="true"
    CodeFile="member_page.aspx.cs" Inherits="Voluntar_member_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Member</h2>
            </div>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    &nbsp;
    <table width="100%">
        <tr>
            <td>
                Disaster Name :
            </td>
            <td>
                <asp:DropDownList ID="ddl_disaster_master" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddl_disaster_master" 
                    ErrorMessage="please select disaster type" InitialValue="0" Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator4">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                Member Name :
            </td>
            <td>
                <asp:TextBox ID="txt_member_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="None"
                    ControlToValidate="txt_member_name" ErrorMessage="please insert member name"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator5">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                Designation Name :
            </td>
            <td>
                <asp:DropDownList ID="ddl_designation_name" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ddl_designation_name" 
                    ErrorMessage="please select designation name" InitialValue="0" Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator6">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                Current Working :
            </td>
            <td>
                <asp:TextBox ID="txt_currentworking" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txt_currentworking" 
                    ErrorMessage="please insert current working " Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator7">
                </asp:ValidatorCalloutExtender>
            </td>
            </tr>
            <tr>
                <td>
                    Address :
                </td>
                <td>
                    <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txt_address" ErrorMessage="please insert address" Display="None"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator8">
                    </asp:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                    <td>
                        Contact No :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txt_contact" ErrorMessage="please insert contact no." Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator9">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txt_contact" Display="None"
                            ErrorMessage="please insert contect no in proper formate" 
                            ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RegularExpressionValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email Id :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txt_email" ErrorMessage="please insert email id" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator10">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txt_email" ErrorMessage="inasert email id in proper formate" Display="None"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RegularExpressionValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="None"
                            ControlToValidate="txt_password" ErrorMessage="please insert password"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" TargetControlID="RequiredFieldValidator11">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirm Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_conpass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txt_conpass" ErrorMessage="please insert confirm password" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender11" runat="server" TargetControlID="RequiredFieldValidator12">
                        </asp:ValidatorCalloutExtender>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="None"
                            ErrorMessage="password not match" ControlToCompare="txt_password" 
                            ControlToValidate="txt_conpass"></asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender12" runat="server" TargetControlID="CompareValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btn_add" runat="server" Text="Save" Height="26px" 
                            onclick="btn_add_Click" CssClass="btn btn-primary"/>
                         &nbsp;
                <asp:Button ID="btn_cancle" runat="server" Text="Cancel" 
                    CausesValidation="False" CssClass="btn btn-primary" onclick="btn_cancle_Click"/>
                        <br />
                    </td>
                </tr>
    </table>
      </div>
    </div>
</asp:Content>
