<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [firstname], [lastname] FROM [reg ]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [package_no], [start_date], [total_amount], [hotel_type], [hotel_name], [room_type], [paymentby], [bank_name], [bank_branch], [bank_city], [bank_state] FROM [book] WHERE (([username] = @username) AND ([password] = @password))">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="uname" Type="String" />
                <asp:SessionParameter Name="password" SessionField="pass" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Show Booking Details" />
                <br />
            </asp:View>
            <br />
            <br />
            <br />
            <asp:View ID="View2" runat="server">
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Hide" />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="package_no" HeaderText="package_no" SortExpression="package_no" />
                        <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
                        <asp:BoundField DataField="total_amount" HeaderText="total_amount" SortExpression="total_amount" />
                        <asp:BoundField DataField="hotel_type" HeaderText="hotel_type" SortExpression="hotel_type" />
                        <asp:BoundField DataField="hotel_name" HeaderText="hotel_name" SortExpression="hotel_name" />
                        <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                        <asp:BoundField DataField="paymentby" HeaderText="paymentby" SortExpression="paymentby" />
                        <asp:BoundField DataField="bank_name" HeaderText="bank_name" SortExpression="bank_name" />
                        <asp:BoundField DataField="bank_branch" HeaderText="bank_branch" SortExpression="bank_branch" />
                        <asp:BoundField DataField="bank_city" HeaderText="bank_city" SortExpression="bank_city" />
                        <asp:BoundField DataField="bank_state" HeaderText="bank_state" SortExpression="bank_state" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Logout" />
                <br />
                <br />
            </asp:View>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:MultiView>
        </p>
<p>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 50px; top: 57px; position: absolute" Text="Label"></asp:Label>
        </p>
       
       
       
</asp:Content>

