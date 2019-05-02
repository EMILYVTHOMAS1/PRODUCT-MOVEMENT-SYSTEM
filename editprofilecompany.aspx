<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="editprofilecompany.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        
        style="z-index: 1; left: 31px; top: 149px; position: absolute; height: 829px; width: 965px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 562px; top: 41px; position: absolute; height: 16px;" 
            Text="EDIT PROFILE" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#0033CC"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 255px; top: 200px; position: absolute; font-weight: 700;" 
            Text="Address"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            
            style="z-index: 1; left: 257px; top: 295px; position: absolute; font-weight: 700;" 
            Text="Pin"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 243px; top: 496px; position: absolute; height: 18px; width: 116px;" 
            Text="Account Number"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            
            style="z-index: 1; left: 256px; top: 156px; position: absolute; font-weight: 700;" 
            Text="Name"></asp:Label>
        <asp:Label ID="Label8" runat="server" 
            
            style="z-index: 1; left: 257px; top: 331px; position: absolute; font-weight: 700;" 
            Text="Phone"></asp:Label>
        <asp:Label ID="Label9" runat="server" 
            style="z-index: 1; left: 256px; top: 248px; position: absolute; font-weight: 700;" 
            Text="Place"></asp:Label>
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; left: 249px; top: 109px; position: absolute; font-weight: 700;" 
            Text="Company ID"></asp:Label>
        <asp:Label ID="Label12" runat="server" 
            style="z-index: 1; left: 471px; top: 111px; position: absolute"></asp:Label>
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 472px; top: 162px; position: absolute"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 467px; top: 201px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 468px; top: 248px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" 
            style="z-index: 1; left: 656px; top: 538px; position: absolute"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 469px; top: 292px; position: absolute" 
            MaxLength="6"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 469px; top: 328px; position: absolute" 
            MaxLength="13"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" 
            style="z-index: 1; left: 472px; top: 497px; position: absolute" 
            MaxLength="15"></asp:TextBox>
        <asp:Label ID="Label18" runat="server" 
            style="z-index: 1; left: 255px; top: 440px; position: absolute" Text="Country"></asp:Label>
        <asp:Label ID="Label19" runat="server" 
            style="z-index: 1; left: 261px; top: 392px; position: absolute; height: 22px" 
            Text="State"></asp:Label>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 308px; top: 568px; position: absolute; width: 90px;" 
            Text="SUBMIT" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 477px; top: 567px; position: absolute; width: 77px; height: 26px;" 
            Text="RESET" ValidationGroup="a" />
        <asp:Label ID="Label17" runat="server" 
            style="z-index: 1; left: 787px; top: 121px; position: absolute" 
            Text="Prooof File"></asp:Label>
        <asp:Image ID="Image1" runat="server" 
            style="z-index: 1; left: 752px; top: 169px; position: absolute; height: 167px" />
        <asp:Label ID="Label20" runat="server" 
            style="z-index: 1; left: 486px; top: 389px; position: absolute"></asp:Label>
        <asp:Label ID="Label21" runat="server" 
            style="z-index: 1; left: 479px; top: 438px; position: absolute"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="This Field is Required" 
            ForeColor="Red" style="z-index: 1; left: 650px; top: 199px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="This Field is Required" 
            ForeColor="Red" style="z-index: 1; left: 658px; top: 292px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="This Field is Required" 
            ForeColor="Red" style="z-index: 1; left: 659px; top: 493px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="This Field is Required" 
            ForeColor="Red" style="z-index: 1; left: 651px; top: 245px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="This Field is Required" 
            ForeColor="Red" style="z-index: 1; left: 660px; top: 330px; position: absolute"></asp:RequiredFieldValidator>
    </asp:Panel>
</asp:Content>

