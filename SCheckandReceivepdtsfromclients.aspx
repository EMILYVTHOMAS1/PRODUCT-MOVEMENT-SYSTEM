<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="SCheckandReceivepdtsfromclients.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
    
        
        style="z-index: 1; left: 150px; top: 190px; position: absolute; height: 462px; width: 1340px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 222px; top: 25px; position: absolute; width: 472px;" 
        Text="CHECK AND RECEIVE PRODUCTS FROM INDUSTRIALISTS"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Reqno" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            
            
            
            style="z-index: 1; left: 7px; top: 89px; position: absolute; width: 345px; height: 151px;">
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
            
            
            style="z-index: 1; left: 368px; top: 89px; position: absolute; height: 384px; width: 520px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 15px; top: 49px; position: absolute" 
                Text="Request No"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 138px; top: 48px; position: absolute" 
                Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="Reqno" DataSourceID="SqlDataSource2" 
                
                style="z-index: 1; left: 13px; top: 107px; position: absolute; height: 190px; width: 154px">
                <Fields>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" 
                        SortExpression="Qty" />
                    <asp:BoundField DataField="Clientid" HeaderText="Clientid" 
                        SortExpression="Clientid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [Clientid], [ReqDate] FROM [Request]">
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="ClientID" DataSourceID="SqlDataSource3" 
                
                style="z-index: 1; left: 211px; top: 108px; position: absolute; height: 232px; width: 211px">
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [ifsccode], [regdate], [ctype] FROM [clientreg]">
            </asp:SqlDataSource>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="x" 
                style="z-index: 1; left: 500px; top: 43px; position: absolute" Text="No" 
                oncheckedchanged="RadioButton2_CheckedChanged" AutoPostBack="True" />
            <asp:Panel ID="Panel3" runat="server" 
                
                style="z-index: 1; left: 533px; top: 87px; position: absolute; height: 211px; width: 215px">
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 8px; top: 33px; position: absolute; height: 19px; width: 55px;" 
                    Text="Amount"></asp:Label>
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 91px; top: 33px; position: absolute; width: 89px" 
                    Text="500"></asp:Label>
                <asp:Label ID="Label7" runat="server" 
                    style="z-index: 1; left: 11px; top: 76px; position: absolute" Text="Comment"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 76px; top: 73px; position: absolute" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="z-index: 1; left: 10px; top: 128px; position: absolute" Text="Submit" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="z-index: 1; left: 118px; top: 128px; position: absolute; height: 26px;" 
                    Text="Reset" />
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" 
                
                style="z-index: 1; left: 804px; top: 103px; position: absolute; height: 196px; width: 198px">
                <asp:Label ID="Label8" runat="server" 
                    style="z-index: 1; left: 101px; top: 36px; position: absolute; height: 19px; width: 55px;" 
                    Text="Reason"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="z-index: 1; left: 41px; top: 72px; position: absolute" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" 
                    style="z-index: 1; left: 10px; top: 128px; position: absolute" 
                    Text="Submit" onclick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" 
                    style="z-index: 1; left: 118px; top: 128px; position: absolute" 
                    Text="Reset" onclick="Button4_Click" />
            </asp:Panel>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 270px; top: 51px; position: absolute" 
                Text="Checking Status"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="x" 
                style="z-index: 1; left: 394px; top: 43px; position: absolute; width: 78px" 
                Text="yes" oncheckedchanged="RadioButton1_CheckedChanged" 
                AutoPostBack="True" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>

