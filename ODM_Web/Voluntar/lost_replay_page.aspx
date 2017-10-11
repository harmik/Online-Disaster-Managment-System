<%@ Page Title="" Language="C#" MasterPageFile="~/Voluntar/voluntar.master" AutoEventWireup="true"
    CodeFile="lost_replay_page.aspx.cs" Inherits="Voluntar_lost_replay_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Lost Reaply</h2>
            </div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
          
           <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            User Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_user_name" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Lost Person Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_name" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Date :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_date" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Time :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_time" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Where Lost :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_wherelost" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Status :
                        </td>
                        <td class="style5">
                            <asp:CheckBox ID="chk_status" runat="server" Text="Found" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Find Date :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_fdate" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_fdate"
                                Display="None" ErrorMessage="please insert find date"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator5">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Find Time :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_ftime" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_ftime"
                                Display="None" ErrorMessage="please insert find time"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator6">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Age :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_age" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender :
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rdo_gender" runat="server">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="update"
                                CssClass="btn btn-primary" />
                            <asp:Button ID="btn_cancle" runat="server" Text="Cancel" CausesValidation="False"
                                CssClass="btn btn-primary" />
                          
                            <asp:LinkButton ID="lb_rcd" runat="server" CausesValidation="False" EnableViewState="False"
                                Font-Bold="True" Font-Italic="True" Font-Names="Activa-Bold" Font-Size="Medium"
                                Font-Underline="True" ForeColor="#6600FF" OnClick="lb_rcd_Click">show record</asp:LinkButton>
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
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txt_search_box" runat="server"></asp:TextBox>
                            &nbsp;<asp:Button ID="btn_search" runat="server" Text="Search" CssClass="btn btn-primary"
                                CausesValidation="false" OnClick="btn_search_Click" />
                            &nbsp;<asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn btn-primary"
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
                                    Width="100%"  OnPageIndexChanging="gvlist_PageIndexChanging" 
                                    AllowPaging="True" PageSize="5">
                                    <Columns>
                                        <asp:BoundField DataField="str_user_name" HeaderText="User name" ReadOnly="True"
                                            SortExpression="str_user_name" />
                                        <asp:BoundField DataField="str_name" HeaderText="Lost Person Name" ReadOnly="True"
                                            SortExpression="str_name" />
                                        <asp:BoundField DataField="date_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date"
                                            ReadOnly="True" SortExpression="date_date" />
                                        <asp:BoundField DataField="str_time" HeaderText="Time" ReadOnly="True" SortExpression="str_time" />
                                        <asp:BoundField DataField="str_where_lost" HeaderText="Where Lost" ReadOnly="True"
                                            SortExpression="str_where_lost" />
                                        <asp:BoundField DataField="int_age" HeaderText="Age" ReadOnly="True" SortExpression="int_age" />
                                        <asp:BoundField DataField="str_gender" HeaderText="Gender" ReadOnly="True" SortExpression="str_gender" />
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <img src='<%# "../upload/lost_page/"+ Eval("str_img_path")  %>' height="100px" width="100px"
                                                    alt="Image not fount" style="height: 108px; width: 93px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_lost_id") %>' ID="btn_img_edit" runat="server"
                                                    Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click" Width="20px" />
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
