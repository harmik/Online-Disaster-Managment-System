﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true"
    CodeFile="disaster_type_page.aspx.cs" Inherits="disaster_type_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Disaster Type</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            &nbsp;
            <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                                        Disaster Type Name :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_disaster_type_name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_disaster_type_name"
                                            Display="None" ErrorMessage="please insert Disaster Type name"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn_add" runat="server" CssClass="btn btn-primary" Text="insert"
                                            OnClick="btn_add_Click1" />
                                        &nbsp;&nbsp;<asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary"
                                            Text="update" OnClick="btn_update_Click" />
                                        &nbsp;&nbsp;
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
                            <asp:Button ID="btn_search" runat="server" CssClass="btn btn-primary" Text="Search"
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
                                <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" CellPadding="3"
                                    CellSpacing="2" CssClass="table table-striped table-bordered bootstrap-datatable datatable"
                                    AllowPaging="True" OnPageIndexChanging="gvlist_PageIndexChanging"
                                    Width="100%">
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
                                        <asp:BoundField DataField="str_disaster_type_name" HeaderText="Disaster Type Name"
                                            ReadOnly="True" SortExpression="str_disaster_type_name" />
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_disaster_type_id") %>' ID="btn_img_edit"
                                                    runat="server" Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click"
                                                    Width="20px" />
                                                <asp:ImageButton ID="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg"
                                                    OnClick="btn_img_delete_Click" Width="20px" CommandName="btn_img_delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    CommandArgument='<%#Eval("int_disaster_type_id") %>' runat="server" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_disaster_type_id") %>' />
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
                                <asp:Button ID="btn_rcd_add" runat="server" CssClass="btn btn-primary" OnClick="btn_rcd_add_Click"
                                    Text="Add New Record" />
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
