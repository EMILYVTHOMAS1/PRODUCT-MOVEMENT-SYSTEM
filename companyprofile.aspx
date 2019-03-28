<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="companyprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 9px; top: 147px; position: absolute; height: 391px; width: 780px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 329px; top: 26px; position: absolute" Text="YOUR PROFILE"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [cmpID], [cmpname], [Address], [Place], [Pin], [Phone], [Email], [State], [Country], [Accountno], [currency], [Bname], [RegDate] FROM [companyreg]"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="cmpID" DataSourceID="SqlDataSource1" Height="50px" 
            style="z-index: 1; left: 326px; top: 79px; position: absolute; height: 67px; width: 125px" 
            Width="125px">
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
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
</asp:Content>

