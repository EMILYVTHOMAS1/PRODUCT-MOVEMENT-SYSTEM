<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="clientapproval2.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
    
        style="z-index: 1; left: -2px; top: 113px; position: absolute; height: 462px; width: 1004px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 336px; top: 26px; position: absolute" 
        Text="Client Approval"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ClientID" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="z-index: 1; left: 25px; top: 100px; position: absolute; height: 133px; width: 187px">
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
            style="z-index: 1; left: 399px; top: 62px; position: absolute; height: 384px; width: 553px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 23px; top: 27px; position: absolute" Text="Client ID"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 169px; top: 32px; position: absolute" Text="Label"></asp:Label>
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
            <asp:TextBox ID="TextBox1" runat="server" 
                style="z-index: 1; left: 331px; top: 141px; position: absolute; height: 94px" 
                TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 207px; top: 149px; position: absolute; width: 65px" 
                Text="Comment"></asp:Label>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="x" 
                style="z-index: 1; left: 392px; top: 84px; position: absolute" Text="No" />
            <asp:Button ID="Button1" runat="server" 
                style="z-index: 1; left: 210px; top: 338px; position: absolute" 
                Text="Download proof" />
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                style="z-index: 1; left: 300px; top: 277px; position: absolute" Text="Reset" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                style="z-index: 1; left: 209px; top: 276px; position: absolute" Text="Submit" />
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 205px; top: 86px; position: absolute" 
                Text="Approval Status"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="x" 
                style="z-index: 1; left: 328px; top: 86px; position: absolute; width: 52px" 
                Text="yes" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>

