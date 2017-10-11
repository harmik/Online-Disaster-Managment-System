<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true" CodeFile="rescue_place_victim.aspx.cs" Inherits="AdminPages_rescue_place_victim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Rescue Place Victim</h2>
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
                                        <asp:BoundField DataField="str_victim_name" HeaderText="victim Name" ReadOnly="True"
                                            SortExpression="str_victim_name" />
                                        <asp:BoundField DataField="int_victim_age" HeaderText="Victim Age" ReadOnly="True" SortExpression="int_victim_age" />
                                        <asp:BoundField DataField="str_gender" HeaderText="Gender"
                                            ReadOnly="True" SortExpression="str_gender" />
                                        <asp:BoundField DataField="str_address" HeaderText="Address"
                                            ReadOnly="True" SortExpression="str_address" />
                                           
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <img src='<%#"../upload/rescue_place_victim_page/"+Eval("str_victim_image_path") %>' height="50px" width="50px"
                                                    alt="image not found" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                
                                                <asp:ImageButton ID="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg"
                                                    OnClick="btn_img_delete_Click" Width="20px" CommandName="btn_img_delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    CommandArgument='<%#Eval("int_victim_id") %>' runat="server" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_victim_id") %>' />
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

