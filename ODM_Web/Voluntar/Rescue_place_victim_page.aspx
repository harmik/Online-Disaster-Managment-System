<%@ Page Title="" Language="C#" MasterPageFile="~/Voluntar/voluntar.master" AutoEventWireup="true"
    CodeFile="Rescue_place_victim_page.aspx.cs" Inherits="Voluntar_Rescue_person_victim_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Rescue place Victim</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            Victim Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_victim_name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None"
                                ControlToValidate="txt_victim_name" ErrorMessage="please insert victim name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Victim Age :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None"
                                ControlToValidate="txt_age" ErrorMessage="please insert victim age"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender :
                        </td>
                        <td>
                            <asp:RadioButtonList ID="btn_rdo_gender" runat="server">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None"
                                ControlToValidate="txt_address" ErrorMessage="please insert address"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Victim Image :
                        </td>
                        <td>
                            <asp:FileUpload ID="fu_victim" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None"
                                ControlToValidate="fu_victim" ErrorMessage="please insert victim image"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator4">
                            </asp:ValidatorCalloutExtender>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only image is allowed."
                                Display="None" ControlToValidate="fu_victim" ValidationExpression="([^\s]+(?=\.(jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF|bmp|BMP))\.\2)"></asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RegularExpressionValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                        </td>
                        <td class="style5">
                            <asp:Button ID="btn_add" runat="server" Text="Save" OnClick="btn_add_Click" CssClass="btn btn-primary" />
                            <asp:Button ID="btn_cancle" runat="server" Text="Cancel" CausesValidation="False"
                                CssClass="btn btn-primary" />
                                  <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary" OnClick="btn_update_Click"
                                            Text="update" />
                            <br />
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
                                    CellSpacing="3" AllowPaging="True" OnPageIndexChanging="gvlist_PageIndexChanging"
                                    Width="100%" CssClass="table table-striped table-bordered bootstrap-datatable datatable">
                                    <Columns>
                                        <asp:TemplateField HeaderStyle-Width="25px">
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chkboxSelectAll" runat="server" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkselect" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="25px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="str_victim_name" HeaderText="Victim Name" ReadOnly="True"
                                            SortExpression="str_victim_name" />
                                      
                                        <asp:BoundField DataField="int_victim_age" HeaderText="Age" ReadOnly="True" SortExpression="int_victim_age" />
                                        <asp:BoundField DataField="str_gender" HeaderText="Gender" ReadOnly="True" SortExpression="str_gender" />
                                        <asp:BoundField DataField="str_address" HeaderText="Address" ReadOnly="True"
                                            SortExpression="str_address" />
                                       <%-- <asp:BoundField DataField="str_voluntar_team_name" HeaderText="Voluntar Team" ReadOnly="True"
                                            SortExpression="str_voluntar_team_name" />--%>
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <img src='<%#"../upload/rescue_place_victim_page/"+Eval("str_victim_image_path") %>' height="100px" width="100px"
                                                    alt="image not found" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_victim_id") %>' ID="btn_img_edit"
                                                    runat="server" Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click"
                                                    Width="20px" />
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
                        <tr>
                            <td>
                                <asp:Button ID="btn_rcd_add" CssClass="btn btn-primary" runat="server" OnClick="btn_rcd_add_Click"
                                    Text="Add New Record" />
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
