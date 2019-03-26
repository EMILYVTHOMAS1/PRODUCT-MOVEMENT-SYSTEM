<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="clientprocess.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 11px; top: 150px; position: absolute; height: 192px; width: 780px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 329px; top: 19px; position: absolute" 
            Text="CLIENT PROCESS"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" 
            style="z-index: 1; left: 9px; top: 59px; position: absolute" 
            NavigateUrl="~/Clientprofile.aspx">View your profile</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" 
            style="z-index: 1; left: 161px; top: 54px; position: absolute">Edit profile</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/clientchangepassword.aspx" 
            style="z-index: 1; left: 290px; top: 52px; position: absolute">change password</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/industralistsalerequest.aspx" 
            style="z-index: 1; left: 449px; top: 50px; position: absolute">industrialist sale request</asp:HyperLink>
    </asp:Panel>
</asp:Content>

