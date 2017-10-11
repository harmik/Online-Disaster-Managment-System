<%@ Page Title="" Language="C#" MasterPageFile="~/Voluntar/voluntar.master" AutoEventWireup="true"
    CodeFile="Voluntar_page.aspx.cs" Inherits="Voluntar_Voluntar_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Voluntar</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
          <asp:Panel ID="pnledit" runat="server">
            <asp:Button ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click"
                CausesValidation="False" />
          <table width="100%">
                <tr>
                    <td>
                        Voluntar Team Name :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_voluntar_team" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_voluntar_name"
                            ErrorMessage="please select voluntar team name" InitialValue="0" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Voluntar Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_voluntar_name" runat="server" Height="22px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_voluntar_name"
                            ErrorMessage="please insert voluntar name" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Address :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_address"
                            ErrorMessage="please insert address" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_contact"
                            ErrorMessage="please insert contact" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator4">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_contact"
                            Display="None" ErrorMessage="please insert contect no in proper formate" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RegularExpressionValidator2">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email Id :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_email"
                            ErrorMessage="please insert email id" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator5">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                            Display="None" ErrorMessage="please insert email id proper formate" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RegularExpressionValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_password"
                            ErrorMessage="please insert password" Display="None"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator6">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirm Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txt_con_pass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="None"
                            ControlToValidate="txt_con_pass" ErrorMessage="please insert confirm password"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RequiredFieldValidator7">
                        </asp:ValidatorCalloutExtender>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="None" ControlToCompare="txt_password"
                            ControlToValidate="txt_con_pass" ErrorMessage="password not match"></asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" TargetControlID="CompareValidator1">
                        </asp:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
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
                                        <asp:BoundField DataField="str_voluntar_team_name" HeaderText="Team Name" ReadOnly="True"
                                            SortExpression="str_voluntar_team_name" />
                                      
                                        <asp:BoundField DataField="str_voluntar_name" HeaderText="Voluntar Name" ReadOnly="True" SortExpression="str_voluntar_name" />
                                          <asp:BoundField DataField="str_address" HeaderText="Address" ReadOnly="True"
                                            SortExpression="str_address" />
                                             <asp:BoundField DataField="int_contact" HeaderText="Contect No." ReadOnly="True"
                                            SortExpression="int_contact" />
                                            
                                        <asp:BoundField DataField="str_email" HeaderText="Email" ReadOnly="True" SortExpression="str_email" />
                                      
                                       <%-- <asp:BoundField DataField="str_voluntar_team_name" HeaderText="Voluntar Team" ReadOnly="True"
                                            SortExpression="str_voluntar_team_name" />--%>
                                       
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_voluntar_id") %>' ID="btn_img_edit"
                                                    runat="server" Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click"
                                                    Width="20px" />
                                                <asp:ImageButton ID="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg"
                                                    OnClick="btn_img_delete_Click" Width="20px" CommandName="btn_img_delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    CommandArgument='<%#Eval("int_voluntar_id") %>' runat="server" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_voluntar_id") %>' />
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
