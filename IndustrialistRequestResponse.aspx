﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.master" AutoEventWireup="true" CodeFile="IndustrialistRequestResponse.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 81px; top: 188px; position: absolute; height: 534px; width: 1462px">
        <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 367px; top: 23px; position: absolute" 
            Text="REQUEST RESPONSE(INDUSTRIALIST)"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Reqno" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="z-index: 1; left: 98px; top: 89px; position: absolute; height: 133px; width: 187px">
            <Columns>
                <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                    SortExpression="Reqno" />
                <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                    SortExpression="ReqDate" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
            SelectCommand="SELECT [Reqno], [Pname], [Qty], [ReqDate] FROM [Request]">
        </asp:SqlDataSource>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 440px; top: 79px; position: absolute; height: 402px; width: 1065px">
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 55px; top: 27px; position: absolute" Text="REQUEST NO"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 188px; top: 23px; position: absolute; width: 63px" 
                Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="Reqno" DataSourceID="SqlDataSource2" Height="50px" 
                style="z-index: 1; left: 59px; top: 67px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
                <Fields>
                    <asp:BoundField DataField="Reqno" HeaderText="Reqno" ReadOnly="True" 
                        SortExpression="Reqno" />
                    <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="Clientid" HeaderText="Clientid" 
                        SortExpression="Clientid" />
                    <asp:BoundField DataField="ReqDate" HeaderText="ReqDate" 
                        SortExpression="ReqDate" />
                    <asp:BoundField DataField="Reqmode" HeaderText="Reqmode" 
                        SortExpression="Reqmode" />
                </Fields>
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                DataKeyNames="ClientID" DataSourceID="SqlDataSource3" Height="50px" 
                style="z-index: 1; left: 298px; top: 65px; position: absolute; height: 67px; width: 125px" 
                Width="125px">
                <Fields>
                    <asp:BoundField DataField="ClientID" HeaderText="ClientID" ReadOnly="True" 
                        SortExpression="ClientID" />
                    <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                        SortExpression="Pincode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="accountno" HeaderText="accountno" 
                        SortExpression="accountno" />
                    <asp:BoundField DataField="bankname" HeaderText="bankname" 
                        SortExpression="bankname" />
                    <asp:BoundField DataField="ifsccode" HeaderText="ifsccode" 
                        SortExpression="ifsccode" />
                    <asp:BoundField DataField="regdate" HeaderText="regdate" 
                        SortExpression="regdate" />
                    <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT [ClientID], [Cname], [Address], [Place], [Pincode], [Phone], [Email], [State], [accountno], [bankname], [ifsccode], [regdate], [ctype] FROM [clientreg]">
            </asp:SqlDataSource>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 291px; top: 28px; position: absolute" 
                Text="CLIENT DETAILS"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:productdataConnectionString %>" 
                SelectCommand="SELECT * FROM [Request]"></asp:SqlDataSource>
            <asp:Panel ID="Panel3" runat="server" 
                style="z-index: 1; left: 537px; top: 55px; position: absolute; height: 163px; width: 499px">
                <asp:RadioButton ID="RadioButton1" runat="server" 
                    style="z-index: 1; left: 170px; top: 29px; position: absolute" Text="YES" />
                <asp:Label ID="Label5" runat="server" 
                    style="z-index: 1; left: 43px; top: 31px; position: absolute" Text="RESPONSE"></asp:Label>
                <asp:RadioButton ID="RadioButton2" runat="server" 
                    style="z-index: 1; left: 268px; top: 27px; position: absolute" Text="NO" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="z-index: 1; left: 109px; top: 92px; position: absolute" Text="SUBMIT" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    style="z-index: 1; left: 204px; top: 90px; position: absolute" Text="RESET" />
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

