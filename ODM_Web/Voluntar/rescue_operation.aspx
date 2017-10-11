<%@ Page Title="" Language="C#" MasterPageFile="~/Voluntar/voluntar.master" AutoEventWireup="true"
    CodeFile="rescue_operation.aspx.cs" Inherits="Voluntar_rescue_operation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
           <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Rescue Operation</h2>
            </div>
                <table width="100%">
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddl_pagesize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_pagesize_SelectedIndexChanged"
                                Width="50px">
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txt_search_box" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="btn btn-primary"
                                CausesValidation="false" OnClick="btn_search_Click" />
                            <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn btn-primary"
                                CausesValidation="false" OnClick="btn_clear_Click" />
                        </td>
                    </tr>
                </table>
                <div class="box-content">
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" CellPadding="3"
                                    CssClass="table table-striped table-bordered bootstrap-datatable datatable" CellSpacing="2"
                                    Width="100%" OnPageIndexChanging="gvlist_PageIndexChanging" AllowPaging="True"
                                    PageSize="5">
                                    <Columns>
                                        <asp:BoundField DataField="str_voluntar_team_name" HeaderText="voluntar team name"
                                            ReadOnly="True" SortExpression="str_voluntar_team_name" />
                                        <asp:BoundField DataField="str_rescue_place" HeaderText="rescue place" ReadOnly="True"
                                            SortExpression="str_rescue_place" />
                                        <asp:BoundField DataField="date_rescue_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="rescue Date"
                                            ReadOnly="True" SortExpression="date_rescue_date" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
   
</asp:Content>
