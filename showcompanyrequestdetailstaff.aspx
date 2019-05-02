<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="showcompanyrequestdetailstaff.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 8px; top: 137px; position: absolute; height: 998px; width: 1115px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 490px; top: 44px; position: absolute; font-weight: 700;" 
            Text="COMPANY REQUEST DETAILS"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 372px; top: 94px; position: absolute" 
            Text="Select Company ID"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 518px; top: 91px; position: absolute">
        </asp:DropDownList>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 5px; top: 130px; position: absolute; height: 533px; width: 1115px">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="cmpid" DataSourceID="SqlDataSource1" 
                ForeColor="Black" GridLines="Vertical" Height="50px" 
                style="z-index: 1; left: 83px; top: 77px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="cmpid" HeaderText="Company id" ReadOnly="True" 
                        SortExpression="cmpid" />
                    <asp:BoundField DataField="cmpname" HeaderText="Company Name" 
                        SortExpression="cmpname" />
                    <asp:BoundField DataField="addr" HeaderText="Address" SortExpression="addr" />
                    <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                    <asp:BoundField DataField="pin" HeaderText="Pin" SortExpression="pin" />
                    <asp:BoundField DataField="ph" HeaderText="ph" SortExpression="ph" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="country" HeaderText="Country" 
                        SortExpression="country" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdbConnectionString %>" 
                SelectCommand="SELECT [cmpid], [cmpname], [addr], [place], [pin], [ph], [state], [country] FROM [companyregistration]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataKeyNames="reqno" 
                DataSourceID="SqlDataSource2" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                style="z-index: 1; left: 286px; top: 61px; position: absolute; height: 133px; width: 187px">
                <Columns>
                    <asp:BoundField DataField="reqno" HeaderText="Request Number" ReadOnly="True" 
                        SortExpression="reqno" />
                    <asp:BoundField DataField="pname" HeaderText="Product  Name" 
                        SortExpression="pname" />
                    <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                    <asp:BoundField DataField="reqdate" HeaderText="Request Date" 
                        SortExpression="reqdate" DataFormatString="{0:d}" />
                    <asp:CommandField ButtonType="Button" HeaderText="More" SelectText="View" 
                        ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdbConnectionString %>" 
                SelectCommand="SELECT [reqno], [pname], [qty], [reqdate] FROM [requestimportexport]">
            </asp:SqlDataSource>
            <asp:Panel ID="Panel3" runat="server" 
                
                style="z-index: 1; left: 677px; top: 16px; position: absolute; height: 486px; width: 546px">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="reqno" DataSourceID="SqlDataSource3" Height="50px" 
                    style="z-index: 1; left: 99px; top: 33px; position: absolute; height: 67px; width: 125px" 
                    Width="125px">
                    <Fields>
                        <asp:BoundField DataField="reqno" HeaderText="reqno" ReadOnly="True" 
                            SortExpression="reqno" />
                        <asp:BoundField DataField="respstatus" HeaderText="respstatus" 
                            SortExpression="respstatus" />
                        <asp:BoundField DataField="respdate" HeaderText="respdate" 
                            SortExpression="respdate" />
                        <asp:BoundField DataField="comment" HeaderText="comment" 
                            SortExpression="comment" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:productdbConnectionString %>" 
                    SelectCommand="SELECT [reqno], [respstatus], [respdate], [comment] FROM [response]">
                </asp:SqlDataSource>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

