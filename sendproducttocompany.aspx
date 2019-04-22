<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="sendproducttocompany.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 7px; top: 187px; position: absolute; height: 723px; width: 1424px; margin-right: 7px;">
        <asp:Label ID="Label1" runat="server"
            style="z-index: 1; left: 350px; top: 28px; position: absolute; height: 19px; width: 547px;" 
            Text="SEND PRODUCTS TO COMPANY"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Reqno" DataSourceID="SqlDataSource2" 
             GridLines="None" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            
            style="z-index: 1; left: 22px; top: 128px; position: absolute; height: 133px; width: 303px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                    SortExpression="Reqno" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" 
                    SortExpression="Pname" />
                <asp:BoundField DataField="Qty" 
                    HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="cmpid" HeaderText="cmpid" SortExpression="cmpid" />
                <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                    SortExpression="ReqDate" />
            </Columns>
                   </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 378px; top: 99px; position: absolute; height: 501px; width: 975px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 67px; top: 36px; position: absolute; height: 20px;" 
                Text="Request No"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 169px; top: 35px; position: absolute"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                CellPadding="4" DataKeyNames="Reqno" DataSourceID="SqlDataSource2" 
                ForeColor="#333333" GridLines="None" 
                style="z-index: 1; left: 67px; top: 84px; position: absolute; height: 171px; width: 125px" 
                Width="125px">
               
                <Fields>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" 
                        SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="cmpid" HeaderText="cmpid" SortExpression="cmpid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
                </Fields>
                
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Reqno], [Pname], [Qty], [cmpid], [ReqDate] FROM [Request]">
            </asp:SqlDataSource>
            <asp:Panel ID="Panel3" runat="server" 
                
                style="z-index: 1; left: 470px; top: 98px; position: absolute; height: 290px; width: 395px">
                <asp:Label ID="Label9" runat="server" 
                    style="z-index: 1; left: 56px; top: 159px; position: absolute; height: 19px; width: 61px" 
                    Text="Details"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 175px; top: 153px; position: absolute; height: 63px; width: 200px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="z-index: 1; left: 100px; top: 233px; position: absolute; width: 84px" 
                    Text="SEND" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="z-index: 1; left: 218px; top: 231px; position: absolute; width: 77px" 
                    Text="RESET" ValidationGroup="a" />
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="z-index: 1; left: 187px; top: 117px; position: absolute">
                    <asp:ListItem>By Courier</asp:ListItem>
                    <asp:ListItem>By Shipping</asp:ListItem>
                    <asp:ListItem>By Truck</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label6" runat="server" 
                    style="z-index: 1; left: 59px; top: 15px; position: absolute" 
                    Text="Request Quantity"></asp:Label>
                <asp:Label ID="Label7" runat="server" 
                    style="z-index: 1; left: 93px; top: 56px; position: absolute; height: 18px" 
                    Text="Stock"></asp:Label>
                <asp:Label ID="Label11" runat="server" 
                    style="z-index: 1; left: 225px; top: 18px; position: absolute"></asp:Label>
                <asp:Label ID="Label12" runat="server" 
                    style="z-index: 1; left: 224px; top: 58px; position: absolute"></asp:Label>
                <asp:Label ID="Label13" runat="server" 
                    style="z-index: 1; left: 7px; top: 11px; position: absolute" Text="Label"></asp:Label>
                <asp:Label ID="Label8" runat="server" 
                    style="z-index: 1; left: 57px; top: 123px; position: absolute" Text="Send Mode"></asp:Label>
            </asp:Panel>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 523px; top: 45px; position: absolute; width: 83px" 
                Text="Status"></asp:Label>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 665px; top: 9px; position: absolute; height: 23px" 
                Text="RESPONSE"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                GroupName="a" oncheckedchanged="RadioButton1_CheckedChanged" 
                style="z-index: 1; left: 648px; top: 42px; position: absolute" Text="YES" 
                Checked="True" />
            <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                GroupName="a" oncheckedchanged="RadioButton2_CheckedChanged" 
                style="z-index: 1; left: 731px; top: 45px; position: absolute" Text="NO" />
            <asp:Panel ID="Panel4" runat="server" 
                
                style="z-index: 1; left: 874px; top: 101px; position: absolute; height: 191px; width: 313px">
                <asp:Label ID="Label10" runat="server" 
                    style="z-index: 1; left: 64px; top: 22px; position: absolute" Text="Comment"></asp:Label>
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    style="z-index: 1; left: 122px; top: 131px; position: absolute; width: 63px" 
                    Text="RESET" ValidationGroup="a" />
                <asp:TextBox ID="TextBox2" runat="server" 
                    style="z-index: 1; left: 20px; top: 60px; position: absolute; height: 53px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    style="z-index: 1; left: 32px; top: 133px; position: absolute; width: 61px" 
                    Text="SUBMIT" />
            </asp:Panel>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="cmpID" DataSourceID="SqlDataSource3" 
                style="z-index: 1; left: 245px; top: 90px; position: absolute; height: 89px; width: 125px" 
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [cmpID], [cmpname], [Address], [Place], [Pin], [Phone], [Email], [State], [Country], [Accountno], [currency], [Bname], [RegDate] FROM [companyreg]">
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

