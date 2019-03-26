<%@ Page Title="" Language="C#" MasterPageFile="~/Client.master" AutoEventWireup="true" CodeFile="clientchangepassword.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 300px; top: 167px; position: absolute; height: 396px; width: 826px">
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 270px; top: 31px; position: absolute; width: 300px;" 
            Text="CLIENNT CHANGE PASSWORD"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="style1" 
            style="z-index: 1; left: 158px; top: 147px; position: absolute; height: 22px;" 
            Text="New Password"></asp:Label>
        <asp:Button ID="Button1" runat="server"
            style="z-index: 1; left: 204px; top: 292px; position: absolute; width: 92px" 
            Text="SUBMIT" onclick="Button1_Click" />
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 312px; top: 101px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 311px; top: 150px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="style1" 
            style="z-index: 1; left: 148px; top: 198px; position: absolute; width: 126px" 
            Text="Retype Password"></asp:Label>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 377px; top: 292px; position: absolute; width: 83px" 
            Text="RESET" ValidationGroup="a" />
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 312px; top: 198px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" CssClass="style1" 
            style="z-index: 1; left: 147px; top: 98px; position: absolute; height: 27px;" 
            Text="Existing Password"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Password" 
            style="z-index: 1; left: 466px; top: 102px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter New Password"  
            style="z-index: 1; left: 470px; top: 151px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Retype Password"  
            style="z-index: 1; left: 469px; top: 197px; position: absolute"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
            ErrorMessage="Incorrect Password" 
            style="z-index: 1; left: 583px; top: 197px; position: absolute; width: 157px"></asp:CompareValidator>
    </asp:Panel>
</asp:Content>

