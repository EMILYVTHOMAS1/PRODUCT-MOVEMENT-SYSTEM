<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="stafflogin.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 203px; top: 137px; position: absolute; height: 178px; width: 625px">
        <asp:Label ID="Label1" runat="server" Text="STAFF LOGIN" 
            style="z-index: 1; left: 303px; top: 30px; position: absolute; width: 120px; height: 20px"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 91px; top: 60px; position: absolute; height: 19px" 
            Text="STAFF ID"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 92px; top: 90px; position: absolute; height: 15px; width: 56px" 
            Text="PASSWORD"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 303px; top: 67px; position: absolute; height: 19px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            
            style="z-index: 1; left: 301px; top: 94px; position: absolute; height: 22px; width: 121px; margin-top: 0px" 
            TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
            style="z-index: 1; left: 481px; top: 86px; position: absolute; height: 22px" 
            Text="SIGN IN" />
    </asp:Panel>
</asp:Content>

