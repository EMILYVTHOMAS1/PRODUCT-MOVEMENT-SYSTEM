<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showdamagedproductliststaff.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        
        style="z-index: 1; left: 12px; top: 165px; position: absolute; height: 959px; width: 1031px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 370px; top: 61px; position: absolute; font-weight: 700;" 
            Text="PRODUCT DAMAGED LIST"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 302px; top: 104px; position: absolute" 
            Text="Select Product Name"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 495px; top: 101px; position: absolute">
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" 
            DataSourceID="SqlDataSource1" 
            
            style="z-index: 1; left: 54px; top: 160px; position: absolute; height: 133px; width: 568px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="DNo" HeaderText="DNo" 
                    SortExpression="DNo" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" 
                    SortExpression="Pname" />
                <asp:BoundField DataField="Dqty" HeaderText="Dqty" 
                    SortExpression="Dqty" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" 
                    SortExpression="Reason" />
                <asp:BoundField DataField="DDate" HeaderText="DDate" 
                    SortExpression="DDate" />
                <asp:BoundField DataField="StaffID" HeaderText="StaffID" 
                    SortExpression="StaffID" />
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
            
            SelectCommand="SELECT [DNo], [Pname], [Dqty], [Reason], [DDate], [StaffID] FROM [PDamage]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

