<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="SendProductstowholesaler.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 14px; top: 192px; position: absolute; height: 594px; width: 1459px">
        <asp:GridView ID="GridView1" runat="server" 
    
            style="z-index: 1; left: 7px; top: 51px; position: absolute; height: 133px; width: 432px" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="False" 
            DataKeyNames="Reqno" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                    SortExpression="Reqno" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Clientid" HeaderText="Clientid" 
                    SortExpression="Clientid" />
                <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                    SortExpression="ReqDate" />
                <asp:CommandField HeaderText="More" SelectText="Click" 
                    ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [Reqno], [Pname], [Clientid], [ReqDate] FROM [Request]"></asp:SqlDataSource>
        <asp:Panel ID="Panel2" runat="server" 
            
            style="z-index: 1; left: 452px; top: 54px; position: absolute; height: 404px; width: 1100px">
            <asp:Label ID="Label1" runat="server" 
                style="z-index: 1; left: 62px; top: 28px; position: absolute; width: 126px;" 
                Text="Request No"></asp:Label>
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 213px; top: 27px; position: absolute; height: 16px; width: 147px"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" 
                style="z-index: 1; left: 18px; top: 68px; position: absolute; height: 214px; width: 125px" 
                Width="125px" AutoGenerateRows="False" DataKeyNames="Reqno" 
                DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Horizontal" >
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="Clientid" HeaderText="Clientid" 
                        SortExpression="Clientid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [Clientid], [ReqDate] FROM [Request]">
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="ClientID" DataSourceID="SqlDataSource3" 
                
                style="z-index: 1; left: 199px; top: 62px; position: absolute; height: 198px; width: 215px" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3">
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
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
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [ifsccode], [regdate], [ctype] FROM [clientreg]">
            </asp:SqlDataSource>
            <asp:Panel ID="Panel3" runat="server" 
                style="z-index: 1; left: 469px; top: 83px; position: absolute; height: 237px; width: 400px">
                <asp:Label ID="Label4" runat="server" 
                    style="z-index: 1; left: 25px; top: 30px; position: absolute" Text="CSTOCK"></asp:Label>
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 141px; top: 30px; position: absolute" Text="Label"></asp:Label>
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 24px; top: 66px; position: absolute" 
                    Text="REQUEST QTY"></asp:Label>
                <asp:Label ID="Label7" runat="server" 
                    style="z-index: 1; left: 143px; top: 65px; position: absolute; height: 18px; width: 93px" 
                    Text="Label"></asp:Label>
                <asp:Label ID="Label8" runat="server" 
                    style="z-index: 1; left: 25px; top: 100px; position: absolute" Text="DETAILS"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 145px; top: 109px; position: absolute" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    
                    style="z-index: 1; left: 58px; top: 172px; position: absolute; width: 71px;" 
                    Text="SEND" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="z-index: 1; left: 168px; top: 172px; position: absolute" Text="RESET" />
                <asp:Label ID="Label10" runat="server" 
                    style="z-index: 1; left: 211px; top: 32px; position: absolute; height: 20px;" 
                    Text="send mode"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    style="z-index: 1; left: 294px; top: 30px; position: absolute" 
              >
                    <asp:ListItem>BUS</asp:ListItem>
                    <asp:ListItem>SHIPPING</asp:ListItem>
                    <asp:ListItem>AIR MODE</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label12" runat="server" 
                    style="z-index: 1; left: 0px; top: 0px; position: absolute" Text="Label"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" 
                style="z-index: 1; left: 818px; top: 88px; position: absolute; height: 219px; width: 359px">
                <asp:Label ID="Label9" runat="server" 
                    style="z-index: 1; left: 21px; top: 21px; position: absolute" Text="comment"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="z-index: 1; left: 119px; top: 27px; position: absolute; width: 221px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" 
                    style="z-index: 1; left: 18px; top: 107px; position: absolute" 
                    Text="SUBMIT" onclick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    style="z-index: 1; left: 120px; top: 109px; position: absolute; height: 24px" 
                    Text="RESET" />
            </asp:Panel>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 469px; top: 36px; position: absolute; width: 58px" 
                Text="Response"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                Checked="True" 
                style="z-index: 1; left: 549px; top: 40px; position: absolute; width: 70px" 
                Text="YES" GroupName="x" oncheckedchanged="RadioButton1_CheckedChanged" 
                 />
            <asp:RadioButton ID="RadioButton2" runat="server" 
                style="z-index: 1; left: 650px; top: 38px; position: absolute; width: 82px; height: 23px" 
                Text="NO" GroupName="x" AutoPostBack="True" 
                oncheckedchanged="RadioButton2_CheckedChanged" />
        </asp:Panel>
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; left: 297px; top: 5px; position: absolute; width: 383px" 
            Text="SEND PRODUCTS TO WHOLESALER"></asp:Label>
    </asp:Panel>
</asp:Content>

