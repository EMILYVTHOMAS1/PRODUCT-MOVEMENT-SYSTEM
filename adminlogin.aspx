<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        
        
        style="z-index: 1; left: 84px; top: 130px; position: absolute; height: 316px; width: 705px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 171px; top: 87px; position: absolute; width: 47px;" 
            Text="UserID"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 171px; top: 127px; position: absolute" 
            Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 326px; top: 75px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            
            style="z-index: 1; left: 325px; top: 120px; position: absolute; height: 22px" 
             TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 249px; top: 176px; position: absolute; width: 162px" 
            Text="Signin" />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 287px; top: 22px; position: absolute" 
            Text="ADMIN LOGIN"></asp:Label>
    </asp:Panel>
    </asp:Content>

