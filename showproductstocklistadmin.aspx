<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showproductstocklistadmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 11px; top: 135px; position: absolute; height: 659px; width: 776px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 328px; top: 52px; position: absolute; font-weight: 700;" 
            Text="PRODUCT STOCK LIST"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" 
            
            style="z-index: 1; left: 43px; top: 126px; position: absolute; height: 133px; width: 389px">
            <Columns>
                <asp:BoundField DataField="Pname" HeaderText="Pname" 
                    SortExpression="Pname" />
                <asp:BoundField DataField="Cstock" HeaderText="Cstock" 
                    SortExpression="Cstock" />
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
            SelectCommand="SELECT * FROM [Pstock]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

