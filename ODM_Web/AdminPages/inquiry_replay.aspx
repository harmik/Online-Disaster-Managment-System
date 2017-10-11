<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true" CodeFile="inquiry_replay.aspx.cs" Inherits="AdminPages_inquiry_replay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Inquiry Details</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
           
            <asp:Panel ID="pnllist" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddl_pagesize" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_pagesize_SelectedIndexChanged"
                                Width="50px">
                                
                                
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
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
                    <tr>
                        <td>
                            <asp:Button ID="btn_select_delete" runat="server" Text="Delete selected record" CssClass="btn btn-primary"
                                OnClick="btn_select_delete_Click" />
                        </td>
                    </tr>
                </table>
                <div class="box-content">
                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="gvlist" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable"
                                    AutoGenerateColumns="False" CellPadding="3" CellSpacing="2" AllowPaging="True"
                                    OnPageIndexChanging="gvlist_PageIndexChanging" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderStyle-Width="25px">
                                            <HeaderTemplate>
                                             <i class="icon-edit">
                                                <%--<asp:CheckBox ID="chkboxSelectAll" runat="server" />--%>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkselect" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="25px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="str_user_name" HeaderText="user name"
                                            ReadOnly="True" SortExpression="str_user_name" />
                                       
                                        <asp:BoundField DataField="str_description" HeaderText="description" ReadOnly="True"
                                            SortExpression="str_description" />
                                        
                                        <asp:BoundField DataField="date_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date"
                                            ReadOnly="True" SortExpression="date_date" />
                                        <asp:BoundField DataField="str_time" HeaderText="Time"
                                            ReadOnly="True" SortExpression="str_time" />
                                         <asp:BoundField DataField="str_voluntar_name" HeaderText="voluntar name"
                                            ReadOnly="True" SortExpression="str_voluntar_name" />
                                          

                                        <asp:BoundField DataField="str_ans_description" HeaderText="Ans Description" ReadOnly="True" SortExpression="str_ans_description" />
                                         <asp:BoundField DataField="date_ans_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ans Date"
                                            ReadOnly="True" SortExpression="date_ans_date" />
                                        <asp:BoundField DataField="str_ans_time" HeaderText="Ans Time"
                                            ReadOnly="True" SortExpression="str_ans_time" />
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                
                                                <asp:ImageButton ID="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg"
                                                    OnClick="btn_img_delete_Click" Width="20px" CommandName="btn_img_delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    CommandArgument='<%#Eval("int_inquiry_id") %>' runat="server" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_inquiry_id") %>' />
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                       
                                        No Data
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </td>
                        </tr>
                        
                    </table>
                </div>
            </asp:Panel>
        </div>
    </div>

</asp:Content>

