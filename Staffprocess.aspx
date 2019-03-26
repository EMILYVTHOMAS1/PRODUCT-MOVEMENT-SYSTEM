<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="Staffprocess.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    
    &nbsp;<asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 10px; top: 38px; position: absolute; height: 150px; width: 779px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 293px; top: 7px; position: absolute" 
            Text="WELCOME TO STAFF PROCESS"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 113px; top: 16px; position: absolute"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/clientapproval1.aspx" 
            style="z-index: 1; left: 25px; top: 48px; position: absolute">Client Approval</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/staffcompanyapproval.aspx" 
            style="z-index: 1; left: 140px; top: 48px; position: absolute">Company Approval</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" 
            style="z-index: 1; left: 289px; top: 46px; position: absolute" 
            NavigateUrl="~/Staffprofile.aspx">View  Your Profile</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" 
            style="z-index: 1; left: 409px; top: 44px; position: absolute">Edit profile</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/staffchangepassword.aspx" 
            style="z-index: 1; left: 506px; top: 46px; position: absolute">Change password</asp:HyperLink>
    </asp:Panel>
    
    <br />
    <br />
    </asp:Content>

