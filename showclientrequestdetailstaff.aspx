<%@ Page Title="" Language="C#" MasterPageFile="~/staff.master" AutoEventWireup="true" CodeFile="showclientrequestdetailstaff.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 27px; top: 164px; position: absolute; height: 998px; width: 1115px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 347px; top: 39px; position: absolute" 
            Text="CLIENT REQUEST DETAILS" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 372px; top: 94px; position: absolute" 
            Text="Select Client ID"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 518px; top: 91px; position: absolute; height: 22px;">
        </asp:DropDownList>
        <asp:Panel ID="Panel2" runat="server" 
            
            style="z-index: 1; left: 39px; top: 129px; position: absolute; height: 533px; width: 1115px">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" 
                ForeColor="Black" GridLines="Vertical" Height="50px" 
                style="z-index: 1; left: 83px; top: 77px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" 
                        SortExpression="ClientID" ReadOnly="True" />
                    <asp:BoundField DataField="Cname" HeaderText="Cname" 
                        SortExpression="Cname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                        SortExpression="Pincode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" />
                    <asp:BoundField DataField="regdate" HeaderText="regdate" 
                        SortExpression="regdate" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                
                SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [ctype], [regdate] FROM [clientreg]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="Reqno" 
                DataSourceID="SqlDataSource2" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                
                
                style="z-index: 1; left: 277px; top: 61px; position: absolute; height: 133px; width: 187px">
                <Columns>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" 
                        SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="Clientid" 
                        HeaderText="Clientid" SortExpression="Clientid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
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
            <asp:Panel ID="Panel3" runat="server" 
                
                style="z-index: 1; left: 654px; top: 24px; position: absolute; height: 486px; width: 546px">
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="reqno" DataSourceID="SqlDataSource3" Height="50px" 
                    style="z-index: 1; left: 99px; top: 33px; position: absolute; height: 67px; width: 125px" 
                    Width="125px">
                    <Fields>
                        <asp:BoundField DataField="reqno" HeaderText="reqno" ReadOnly="True" 
                            SortExpression="reqno" />
                        <asp:BoundField DataField="respstatus" HeaderText="respstatus" 
                            SortExpression="respstatus" />
                        <asp:BoundField DataField="respdate" HeaderText="respdate" 
                            SortExpression="respdate" />
                        <asp:BoundField DataField="comment" HeaderText="comment" 
                            SortExpression="comment" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:productdbConnectionString %>" 
                    SelectCommand="SELECT [reqno], [respstatus], [respdate], [comment] FROM [response]">
                </asp:SqlDataSource>
            </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [Clientid], [ReqDate] FROM [Request]">
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

