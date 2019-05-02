<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showcompanyrequestdetailsadmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
    style="z-index: 1; left: 28px; top: 135px; position: absolute; height: 998px; width: 1115px; margin-top: 0px;">
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
                CellPadding="3" DataKeyNames="cmpID" DataSourceID="SqlDataSource1" 
                ForeColor="Black" GridLines="Vertical" 
                
                style="z-index: 1; left: 202px; top: 69px; position: absolute; height: 210px; width: 286px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="cmpID" HeaderText="cmpID" ReadOnly="True" 
                        SortExpression="cmpID" />
                    <asp:BoundField DataField="cmpname" HeaderText="cmpname" 
                        SortExpression="cmpname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                    <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="State" HeaderText="State" 
                        SortExpression="State" />
                    <asp:BoundField DataField="Country" HeaderText="Country" 
                        SortExpression="Country" />
                    <asp:BoundField DataField="RegDate" HeaderText="RegDate" 
                        SortExpression="RegDate" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                
                SelectCommand="SELECT [cmpID], [cmpname], [Address], [Place], [Pin], [Phone], [Email], [State], [Country], [RegDate] FROM [companyreg]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataKeyNames="Reqno" 
                DataSourceID="SqlDataSource2" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                
                style="z-index: 1; left: 509px; top: 65px; position: absolute; height: 252px; width: 489px">
                <Columns>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" 
                        SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="cmpid" HeaderText="cmpid" 
                        SortExpression="cmpid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
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
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [cmpid], [ReqDate] FROM [Request]">
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

