<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true" CodeFile="lost_person_details.aspx.cs" Inherits="AdminPages_lost_person_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Lost details</h2>
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
                                            <FooterTemplate>
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
                                            </FooterTemplate>
                                            <HeaderTemplate>
                                             <i class="icon-edit">
                                               <%-- <asp:CheckBox ID="chkboxSelectAll" runat="server" />--%>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkselect" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="25px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="str_user_name" HeaderText="User Name" ReadOnly="True"
                                            SortExpression="str_user_name" />
                                        <asp:BoundField DataField="str_name" HeaderText="Lost Person Name" ReadOnly="True" SortExpression="str_name" />
                                        <asp:BoundField DataField="date_date" HeaderText="Lost Date" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}"
                                            SortExpression="date_date" />

                                         <asp:BoundField DataField="str_time" HeaderText="Lost Time" ReadOnly="True"
                                            SortExpression="str_time" />
                                             <asp:BoundField DataField="str_where_lost" HeaderText="Lost Place" ReadOnly="True"
                                            SortExpression="str_where_lost" />
                                             <asp:BoundField DataField="bit_status" HeaderText="Status" ReadOnly="True"
                                            SortExpression="bit_status" />
                                             <asp:BoundField DataField="date_find_date" HeaderText="Find Date" ReadOnly="True" DataFormatString="{0:dd/MM/yyyy}"
                                            SortExpression="date_find_date" />
                                           <asp:BoundField DataField="str_find_time" HeaderText="Find Time" ReadOnly="True"
                                            SortExpression="str_find_time" />
                                           <%-- <asp:BoundField DataField="int_age" HeaderText="Age" ReadOnly="True"
                                            SortExpression="int_age" />--%>
                                            <asp:BoundField DataField="str_gender" HeaderText="Gender" ReadOnly="True"
                                            SortExpression="str_gender" />
                                            <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <img src='<%#"../upload/lost_page/"+Eval("str_img_path") %>' height="50px" width="50px"
                                                    alt="Image not found" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                             
   
                                        <asp:TemplateField HeaderText="Action">
                                            <EditItemTemplate>
                                                Recored not found
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                   <asp:ImageButton ID="btn_img_delete" runat="server" CommandArgument='<%#Eval("int_lost_id") %>'
                                                    CommandName="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg" OnClick="btn_img_delete_Click"
                                                    OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    Width="20px" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_lost_id") %>' />
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
                       
                    </table>
                    <!--/span-->
                </div>
            </asp:Panel>
        </div>
    </div>

</asp:Content>

