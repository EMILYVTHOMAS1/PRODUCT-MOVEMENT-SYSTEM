<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="Clientprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 15px; top: 146px; position: absolute; width: 780px; height: 350px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 325px; top: 22px; position: absolute" Text="YOUR PROFILE"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [ifsccode], [regdate], [ctype] FROM [clientreg]">
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ClientID" DataSourceID="SqlDataSource1" Height="50px" 
            style="z-index: 1; left: 335px; top: 65px; position: absolute; height: 67px; width: 125px" 
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
    </asp:Panel>
</asp:Content>

