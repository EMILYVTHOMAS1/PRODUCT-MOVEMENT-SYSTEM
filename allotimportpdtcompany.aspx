<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="allotimportpdtcompany.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 10px; top: 166px; position: absolute; height: 703px; width: 937px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 309px; top: 45px; position: absolute" 
            Text="ALLOT IMPORT PRODUCTS TO COMPANY"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 48px; top: 118px; position: absolute" 
            Text="SELECT COMPANY ID"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 232px; top: 118px; position: absolute" 
            AutoPostBack="True">
        </asp:DropDownList>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" 
            style="z-index: 1; left: 56px; top: 167px; position: absolute; height: 67px; width: 125px; right: 756px;" 
            Width="125px" DataSourceID="SqlDataSource1" AutoGenerateRows="False" 
            DataKeyNames="cmpID">
            <Fields>
                <asp:BoundField DataField="cmpID" HeaderText="cmpID" ReadOnly="True" 
                    SortExpression="cmpID" />
                <asp:BoundField DataField="cmpname" HeaderText="cmpname" 
                    SortExpression="cmpname" />
                <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [cmpID], [cmpname], [Place], [State], [Country] FROM [companyreg]"></asp:SqlDataSource>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 394px; top: 111px; position: absolute; height: 453px; width: 523px">
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 29px; top: 27px; position: absolute" 
                Text="SELECT PRODUCT NAME"></asp:Label>
           
            <asp:DropDownList ID="DropDownList2" runat="server" 
                style="z-index: 1; left: 293px; top: 26px; position: absolute" 
                AutoPostBack="True">
            </asp:DropDownList>
           
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" 
                style="z-index: 1; left: 40px; top: 80px; position: absolute; height: 67px; width: 125px" 
                Width="125px" AutoGenerateRows="False" DataKeyNames="Pname" 
                DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="Pname" HeaderText="Pname" ReadOnly="True" 
                        SortExpression="Pname" />
                    <asp:BoundField DataField="Punit" HeaderText="Punit" SortExpression="Punit" />
                    <asp:BoundField DataField="ImpoStatus" HeaderText="ImpoStatus" 
                        SortExpression="ImpoStatus" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Pname], [Punit], [ImpoStatus], [Price], [Tax] FROM [productreg]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="z-index: 1; left: 82px; top: 279px; position: absolute; height: 30px; width: 69px" 
                Text="ALLOT" />
           
        </asp:Panel>
        
    </asp:Panel>
</asp:Content>

