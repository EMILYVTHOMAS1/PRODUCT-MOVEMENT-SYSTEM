<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="staffchangepassword.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 22px; top: 144px; position: absolute; height: 395px; width: 1127px">
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 468px; top: 41px; position: absolute; width: 256px;" 
            Text="STAFF CHANGE PASSWORD" ></asp:Label>
     <asp:Label ID="Label2" runat="server" CssClass="style1" 
            style="z-index: 1; left: 340px; top: 123px; position: absolute; height: 27px;" 
            Text="Existing Password"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 326px; top: 231px; position: absolute" 
            Text="Retype New Password"></asp:Label>
           
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 391px; top: 312px; position: absolute; width: 86px; right: 327px; margin-top: 0px" 
            Text="SUBMIT" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 561px; top: 310px; position: absolute; width: 77px" 
            Text="RESET" ValidationGroup="a" onclick="Button2_Click" />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 350px; top: 176px; position: absolute" 
            Text="New Password"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 532px; top: 123px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 533px; top: 171px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 534px; top: 225px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Password"  
            style="z-index: 1; left: 704px; top: 126px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter New Password"  
            style="z-index: 1; left: 706px; top: 169px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Retype New Password"
            style="z-index: 1; left: 706px; top: 222px; position: absolute"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
            ErrorMessage="Please Enter Same Password" 
            style="z-index: 1; left: 889px; top: 222px; position: absolute"></asp:CompareValidator>
        
    </asp:Panel>
</asp:Content>

