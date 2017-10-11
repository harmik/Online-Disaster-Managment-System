<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/Admin.master" AutoEventWireup="true"
    CodeFile="disaster_master_page.aspx.cs" Inherits="AdminPages_disaster_master_page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">

        function latlung() {

            var geocoder = new google.maps.Geocoder();
            var address = document.getElementById('<%= txt_place.ClientID %>').value;


            geocoder.geocode({ 'address': address }, function (results, status) {

                if (status == google.maps.GeocoderStatus.OK) {
                    var latitude = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();

                    document.getElementById('<%= txt_longitude.ClientID %>').value = longitude;
                    document.getElementById('<%= txt_latitude.ClientID %>').value = latitude;


                }
            });
        }
    </script>



    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2>
                    <i class="icon-edit"></i>Disaster Master</h2>
            </div>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
           
            <asp:Panel ID="pnledit" runat="server">
                <table width="100%">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td>
                            Disaster Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_disaster_master_name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_disaster_master_name"
                                Display="None" ErrorMessage="please insert disaster name"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>

                     </tr>
                               <tr>
                                    <td>
                                       Disaster Image :
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="fu_img" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fu_img"
                                            Display="None" ErrorMessage="please insert insert image"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only image is allowed."
                                            Display="None" ControlToValidate="fu_img" ValidationExpression="([^\s]+(?=\.(jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF|bmp|BMP))\.\2)"></asp:RegularExpressionValidator>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator10">
                                        </asp:ValidatorCalloutExtender>
                                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RegularExpressionValidator1">
                                        </asp:ValidatorCalloutExtender>
                                    </td>
                                </tr>



                    <tr>
                        <td>
                            Active Date :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_active_date" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_active_date"
                                Format="MM/dd/yyyy">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_active_date"
                                Display="None" ErrorMessage="please insert active date"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            End Date :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_end_date" runat="server"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_end_date"
                                Format="MM/dd/yyyy">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_end_date"
                                Display="None" ErrorMessage="please insert end date"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Status :
                        </td>
                        <td>
                            <asp:CheckBox ID="chk_active" runat="server" Text="Active" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Place :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_place" onchange="latlung()" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_place"
                                Display="None" ErrorMessage="please insert place"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator4">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Longitude :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_longitude" onchange="latlung()" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_longitude"
                                Display="None" ErrorMessage="please insert longitude"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator5">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Latitude :
                        </td>
                        <td>
                            <asp:TextBox ID="txt_latitude" onchange="latlung()" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_latitude"
                                Display="None" ErrorMessage="please insert latitude"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator6">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Disaster Type :
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_disaster_type" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl_disaster_type"
                                Display="None" ErrorMessage="please select disaster type name" InitialValue="0"></asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RequiredFieldValidator7">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btn_add" runat="server" Text="insert" CssClass="btn btn-primary"
                                OnClick="btn_add_Click1" />
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
                            <td colspan="3">
                                <asp:GridView ID="gvlist" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable"
                                    AutoGenerateColumns="False" CellPadding="3" CellSpacing="2" AllowPaging="True"
                                    OnPageIndexChanging="gvlist_PageIndexChanging" Width="100%">
                                    <Columns>
                                        <asp:TemplateField HeaderStyle-Width="25px">
                                            <HeaderTemplate>
                                             <i class="icon-edit">
                                               <%-- <asp:CheckBox ID="chkboxSelectAll" runat="server" />--%>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkselect" runat="server" />
                                            </ItemTemplate>
                                            <HeaderStyle Width="25px" />
                                        </asp:TemplateField>
                                        
                                       <asp:BoundField DataField="str_disaster_name" HeaderText="disaster name" ReadOnly="True"
                                            SortExpression="str_disaster_name" />
                                        <asp:BoundField DataField="bit_status" HeaderText="Status" ReadOnly="True" SortExpression="bit_status" />
                                        <asp:BoundField DataField="date_active_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Active Date"
                                            ReadOnly="True" SortExpression="date_active_date" />
                                        <asp:BoundField DataField="date_end_date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="End Date"
                                            ReadOnly="True" SortExpression="date_end_date" />
                                        <asp:BoundField DataField="str_place" HeaderText="Place" ReadOnly="True" SortExpression="str_place" />
                                        <%--<asp:BoundField DataField="str_longitude" HeaderText="Longitude" ReadOnly="True"
                                            SortExpression="str_longitude" />
                                        <asp:BoundField DataField="str_latitude" HeaderText="Latitude" ReadOnly="True" SortExpression="str_latitude" />
                                       --%> <asp:BoundField DataField="str_disaster_type_name" HeaderText="Disaster Type Name"
                                            ReadOnly="True" SortExpression="str_disaster_type_name" />
                                            <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <img src='<%#"../upload/disaster/"+Eval("str_img") %>' height="100px" width="100px"
                                                    alt="Image not found" />
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:ImageButton CommandArgument='<%# Eval("int_disaster_id") %>' ID="btn_img_edit"
                                                    runat="server" Height="20px" ImageUrl="~/image/edit.jpg" OnClick="btn_img_edit_Click"
                                                    Width="20px" />
                                                <asp:ImageButton ID="btn_img_delete" Height="20px" ImageUrl="~/image/delete.jpg"
                                                    OnClick="btn_img_delete_Click" Width="20px" CommandName="btn_img_delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');"
                                                    CommandArgument='<%#Eval("int_disaster_id") %>' runat="server" />
                                                <asp:HiddenField ID="Hiddenid" runat="server" Value='<%# Eval("int_disaster_id") %>' />
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
