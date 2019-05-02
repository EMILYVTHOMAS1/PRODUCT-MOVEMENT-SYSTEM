<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showclientrequestdetailsadmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
    style="z-index: 1; left: 28px; top: 130px; position: absolute; height: 998px; width: 1115px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 491px; top: 48px; position: absolute" 
            Text="CLIENT REQUEST DETAILS" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 372px; top: 94px; position: absolute" 
            Text="Select Client ID"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 518px; top: 91px; position: absolute">
        </asp:DropDownList>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 5px; top: 130px; position: absolute; height: 533px; width: 1115px">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" 
                
                style="z-index: 1; left: 77px; top: 77px; position: absolute; height: 160px; width: 221px">
                <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <Fields>
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" 
                        SortExpression="ClientID" ReadOnly="True" />
                    <asp:BoundField DataField="Cname" HeaderText="Cname" 
                        SortExpression="Cname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                        SortExpression="Pincode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" />
                </Fields>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                
                SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [ctype] FROM [clientreg]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" DataKeyNames="Reqno" 
                DataSourceID="SqlDataSource2" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                
                
                style="z-index: 1; left: 318px; top: 78px; position: absolute; height: 133px; width: 357px">
                <Columns>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" 
                        SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="Clientid" 
                        HeaderText="Clientid" SortExpression="Clientid" />
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
                
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [Clientid], [ReqDate] FROM [Request]">
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

