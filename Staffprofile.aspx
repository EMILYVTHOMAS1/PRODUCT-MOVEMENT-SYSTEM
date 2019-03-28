<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="Staffprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 14px; top: 157px; position: absolute; height: 318px; width: 780px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 336px; top: 22px; position: absolute" Text="YOUR PROFILE"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
            Height="50px" 
            style="z-index: 1; left: 343px; top: 65px; position: absolute; height: 67px; width: 125px" 
            Width="125px" AutoGenerateRows="False" DataKeyNames="StaffID">
            <Fields>
                <asp:BoundField DataField="StaffID" HeaderText="StaffID" ReadOnly="True" 
                    SortExpression="StaffID" />
                <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                <asp:BoundField DataField="Hname" HeaderText="Hname" SortExpression="Hname" />
                <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="RegDate" HeaderText="RegDate" 
                    SortExpression="RegDate" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

