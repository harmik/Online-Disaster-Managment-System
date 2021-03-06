﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true"
    CodeFile="district_page.aspx.cs" Inherits="AdminPages_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>District</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                                        State :
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddl_state" runat="server">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddl_state"
                                            Display="None" ErrorMessage="please select district" InitialValue="0"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        District :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_district_name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_district_name"
                                            Display="None" ErrorMessage="please insert District name"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn_add" runat="server" CssClass="btn btn-primary" Text="insert"
                                            OnClick="btn_add_Click1" />
                                        <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary" Text="update"
                                            OnClick="btn_update_Click" />
                                        <asp:LinkButton ID="lb_rcd" runat="server" CausesValidation="False" EnableViewState="False"
                                            Font-Bold="True" Font-Italic="True" Font-Names="Activa-Bold" Font-Size="Medium"
                                            Font-Underline="True" ForeColor="#6600FF" OnClick="lb_rcd_Click">show record</asp:LinkButton>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
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
                            <td colspan="3" class="center">
                                <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" CellPadding="3"
                                    CellSpacing="2" CssClass="table table-striped table-bordered bootstrap-datatable datatable"
                                    AllowPaging="True" OnPageIndexChanging="gvlist_PageIndexChanging"
                                    Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderStyle-Width="25px">
                                            <HeaderTemplate>
                                             <i class="icon-edit">
                                              <%--  <asp:CheckBox ID="chkboxSelectAll" runat="server" />--%>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkselect" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="25px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="str_state_name" HeaderText="State Name" ReadOnly="True"
                                            SortExpression="str_state_name" />
                                        <asp:BoundField DataField="str_district_name" HeaderText="District Name" ReadOnly="True"
                                            SortExpression="str_district_name" />
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_district_id") %>' ID="btn_img_edit"
                                                    runat="server" Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click"
                                                    Width="20px" />
                                                <asp:ImageButton ID="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg"
                                                    OnClick="btn_img_delete_Click" Width="20px" CommandName="btn_img_delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    CommandArgument='<%#Eval("int_district_id") %>' runat="server" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_district_id") %>' />
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
                        <tr>
                            <td>
                                <asp:Button ID="btn_rcd_add" runat="server" OnClick="btn_rcd_add_Click" Text="Add New Record"
                                    CssClass="btn btn-primary" />
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
