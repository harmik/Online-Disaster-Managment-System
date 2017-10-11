<%@ Page Title="" Language="C#" MasterPageFile="~/Voluntar/voluntar.master" AutoEventWireup="true"
    CodeFile="inquiry_reply_page.aspx.cs" Inherits="Voluntar_inquiry_reply_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Inquiry Reply</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
           
          
            <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                           user name :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_User_name" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                          Description :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
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
                          Ans Voluntar Name :
                        </td>
                        <td>
                          <%--  <asp:TextBox ID="txt_voluntar_name" runat="server"></asp:TextBox>--%>
                            <asp:DropDownList ID="ddl_voluntar" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl_voluntar"
                                Display="None" ErrorMessage="please select voluntar" InitialValue="0"></asp:RequiredFieldValidator> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                          Ans Discription :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_ans_description" runat="server" TextMode="MultiLine"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please insert Description."
                                Display="None" ControlToValidate="txt_ans_description"></asp:RequiredFieldValidator>

                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                          Ans Date :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_ans_date" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ErrorMessage="Please insert the date."
                                Display="None" ControlToValidate="txt_ans_date"></asp:RequiredFieldValidator>
                         
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Ans Time :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_ans_time" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please insert the time."
                                Display="None" ControlToValidate="txt_ans_time"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                           <asp:Button ID="btn_update" runat="server" Text="update" CssClass="btn btn-primary"
                                OnClick="btn_update_Click" />
                           
                            <asp:LinkButton ID="lb_rcd" runat="server" CausesValidation="False" EnableViewState="False"
                                Font-Bold="True" Font-Italic="True" Font-Names="Activa-Bold" Font-Size="Medium"
                                Font-Underline="True" ForeColor="#6600FF" OnClick="lb_rcd_Click">show record</asp:LinkButton>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="pnllist" runat="server">
             <table width="100%">
                    <tr>
                        <td>
               <asp:DropDownList ID="ddl_pagesize" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="ddl_pagesize_SelectedIndexChanged" Width="50px">
                    <asp:ListItem>10</asp:ListItem>
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
                                <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="3" CssClass="table table-striped table-bordered bootstrap-datatable datatable"
                                    CellSpacing="2" Width="100%" 
                                    OnPageIndexChanging="gvlist_PageIndexChanging" AllowPaging="True" PageSize="5">
                                    <Columns>
                                        <asp:BoundField DataField="str_user_name" HeaderText="User name" ReadOnly="True"
                                            SortExpression="str_user_name" />
                                        <asp:BoundField DataField="str_description" HeaderText="Description" ReadOnly="True"
                                            SortExpression="str_description" />
                                        <asp:BoundField DataField="date_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Active Date"
                                            ReadOnly="True" SortExpression="date_date" />
                                        <asp:BoundField DataField="str_time" HeaderText="Time" ReadOnly="True" SortExpression="str_time" />
                                         <asp:BoundField DataField="str_voluntar_name" HeaderText="Ans Volintar Name" ReadOnly="True" SortExpression="str_voluntar_name" />
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_inquiry_id") %>' ID="btn_img_edit"
                                                    runat="server" Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click"
                                                    Width="20px" />
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
