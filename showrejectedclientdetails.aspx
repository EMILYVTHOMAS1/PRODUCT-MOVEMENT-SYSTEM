<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showrejectedclientdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 12px; top: 150px; position: absolute; height: 599px; width: 776px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 361px; top: 27px; position: absolute; font-weight: 700;" 
            Text="REJECTED CLIENT DETAILS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" 
            
            
            style="z-index: 1; left: 23px; top: 89px; position: absolute; height: 133px; width: 187px">
            <AlternatingRowStyle BackColor="White" />
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
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            
            SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [regdate], [ctype] FROM [clientreg]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

