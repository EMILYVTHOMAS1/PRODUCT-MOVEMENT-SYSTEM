<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="showapprovedcompanydetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
    style="z-index: 1; left: 9px; top: 122px; position: absolute; height: 582px; width: 776px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 364px; top: 53px; position: absolute" 
            Text="APPROVED COMPANY DETAILS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="cmpID" DataSourceID="SqlDataSource1" 
            
            
            style="z-index: 1; left: 4px; top: 141px; position: absolute; height: 138px; width: 1191px" 
     >
            <Columns>
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
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                    SortExpression="Accountno" />
                <asp:BoundField DataField="currency" HeaderText="currency" 
                    SortExpression="currency" />
                <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                <asp:BoundField DataField="RegDate" HeaderText="RegDate" 
                    SortExpression="RegDate" />
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
            
            SelectCommand="SELECT [cmpID], [cmpname], [Address], [Place], [Pin], [Phone], [Email], [State], [Country], [Accountno], [currency], [Bname], [RegDate] FROM [companyreg]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

