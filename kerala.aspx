<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kerala.aspx.cs" Inherits="kerala" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-top: 0px;
    }
    .auto-style2 {
        height: 23px;
    }
        .auto-style3 {
            width: 720px;
            height: 409px;
        }
        .auto-style4 {
            width: 720px;
            height: 411px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Tours For Kerala<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tours]"></asp:SqlDataSource>
</p>
<p>
    Package No:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Book This Package" />
<p>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="z-index: 1; left: 6px; top: 459px; position: absolute" Text="Book This Package" />
</p>
<p>
    Start City:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Start Dates:29-Mar-2016,15-Apr-2016</p>
<p>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="More Details" />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <img class="auto-style3" src="Images/Kerala/Screenshot_2016-05-07-09-18-48-1.png" />
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </asp:View>
        <br />
        <asp:View ID="View2" runat="server">
            <p style="background-color: grey">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
            <br />
            Day 1:-Arrival in Cochin/Munnar Aftre arriving to cochin,drive to munnar and reach the hotel by afternoon. Enjoy the rest of the day at leisure.Stay overnight at the hotel.
            <br />
            Day 2:-Stay in Munnar Go on a sightseeing tour of Munnaer visiting the Eravikulam National Park,Mattupetty Dam and Dairy farm,Old Munnar Town and the town market. Enjoy the rest of day at leisure.(Eravikulam National Park is shut from 15th Jan to 15th Mar;during these days park visit cannot be done but all other sightseeing shall be provided as per itinerary.)
            <br />
            Day 3:-Munnar to Thekkady Check out from the hotel.Drive to Thekkady and reach by afternoon.Check into the hotel and enjoy the rest of the day at leisure or take an optional boat cruise in Periyar Wildlife Sanctuary.Stay overnight at the hotel.
            <br />
            Day 4:-Thekkady to Allepey Ckeck out from the hotel.Drive to Allepey and reach by afternoon.Check into the hotel and enjoy the rest of the day at the hotel at leisure or take an optional cruise on the backwaters.Stay overnight at the hotel.
            <br />
            Day 5:-Depart from Appeley Check out of the hotel.Drive to Cochin and transfer to the airport for your onward journey.
                <br>
            </p>
        </asp:View>
    </asp:MultiView>
</p>
<p>
    Package No:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Start City:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</p>
<p>
    Start Dates:3-Apr-2016,28-Apr-2016</p>

    <asp:MultiView ID="MultiView2" runat="server">
        <asp:View ID="View3" runat="server">
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="More Details" />
            <br />
            <img alt="" class="auto-style4" src="Images/Kerala/Screenshot_2016-05-07-09-19-00-1.png" />
            <br />
            <br />
        </asp:View>
        <asp:View ID="View4" runat="server">
            <p style="background-color: grey">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Back" />
            <br />
            Day 1:-Arrive in Cochin Arrive at the airport and experience our transfer and check-in at the hotel.In the afternoon,proceed for the Cochin city tour covering Dutch Palace and Jewish Synagogue.Visit Fort Cochin area which houses St.Francis Church and Chinese Fishing Nets.Have dinner and stay overnight at the hotel.
            <br />
            Day 2:-Cochin to Munnar Proceed to Munnar.Enroute,halt for refreshments.Visit Valara Waterfalls enroute Munnar.Arrive and check-in at the hotel.Visit the tea plantations in the evening at Devikulam.Enjoy dinner and stay overnight at the hotel in Munnar.
            <br />
            Day 3:-Stay in Munnar Proceed for a local sightseeing,covering Maatupetty Dam and Echo point.Also,visit Tata Tea Museum.Spend the evening at leisure.Enjoy dinner and stay overnight at the hotel in Munnar.
            <br />
            Day 4:-Munnar to Thekkady Proceed to Thekkady.Enroute,visit Nedumkandam Chillies Spice Garden.Take a brief spice plantation tour.Arrive in Thekkady and ckeck-in to your hotel.In the afternoon,proceed for a boat ride on Periyar lake situated inside the Periyar Wildlife Sanctuary.Have dinner and stay overnight at the hotel.
            <br />
            Day 5:-Thekkady to Allepey Drive all the way to Appeley.Check-in to your hotel upon arrival.Spend the free time at the backwaters.Have dinner and stay overnight at the hotel in Kumarakom.
            <br />
            Day 6:-Depart to Cochin Depart to Cochin and board the flight for your hometown.Your tour concludes here with unlimited mwmories.
            <br />
            </p>
        </asp:View>
    </asp:MultiView>

<p>
    &nbsp;</p>
<p>
    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="#99CCFF" NavigateUrl="~/book3.aspx">Proceed to Book</asp:HyperLink>
    </p>
</asp:Content>

