<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="Sendproductsfromclient(I).aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 11px; top: 158px; position: absolute; height: 401px; width: 796px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 292px; top: 25px; position: absolute" 
            Text="SEND PRODUCT FROM CLIENT(I)"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Reqno" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="z-index: 1; left: 24px; top: 80px; position: absolute; height: 133px; width: 187px">
            <Columns>
                <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                    SortExpression="Reqno" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                    SortExpression="ReqDate" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [Reqno], [Pname], [ReqDate] FROM [Request]">
        </asp:SqlDataSource>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 297px; top: 74px; position: absolute; height: 281px; width: 476px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 27px; top: 22px; position: absolute" Text="REQUEST NO"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 218px; top: 24px; position: absolute; width: 101px"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="Reqno" DataSourceID="SqlDataSource2" Height="50px" 
                style="z-index: 1; left: 28px; top: 73px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
                <Fields>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="Clientid" HeaderText="Clientid" 
                        SortExpression="Clientid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
                    <asp:BoundField DataField="Reqmode" HeaderText="Reqmode" 
                        SortExpression="Reqmode" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [Clientid], [ReqDate], [Reqmode] FROM [Request]">
            </asp:SqlDataSource>
            <asp:Panel ID="Panel3" runat="server" 
                style="z-index: 1; left: 195px; top: 76px; position: absolute; height: 182px; width: 268px">
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 28px; top: 37px; position: absolute" Text="Send Mode"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    style="z-index: 1; left: 134px; top: 38px; position: absolute">
                    <asp:ListItem>SHIPPING</asp:ListItem>
                    <asp:ListItem>BUS SERVICE</asp:ListItem>
                    <asp:ListItem>AIR SERVICE</asp:ListItem>
                    <asp:ListItem>COURIER</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="z-index: 1; left: 34px; top: 104px; position: absolute" Text="SUBMIT" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="z-index: 1; left: 121px; top: 104px; position: absolute" Text="RESET" />
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 32px; top: 68px; position: absolute" Text="Details"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 133px; top: 65px; position: absolute" 
                    TextMode="MultiLine"></asp:TextBox>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

