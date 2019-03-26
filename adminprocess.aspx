<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminprocess.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 72px; top: 78px; position: absolute; height: 359px; width: 717px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 270px; top: 36px; position: absolute; right: 355px;" 
            Text="Admin Process"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Staffreg.aspx" 
            style="z-index: 1; left: 10px; top: 57px; position: absolute">staff registeration</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Productreg.aspx" 
            style="z-index: 1; left: 159px; top: 58px; position: absolute">product registeration</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Currencyregistration.aspx" 
            style="z-index: 1; left: 298px; top: 60px; position: absolute">currency registration</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/changecurrencyvalue.aspx" 
            style="z-index: 1; left: 452px; top: 58px; position: absolute">changecurrrencyvalue</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/clientapproval2.aspx" 
            style="z-index: 1; left: 616px; top: 59px; position: absolute">client approval</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/industrialistproductallotment.aspx" 
            style="z-index: 1; left: 14px; top: 99px; position: absolute; right: 482px">allot products toclients (industrialists)</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" 
            NavigateUrl="~/wholesalelerproductallotment.aspx" 
            style="z-index: 1; left: 251px; top: 97px; position: absolute">allot products toclients (wholesalers)</asp:HyperLink>
        <asp:HyperLink ID="HyperLink8" runat="server" 
            NavigateUrl="~/allotimportpdtcompany.aspx" 
            style="z-index: 1; left: 508px; top: 103px; position: absolute; height: 17px; width: 167px">allot import products</asp:HyperLink>
        <asp:HyperLink ID="HyperLink9" runat="server" 
            NavigateUrl="~/allotexpopdtcompany.aspx" 
            style="z-index: 1; left: 14px; top: 136px; position: absolute">allot export company</asp:HyperLink>
        <asp:HyperLink ID="HyperLink12" runat="server" 
            NavigateUrl="~/adminchangepassword.aspx" 
            style="z-index: 1; left: 356px; top: 138px; position: absolute">Change Password</asp:HyperLink>
    </asp:Panel>
</asp:Content>

