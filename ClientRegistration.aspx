<%@ Page Title="" Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="ClientRegistration.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 18px; top: 135px; position: absolute; height: 396px; width: 826px; margin-right: 0px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 351px; top: 14px; position: absolute" 
            Text="CLIENT REGISTRATION"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            
            style="z-index: 1; left: 184px; top: 69px; position: absolute; height: 19px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 407px; top: 64px; position: absolute; width: 103px" 
            Text="ADDRESS"></asp:Label>
        
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 595px; top: 65px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 34px; top: 66px; position: absolute" Text="NAME"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 34px; top: 107px; position: absolute" Text="PLACE"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 183px; top: 108px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 410px; top: 100px; position: absolute" Text="PINCODE"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 594px; top: 97px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 34px; top: 144px; position: absolute" Text="PHONE"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" 
            style="z-index: 1; left: 180px; top: 144px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 410px; top: 137px; position: absolute" Text="EMAIL"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" 
            style="z-index: 1; left: 595px; top: 130px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 35px; top: 183px; position: absolute" Text="STATE"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 180px; top: 183px; position: absolute">
            <asp:ListItem>KERALA</asp:ListItem>
            <asp:ListItem>KARNATAKA</asp:ListItem>
            <asp:ListItem>TAMILNADU</asp:ListItem>
            <asp:ListItem>UTTAR PRADESH</asp:ListItem>
            <asp:ListItem>MADYA PRADESH</asp:ListItem>
            <asp:ListItem>GUJARAT</asp:ListItem>
            <asp:ListItem>HARYANA</asp:ListItem>
            <asp:ListItem>BENGLADESH</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label9" runat="server" 
            style="z-index: 1; left: 412px; top: 178px; position: absolute; right: 295px" 
            Text="UPLOAD PROOF"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" 
            style="z-index: 1; left: 594px; top: 171px; position: absolute" />
        <asp:Label ID="Label10" runat="server" 
            style="z-index: 1; left: 37px; top: 218px; position: absolute" 
            Text="ACCOUNT NO"></asp:Label>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="x" 
            style="z-index: 1; left: 698px; top: 236px; position: absolute" 
            Text="wholesalers" />
        <asp:TextBox ID="TextBox7" runat="server" 
            style="z-index: 1; left: 181px; top: 209px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; left: 411px; top: 211px; position: absolute" 
            Text="BANK NAME"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            style="z-index: 1; left: 597px; top: 210px; position: absolute">
            <asp:ListItem>SOUTH INDIAN BANK</asp:ListItem>
            <asp:ListItem>INDIAN BANK</asp:ListItem>
            <asp:ListItem>ICICI BANK</asp:ListItem>
            <asp:ListItem>BANK OF BARODA</asp:ListItem>
            <asp:ListItem>UNION BANK</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label12" runat="server" 
            style="z-index: 1; left: 38px; top: 251px; position: absolute" Text="IFSC CODE"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" 
            style="z-index: 1; left: 179px; top: 243px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 38px; top: 289px; position: absolute" Text="PASSWORD"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" 
            style="z-index: 1; left: 178px; top: 285px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" 
            style="z-index: 1; left: 410px; top: 279px; position: absolute" 
            Text="RE-TYPE PASSWORD"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" 
            style="z-index: 1; left: 600px; top: 279px; position: absolute; height: 19px" 
            TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 336px; top: 344px; position: absolute" Text="SUBMIT" />
        <asp:Label ID="Label15" runat="server" 
            style="z-index: 1; left: 412px; top: 245px; position: absolute" Text="CTYPE"></asp:Label>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 495px; top: 344px; position: absolute" Text="RESET" />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="x" 
            style="z-index: 1; left: 570px; top: 238px; position: absolute" 
            Text="industrialist" />
        
    </asp:Panel>
</asp:Content>

