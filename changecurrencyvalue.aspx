<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="changecurrencyvalue.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 90px; top: 105px; position: absolute; width: 750px; height: 384px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 255px; top: 27px; position: absolute" 
            Text="CHANGE CURRENCY VALUE"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 93px; top: 77px; position: absolute; width: 238px" 
            Text="SELECT CURRENCY NAME"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 480px; top: 75px; position: absolute; height: 22px">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 95px; top: 118px; position: absolute; width: 165px" 
            Text="EDIT VALUE"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 482px; top: 112px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 231px; top: 183px; position: absolute" Text="UPDATE" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 373px; top: 187px; position: absolute" Text="RESET" />
    </asp:Panel>
</asp:Content>

