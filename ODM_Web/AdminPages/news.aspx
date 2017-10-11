<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true"
    CodeFile="news.aspx.cs" Inherits="AdminPages_news" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Area</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                                        News Title :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_news" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_news"
                                            Display="None" ErrorMessage="please insert news title"></asp:RequiredFieldValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Date :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_date"
                                            Display="None" ErrorMessage="please insert Date"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator4">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Short description :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_short" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_short"
                                            Display="None" ErrorMessage="please insert Short description"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator2">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Long description :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_long" runat="server" TextMode="MultiLine" Height="200" Width="400"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_long"
                                            Display="None" ErrorMessage="please insert long District"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator3">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn_add" runat="server" CssClass="btn btn-primary" OnClick="btn_add_Click1"
                                            Text="insert" />
                                        <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary" OnClick="btn_update_Click"
                                            Text="update" />
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
                            <asp:Button ID="btn_search" runat="server" CausesValidation="false" CssClass="btn btn-primary"
                                OnClick="btn_search_Click" Text="Search" />
                            <asp:Button ID="btn_clear" runat="server" CssClass="btn btn-primary" CausesValidation="false"
                                OnClick="btn_clear_Click" Text="Clear" />
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
                            <td class="center">
                                <asp:GridView ID="gvlist" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable"
                                    AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" CellSpacing="2"
                                    OnPageIndexChanging="gvlist_PageIndexChanging" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderStyle-Width="25px">
                                            <%-- <FooterTemplate>
                                                <table cellpadding="0" cellspacing="0" style="margin: 5px 0px; border: 1px solid #A0A0A0;
                                                    width: 100%; height: 100%">
                                                    <tr>
                                                        <td style="padding: 2px 4px; height: 17px; font-family: Segoe UI; font-style: normal;
                                                            font-weight: normal; font-size: 9pt; text-decoration: none; background-color: buttonface;
                                                            color: #102040; background-image: url(mvwres://Microsoft.Web.Design.Client, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a/TemplateHeaderBackground.gif);
                                                            background-repeat: repeat-x; border-bottom: 1px solid #A0A0A0;">
                                                            ItemTemplate
                                                        </td>
                                                    </tr>
                                                    <tr style="">
                                                        <td bootstrap-datatable="" class="table" datatable="" style="padding: 4px; height: 50px;
                                                            vertical-align: top;" table-bordered="" table-striped="">
                                                            <asp:CheckBox ID="chkselect" runat="server" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </FooterTemplate>--%>
                                            <HeaderTemplate>
                                             <i class="icon-edit">
                                               <%-- <asp:CheckBox ID="chkboxSelectAll" runat="server" />--%>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkselect" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="25px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="str_news_title" HeaderText="Title" ReadOnly="True" SortExpression="str_news_title" />
                                        <asp:BoundField DataField="str_short_desc" HeaderText="Short Description" ReadOnly="True"
                                            SortExpression="str_short_desc" />
                                        <asp:BoundField DataField="str_long_desc" HeaderText="Long Description" ReadOnly="True"
                                            SortExpression="str_long_desc" />
                                            <asp:BoundField DataField="date_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="End Date"
                                            ReadOnly="True" SortExpression="date_date" />

                                        <asp:TemplateField HeaderText="Action">
                                            <EditItemTemplate>
                                                Recored not found
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btn_img_edit" runat="server" CommandArgument='<%# Eval("int_news_id") %>'
                                                    Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click" Width="20px" />
                                                <asp:ImageButton ID="btn_img_delete" runat="server" CommandArgument='<%#Eval("int_news_id") %>'
                                                    CommandName="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg" OnClick="btn_img_delete_Click"
                                                    OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    Width="20px" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_news_id") %>' />
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        NO Data
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%-- add button --%>
                                <asp:Button ID="btn_rcd_add" runat="server" OnClick="btn_rcd_add_Click" Text="Add New Record"
                                    CssClass="btn btn-primary" />
                            </td>
                        </tr>
                    </table>
                    <!--/span-->
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
