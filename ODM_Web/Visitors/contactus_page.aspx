<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="contactus_page.aspx.cs" Inherits="Visitors_contactus_page" %>

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
        document.getElementById("li5").className = "current";
    </script>
    <div class="content">
        <div class="ic">
            March 24, 2014!</div>
        <div class="container_12">
            <div class="grid_12">
            <center>
             <asp:Label ID="lbl_msg" runat="server"></asp:Label>
             </center>
                <h2>
                    Find Us</h2>
                <div class="map">
                    <figure class="">

                    <div class="grid_4 alpha">
                        <h2>
                            Address:</h2>
                        <address>
                            C. K. Pithawalla College of Engineering. &amp; Technology Near Malvan Mandir, Via Magdalla Port, Dumas Road, Surat, Gujarat, India Pincode - 395007</address>
                    </div>
                    <div class="grid_4">
                        <h2>
                            Phones:</h2>
                        <div class="m_phone">
                            <div class="fa fa-print">
                            </div>
                          +919979435990<br />
                            +918866895462</div>
                    </div>
                    <div class="grid_4 omega">
                        <h2>
                            Email:</h2>
                        <a href="#">ODMS@gmail.com</a>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <h2>
                    Contact Form</h2>
                24/7 support is available for all .
                <br />
                <br />
                <div class="success_wrapper">
                   
                    <asp:TextBox ID="txt_name" runat="server" placeholder="Name:" Width="32%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_name"
                        Display="None" ErrorMessage="please insert  name"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator4">
                    </asp:ValidatorCalloutExtender>
                   
                    <asp:TextBox ID="txt_mail" runat="server" placeholder="Email:" Width="32%"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_mail"
                        Display="None" ErrorMessage="please insert email id"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_mail"
                                Display="None" ErrorMessage="please insert proper formate" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RegularExpressionValidator2">
                            </asp:ValidatorCalloutExtender>


                    <asp:TextBox ID="txt_subject" runat="server" placeholder="Subject:" Width="32%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_subject"
                        Display="None" ErrorMessage="please insert subject"></asp:RequiredFieldValidator>
                     <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
                    </asp:ValidatorCalloutExtender>

                    <br />
                    <br />
                    <asp:TextBox ID="txt_msg" runat="server" TextMode="MultiLine" placeholder="Message:"
                        Height="200px" Width="100%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_msg"
                        Display="None" ErrorMessage="please insert message"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator3">
                    </asp:ValidatorCalloutExtender>
                    <div>
                        <div class="clear">
                        </div>
                        <div class="btns">
                            <asp:Button ID="btn_submit" CssClass="btnstyle" runat="server" Text="SUBMIT" 
                                onclick="btn_submit_Click" />
                            <asp:Button ID="btn_cls" CssClass="btnstyle" runat="server" Text="CANCLE" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</div>
    </div>
</asp:Content>
