<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="industrialistproductallotment.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
    
        
        style="z-index: 1; left: -2px; top: 113px; position: absolute; height: 494px; width: 1004px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 336px; top: 26px; position: absolute" 
        Text="ALLOT PRODUCTS TO  INDUSTRIALISTS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ClientID" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 25px; top: 100px; position: absolute; height: 133px; width: 361px">
            <Columns>
                <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" 
                    SortExpression="ClientID" />
                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:CommandField ButtonType="Button" HeaderText="Click" SelectText="More" 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [ClientID], [Cname], [Place], [State] FROM [clientreg]">
        </asp:SqlDataSource>
        <asp:Panel ID="Panel2" runat="server" 
            
            style="z-index: 1; left: 399px; top: 62px; position: absolute; height: 424px; width: 613px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 61px; top: 38px; position: absolute" 
                Text="Client ID"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                
                style="z-index: 1; left: 169px; top: 41px; position: absolute; width: 45px;" 
                Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="ClientID" DataSourceID="SqlDataSource2" Height="50px" 
                style="z-index: 1; left: 32px; top: 82px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
                <Fields>
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" 
                        SortExpression="ClientID" />
                    <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
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
                    <asp:BoundField DataField="ifsccode" HeaderText="ifsccode" 
                        SortExpression="ifsccode" />
                    <asp:BoundField DataField="regdate" HeaderText="regdate" 
                        SortExpression="regdate" />
                    <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [ifsccode], [regdate], [ctype] FROM [clientreg]">
            </asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                style="z-index: 1; left: 259px; top: 379px; position: absolute; bottom: 19px;" 
                Text="RESET" />
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="Pname" DataSourceID="SqlDataSource3" Height="50px" 
                style="z-index: 1; left: 342px; top: 95px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Pname], [Punit], [ImpoStatus], [Price], [Tax] FROM [productreg]">
            </asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                style="z-index: 1; left: 432px; top: 40px; position: absolute">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="z-index: 1; left: 185px; top: 380px; position: absolute" Text="ALLOT" />
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 300px; top: 42px; position: absolute" 
                Text="Select Products"></asp:Label>
            <asp:Panel ID="Panel3" runat="server" 
                style="z-index: 1; left: 348px; top: 198px; position: absolute; height: 210px; width: 237px">
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 116px; top: 5px; position: absolute" 
                    Text="ALLOTED PRODUCTS"></asp:Label>
                <asp:ListBox ID="ListBox1" runat="server" 
                    style="z-index: 1; left: 78px; top: 51px; position: absolute; height: 144px">
                </asp:ListBox>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

