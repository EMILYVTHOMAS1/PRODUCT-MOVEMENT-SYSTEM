<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="companyregistration.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 62px; top: 144px; position: absolute; height: 562px; width: 1214px">
        <asp:Label ID="Label1" runat="server" CssClass="style1" 
            style="z-index: 1; left: 397px; top: 23px; position: absolute" 
            Text="COMPANY REGISTRATION"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style1" 
            style="z-index: 1; left: 135px; top: 92px; position: absolute" 
            Text="Company Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="style1" 
            style="z-index: 1; left: 132px; top: 156px; position: absolute; height: 34px; width: 123px" 
            Text="Company Address"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="style1" 
            style="z-index: 1; left: 153px; top: 216px; position: absolute" Text="Place"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 149px; top: 314px; position: absolute" 
            Text="Phone"></asp:Label>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 146px; top: 362px; position: absolute; height: 19px;" 
            Text="Email"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="style1" 
            style="z-index: 1; left: 570px; top: 85px; position: absolute; height: 23px;" 
            Text="Country"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="style1" 
            style="z-index: 1; left: 564px; top: 130px; position: absolute; height: 22px" 
            Text="Select proof"></asp:Label>
        <asp:Label ID="Label11" runat="server" CssClass="style1" 
            style="z-index: 1; left: 570px; top: 183px; position: absolute" 
            Text="Account no"></asp:Label>
        <asp:Label ID="Label13" runat="server" 
            
            style="z-index: 1; left: 560px; top: 279px; position: absolute; height: 28px">Bank Name</asp:Label>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 614px; top: 435px; position: absolute; height: 28px; width: 105px" 
            Text="SUBMIT" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 783px; top: 432px; position: absolute; height: 28px; width: 101px" 
            Text="RESET" ValidationGroup="a" />
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 304px; top: 91px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 304px; top: 156px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 302px; top: 210px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" MaxLength="6" 
            style="z-index: 1; left: 303px; top: 269px; position: absolute; height: 22px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" MaxLength="13" 
            style="z-index: 1; left: 303px; top: 318px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" 
            style="z-index: 1; left: 302px; top: 365px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" 
            style="z-index: 1; left: 300px; top: 418px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" 
            style="z-index: 1; left: 708px; top: 84px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" MaxLength="15" 
            style="z-index: 1; left: 711px; top: 190px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" CssClass="style1" 
            style="z-index: 1; left: 145px; top: 410px; position: absolute; height: 22px; width: 60px;" 
            Text="State"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" 
            style="z-index: 1; left: 708px; top: 137px; position: absolute" />
        <asp:Label ID="Label14" runat="server" CssClass="style1" 
            style="z-index: 1; left: 559px; top: 324px; position: absolute" 
            Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" 
            style="z-index: 1; left: 712px; top: 274px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" CssClass="style1" 
            style="z-index: 1; left: 569px; top: 232px; position: absolute; height: 20px" 
            Text="Currency"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="style1" 
            style="z-index: 1; left: 155px; top: 269px; position: absolute; height: 16px" 
            Text="Pin"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="style1" 
            style="z-index: 1; left: 552px; top: 360px; position: absolute" 
            Text="Retype Password"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 713px; top: 234px; position: absolute">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox11" runat="server" 
            style="z-index: 1; left: 712px; top: 321px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" 
            style="z-index: 1; left: 710px; top: 365px; position: absolute" 
            TextMode="Password"></asp:TextBox>
       </asp:Panel>
</asp:Content>

