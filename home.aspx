 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 122%;
        height: 576px;
    }
        .auto-style2 {
            width: 155px;
        }
       
        .auto-style3 {
            width: 966px;
        }
       
        .auto-style5 {
            width: 495px;
            height: 137px;
            z-index: 1;
            left: 435px;
            top: 37px;
            position: absolute;
        }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/himachal.aspx" style="z-index: 1; left: 205px; top: 544px; position: absolute">Himachal</asp:HyperLink>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/himachal/h1.png" style="z-index: 1; left: 524px; top: 298px; position: absolute; height: 238px; width: 297px" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/himachal/h4.png" style="z-index: 1; left: 205px; top: 294px; position: absolute; height: 241px; width: 284px" />
                <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="#0033CC" NavigateUrl="~/kerala.aspx" style="z-index: 1; left: 532px; top: 544px; position: absolute; height: 17px;">Kerela</asp:HyperLink>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="place" DataValueField="place" style="z-index: 1; left: 105px; top: 152px; position: absolute">
                    <asp:ListItem>select place</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 15px; top: 157px; position: absolute; height: 17px; width: 89px" Text="Search Place:"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [place] FROM [tours]"></asp:SqlDataSource>
                <img alt="" class="auto-style5" src="Images/Untitled13.png" /><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 18px; top: 185px; position: absolute" Text="Search" />
&nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [start_date] FROM [tours]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

