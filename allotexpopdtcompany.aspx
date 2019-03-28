<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="allotexpopdtcompany.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 24px; top: 136px; position: absolute; height: 637px; width: 1086px">
        <asp:Label ID="Label1" runat="server"
            style="z-index: 1; left: 252px; top: 33px; position: absolute; width: 522px;" 
            Text="ALLOT EXPORT PRODUCT TO COMPANY"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 283px; top: 92px; position: absolute; width: 127px" 
            Text="Select Company ID"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 479px; top: 89px; position: absolute; height: 22px;">
        </asp:DropDownList>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 136px; top: 129px; position: absolute; height: 439px; width: 683px">
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 114px; top: 25px; position: absolute" 
                Text="Company Details"></asp:Label>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 354px; top: 50px; position: absolute; height: 23px; width: 87px" 
                Text="Select Pname"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                style="z-index: 1; left: 488px; top: 50px; position: absolute">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="z-index: 1; left: 411px; top: 326px; position: absolute; width: 106px; right: 166px" 
                Text="ALLOT" />
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
                Height="50px" 
                
                style="z-index: 1; left: 51px; top: 132px; position: absolute; height: 67px; width: 156px" 
                AutoGenerateRows="False" DataKeyNames="cmpID">
                <Fields>
                    <asp:BoundField DataField="cmpID" HeaderText="cmpID" ReadOnly="True" 
                        SortExpression="cmpID" />
                    <asp:BoundField DataField="cmpname" HeaderText="cmpname" 
                        SortExpression="cmpname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                    <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Country" HeaderText="Country" 
                        SortExpression="Country" />
                    <asp:BoundField DataField="Accountno" HeaderText="Accountno" 
                        SortExpression="Accountno" />
                    <asp:BoundField DataField="currency" HeaderText="currency" 
                        SortExpression="currency" />
                    <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [Pname], [Punit], [ImpoStatus], [Price], [Tax] FROM [productreg]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [cmpID], [cmpname], [Address], [Place], [Pin], [Phone], [Email], [State], [Country], [Accountno], [currency], [Bname] FROM [companyreg]"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" 
                style="z-index: 1; left: 358px; top: 106px; position: absolute; height: 67px; width: 125px" 
                Width="125px" AutoGenerateRows="False" DataKeyNames="Pname" 
                DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="Pname" HeaderText="Pname" ReadOnly="True" 
                        SortExpression="Pname" />
                    <asp:BoundField DataField="Punit" HeaderText="Punit" SortExpression="Punit" />
                    <asp:BoundField DataField="ImpoStatus" HeaderText="ImpoStatus" 
                        SortExpression="ImpoStatus" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                </Fields>
            </asp:DetailsView>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

