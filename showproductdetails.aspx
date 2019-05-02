<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="showproductdetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 16px; top: 219px; position: absolute; height: 251px; width: 753px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 384px; top: 34px; position: absolute" 
            Text="PRODUCT DETAILS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Pname" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" 
            style="z-index: 1; left: 202px; top: 66px; position: absolute; height: 141px; width: 463px; right: 88px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Pname" HeaderText="Pname" ReadOnly="True" 
                    SortExpression="Pname" />
                <asp:BoundField DataField="Punit" HeaderText="Punit" SortExpression="Punit" />
                <asp:BoundField DataField="ImpoStatus" HeaderText="ImpoStatus" 
                    SortExpression="ImpoStatus" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [Pname], [Punit], [ImpoStatus], [Price], [Tax] FROM [productreg]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

