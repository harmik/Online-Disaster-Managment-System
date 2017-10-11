<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="inquiry_page.aspx.cs" Inherits="Visitors_inquiry_page" %>

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
    document.getElementById("li1").className = "current";
</script>
    <div class="content">
        <div class="container_12">
      <%-- <h1> Well come.....<asp:Label ID="lbl_user" runat="server" Text=""></asp:Label></h1>--%>
            <div class="grid_12">
                <h2 >
                    Inquiry</h2>
                <table width="100%">
                <tr>
                    <td></td>
                </tr>
                   <%--<tr>
                    <td>
                    
                        <h2>Well Come......</h2> <h2></h2>
                       </td>
                   </tr>--%>
                    <tr>
                        <td>
                            Description :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine" 
                                Height="200px" Width="40%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_description"
                                Display="None" ErrorMessage="please insert description"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator10">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btn_add" CssClass="btnstyle" runat="server" Text="Submit" OnClick="btn_add_Click" />
                            <asp:Button ID="btn_cancle" CssClass="btnstyle" runat="server" Text="Cancle" 
                                CausesValidation="False" onclick="btn_cancle_Click" />
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
