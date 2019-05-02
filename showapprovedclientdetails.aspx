<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showapprovedclientdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
    style="z-index: 1; left: 4px; top: 140px; position: absolute; height: 740px; width: 776px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 343px; top: 38px; position: absolute" 
            Text="APPROVED CLIENT DETAILS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ClientID" DataSourceID="SqlDataSource1"       
            style="z-index: 1; left: 3px; top: 96px; position: absolute; height: 237px; width: 1248px" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            
            SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [regdate], [ctype] FROM [clientreg]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

