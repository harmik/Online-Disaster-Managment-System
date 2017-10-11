<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true"
    CodeFile="rescue_operation.aspx.cs" Inherits="Visitors_rescue_operation" %>

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
                    Rescue Operation</h2>

                     <table width="100%">
                    <tr>
                        <td>
                           
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txt_search_box" placeholder="Place Name:" runat="server"></asp:TextBox>
                          <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="btnstyle"
                                CausesValidation="false" OnClick="btn_search_Click" />
                            <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btnstyle"
                                CausesValidation="false" OnClick="btn_clear_Click" />
                        </td>
                    </tr>
                </table>

                <table width="100%"><tr>
                <div class="form_settings" style="width: 100%; height: 100%; overflow: auto;">
               
                    <asp:DataList ID="dv_list" runat="server"  RepeatDirection="Vertical" RepeatColumns="3">
                     
                        <ItemTemplate>
                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <p>
                            <br />
                                <b><span>Voluntar team name :</span></b>
                                <%# Eval("str_voluntar_team_name")%>
                            </p>
                            <p>
                                <b><span>Rscue place :</span></b>
                                <%# Eval("str_rescue_place")%>
                            </p>
                            <p>
                                <b><span>Rescue Date :</span></b>
                                <%# Eval("date_rescue_date","{0:dd-MM-yyyy}")%>
                            </p>
                            <p>
                          
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
