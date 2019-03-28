<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="Companyprocess.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 10px; top: 104px; position: absolute; height: 239px; width: 780px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 267px; top: 22px; position: absolute" 
            Text="COMPANY PROCESS"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" 
            style="z-index: 1; left: 20px; top: 63px; position: absolute" 
            NavigateUrl="~/companyprofile.aspx">View your profile</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" 
            style="z-index: 1; left: 143px; top: 62px; position: absolute">Edit profile</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/companychangepassword.aspx" 
            style="z-index: 1; left: 349px; top: 62px; position: absolute">Change password</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/Companysalerequest.aspx" 
            style="z-index: 1; left: 491px; top: 60px; position: absolute">company sale request(import)</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/companypurchaserequest.aspx" 
            style="z-index: 1; left: 681px; top: 58px; position: absolute; width: 174px">company purchase request(export)</asp:HyperLink>
    </asp:Panel>
</asp:Content>

