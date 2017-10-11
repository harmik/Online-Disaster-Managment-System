<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="inquiry_ans.aspx.cs" Inherits="Visitors_inquiry_ans" %>

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
        document.getElementById("li8").className = "current";
    </script>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <h2>
                    Inquiry Reply</h2>
                <table width="100%">
                    <tr>
                        <td>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txt_search_box" placeholder="User Name:" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="btnstyle" CausesValidation="false"
                                OnClick="btn_search_Click" />
                            <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btnstyle" CausesValidation="false"
                                OnClick="btn_clear_Click" />
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <div class="form_settings" style="width: 100%; height: 100%; overflow: auto;">
                            <asp:DataList ID="dv_list" runat="server" RepeatDirection="Vertical" RepeatColumns="1">
                                <ItemTemplate>
                                    <td>
                                   
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <p>
                                            <br />
                                            <b><span>User name :</span></b>
                                            <%# Eval("str_user_name")%>
                                        </p>
                                        <p>
                                            <b><span>Description :</span></b>
                                            <%# Eval("str_description")%>
                                        </p>
                                        <p>
                                            <b><span>Active Date :</span></b>
                                            <%# Eval("date_date", "{0:dd-MM-yyyy}")%>
                                        </p>
                                        <p>
                                            <b><span>Time :</span></b>
                                            <%# Eval("str_time")%>
                                        </p>
                                       
                                          <p>
                                            <b><span>Ans voluntar name :</span></b>
                                            <%# Eval("str_voluntar_name")%>
                                        </p>
                                         <p>
                                            <b><span>And description :</span></b>
                                            <%# Eval("str_ans_description")%>
                                        </p> 
                                        
                                        <p>
                                            <b><span>Ans date :</span></b>
                                            <%# Eval("date_ans_date", "{0:dd-MM-yyyy}")%>
                                        </p>
                                         <p>
                                            <b><span>Ans time :</span></b>
                                            <%# Eval("str_ans_time")%>
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
