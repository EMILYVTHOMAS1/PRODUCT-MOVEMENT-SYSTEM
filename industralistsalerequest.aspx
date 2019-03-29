<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="industralistsalerequest.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 13px; top: 189px; position: absolute; height: 390px; width: 785px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 353px; top: 11px; position: absolute" Text="SALE REQUEST"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 56px; top: 54px; position: absolute; width: 142px" 
            Text="SELECT PRODUCT"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 272px; top: 48px; position: absolute" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 57px; top: 94px; position: absolute; height: 282px; width: 687px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Pname], [Punit], [ImpoStatus], [Price], [Tax] FROM [productreg]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="z-index: 1; left: 351px; top: 114px; position: absolute" Text="SUBMIT" />
            <asp:Button ID="Button2" runat="server" 
                style="z-index: 1; left: 447px; top: 113px; position: absolute" 
                Text="RESET" onclick="Button2_Click" />
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 271px; top: 68px; position: absolute" Text="QUANTITY"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" 
                style="z-index: 1; left: 456px; top: 65px; position: absolute"></asp:TextBox>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" 
                style="z-index: 1; left: 13px; top: 57px; position: absolute; height: 67px; width: 125px" 
                Width="125px" AutoGenerateRows="False" DataKeyNames="Pname" 
                DataSourceID="SqlDataSource1">
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
            <asp:Image ID="Image1" runat="server" 
                style="z-index: 1; left: 176px; top: 122px; position: absolute; height: 95px; width: 124px" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>

