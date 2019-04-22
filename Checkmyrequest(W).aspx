<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="Checkmyrequest(W).aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 11px; top: 204px; position: absolute; height: 467px; width: 1452px">
        <asp:GridView ID="GridView1" runat="server" 
    
            style="z-index: 1; left: 9px; top: 47px; position: absolute; height: 133px; width: 411px" 
            DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="Reqno" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                    SortExpression="Reqno" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                    SortExpression="ReqDate" />
                <asp:CommandField HeaderText="More" SelectText="Click" 
                    ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [Reqno], [Pname], [Qty], [ReqDate] FROM [Request]">
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 361px; top: 10px; position: absolute" 
            Text="CHECK MY REQUEST (w)"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 452px; top: 48px; position: absolute; height: 289px; width: 739px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 32px; top: 31px; position: absolute" Text="REQUEST NO"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 196px; top: 29px; position: absolute" Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="Reqno" DataSourceID="SqlDataSource2" 
                style="z-index: 1; left: 33px; top: 63px; position: absolute; height: 207px; width: 196px">
                <Fields>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
                    <asp:BoundField DataField="Clientid" HeaderText="Clientid" 
                        SortExpression="Clientid" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [ReqDate], [Clientid] FROM [Request]">
            </asp:SqlDataSource>
            <asp:Panel ID="Panel3" runat="server" 
                style="z-index: 1; left: 240px; top: 63px; position: absolute; height: 200px; width: 364px">
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 147px; top: 16px; position: absolute" Text="RESPONSE"></asp:Label>
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 25px; top: 64px; position: absolute" Text="SEND MODE"></asp:Label>
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 166px; top: 63px; position: absolute" Text="Label"></asp:Label>
                <asp:Label ID="Label7" runat="server" 
                    style="z-index: 1; left: 25px; top: 89px; position: absolute; height: 22px; width: 85px" 
                    Text="SEND DATE"></asp:Label>
                <asp:Label ID="Label8" runat="server" 
                    style="z-index: 1; left: 168px; top: 87px; position: absolute" Text="Label"></asp:Label>
                <asp:Label ID="Label9" runat="server" 
                    style="z-index: 1; left: 28px; top: 119px; position: absolute; height: 14px; width: 82px" 
                    Text="COMMENT"></asp:Label>
                <asp:Label ID="Label10" runat="server" 
                    style="z-index: 1; left: 167px; top: 114px; position: absolute" Text="Label"></asp:Label>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

