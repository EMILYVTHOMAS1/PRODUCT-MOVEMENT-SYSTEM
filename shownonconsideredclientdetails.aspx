<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="shownonconsideredclientdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 2px; top: 155px; position: absolute; height: 580px; width: 776px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 363px; top: 34px; position: absolute; font-weight: 700;" 
            Text="NON COSIDERED CLIENTS DETAILS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" 
            
            style="z-index: 1; left: 16px; top: 105px; position: absolute; height: 133px; width: 943px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" 
                    SortExpression="ClientID" />
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
                <asp:BoundField DataField="accountno" HeaderText="accountno" 
                    SortExpression="accountno" />
                <asp:BoundField DataField="bankname" HeaderText="bankname" 
                    SortExpression="bankname" />
                <asp:BoundField DataField="regdate" HeaderText="regdate" 
                    SortExpression="regdate" />
                <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            
            SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [regdate], [ctype] FROM [clientreg]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

