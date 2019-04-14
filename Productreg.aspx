<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Productreg.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 22px; top: 158px; position: absolute; height: 307px; width: 887px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 329px; top: 20px; position: absolute" 
            Text="PRODUCT REGISTRATION"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 48px; top: 48px; position: absolute" 
            Text="PRODUCT NAME"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 49px; top: 71px; position: absolute; width: 166px" 
            Text="UNIT"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 50px; top: 97px; position: absolute" 
            Text="IMPORT/EXPORT"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 53px; top: 134px; position: absolute" 
            Text="PRICE"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            
            style="z-index: 1; left: 52px; top: 166px; position: absolute; height: 21px; width: 46px;" 
            Text="TAX"></asp:Label>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 50px; top: 200px; position: absolute" 
            Text="SELECT PICTURE"></asp:Label>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 254px; top: 244px; position: absolute" 
            Text="SUBMIT" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 374px; top: 243px; position: absolute" 
            Text="RESET" onclick="Button2_Click" />
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 358px; top: 47px; position: absolute"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 359px; top: 76px; position: absolute">
            <asp:ListItem>KG</asp:ListItem>
            <asp:ListItem>GM</asp:ListItem>
            <asp:ListItem>LTR</asp:ListItem>
            <asp:ListItem>NOS</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 356px; top: 129px; position: absolute"></asp:TextBox>
        
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 355px; top: 170px; position: absolute; height: 20px"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="X" 
            style="z-index: 1; left: 353px; top: 102px; position: absolute" Text="IMPORT" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="X" 
            style="z-index: 1; left: 490px; top: 100px; position: absolute" Text="EXPORT" />
        <asp:FileUpload ID="FileUpload1" runat="server" 
            style="z-index: 1; left: 354px; top: 202px; position: absolute" />
        
    </asp:Panel>
</asp:Content>

