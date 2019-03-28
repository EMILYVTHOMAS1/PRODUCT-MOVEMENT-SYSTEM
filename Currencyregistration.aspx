<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Currencyregistration.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 17px; top: 131px; position: absolute; height: 312px; width: 838px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 287px; top: 22px; position: absolute" 
            Text="CURRENCY REGISTRATION"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 81px; top: 79px; position: absolute" 
            Text="CURRENCY NAME"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 80px; top: 112px; position: absolute" Text="VALUE"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 421px; top: 70px; position: absolute; height: 20px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 420px; top: 103px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 254px; top: 175px; position: absolute" Text="SUBMIT" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 375px; top: 175px; position: absolute" Text="RESET" />
    </asp:Panel>
</asp:Content>

