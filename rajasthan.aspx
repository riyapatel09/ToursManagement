<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rajasthan.aspx.cs" Inherits="himachal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        height: 281px;
        width: 938px;
    }
        .auto-style10 {
            width: 578px;
            height: 328px;
        }
        .auto-style11 {
            height: 281px;
            width: 589px;
        }
        .auto-style12 {
            width: 762px;
            height: 330px;
            margin-top: 2px;
        }
        .auto-style13 {
            width: 480px;
            height: 360px;
        }
        .auto-style14 {
            width: 479px;
            height: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Tours For Delhi-Rajasthan</p>
    
    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" style="z-index: 1; left: 12px; top: 1203px; position: absolute" Text="Book This Package" />
    
    <br />
    
    <p>
        <asp:Label ID="Label1" runat="server" Text="Package No:"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tours]"></asp:SqlDataSource>
</p>
    <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" style="z-index: 1; left: 13px; top: 230px; position: absolute" Text="Book this package" />
</p>
            Start City:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
<p>
            <asp:Label ID="Label6" runat="server" Text="Start Date:"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="28-May-2016"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="/1-June-2016"></asp:Label>
            </p>
<p>
        &nbsp;</p>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click1" Text="Show Details" />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style11">
                        <img alt="" class="auto-style13" src="Images/Delhi-Rajasthan/IMG-20160503-WA0003.jpg" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;<img class="auto-style14" src="Images/Delhi-Rajasthan/IMG-20160503-WA0004.jpg" alt="" /></td>
                </tr>
            </table>
            
        </asp:View>
         
        <asp:View ID="View2" runat="server">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Back" />
            <p style="background-color: grey">
            <br />
                <br />
            Day-1: Arrival in Delhi<br /> Hotel Hide Park**/Hotel Glorious***<br /> Arrive in Delhi and get a transfer by private vehicle to your hotel for check-in. The rest of the day is free to explore the bursting national capital at your own pace. Later, enjoy dinner and an overnight stay at the hotel.
                <br /> 
                Day-2: Delhi/Local sightseeing-Hotel Hide Park**/Hotel Glorious***<br /> Today, enjoy a city tour of Delhi. Visit Raj Ghat and drive past Jama Masjid and the Red Fort. If timepermits, shop in the local market of Chandani Chowk. In the afternoon, visit Qutub Minar, Akshardham temple, India Gate and the Lotus temple. During your tour, drive past the President&#39;s House, Parliament House and the Government Secretariate Buildings. Overnight stay at hotel.
            <br />
            Day-3: Delhi-Agra- Hotel Shivam**/Hotel Mumtaz***<br /> After breakfast at the hotel your journey continues to another historical and romantic city-Agra. En route, visit Sikandara-the mausoleum of Emperor Akbar. Thereafter, proceed to visit Taj Mahal, which was built by Mughal Emperor Shahjahan in 1630 AD for his beloved queen. Mumtaz Mahal. Continue the tour by visiting the Agra Fort- containing the Royal residential palaces, the Halls of Public and Private Audience and beautifulgardens.
                <br /> 
                &nbsp;
                Day-4: Agra-Jaipur- Hotel Ganga**/Hotel Bhagyoday***<br /> This morning, proceed to the Pink city of Jaipur En route, visit Fatehpur Sikri-once the capital of Mughal Emperor Akbar. On arrival at Jaipur, check-in to your hotel. The rest of the day is free to explore this vibrant and colorfulcity. Overnight stay at the hotel.
                <br />
                 &nbsp;
                Day-5: Jaipur/Local sightseeing- Hotel Ganga**/Hotel Bhagyoday***<br /> This morning, you will proceed on a visit to the ancient capital of the Kachchawaha 
            Rajputs,Amber. (Pay directly for your elephant ride or for the jeep ride of the fort.) En route, enjoy your photostop at Hawa Mahal-the place of wind. Late, visit the city palace and the apartment housing museum within array of textiles, costumes, arms, weapons and paintings. Finally visit Jantar-Mantar, built by Maharaja Jaysingh-II. Overnight stay at the hotel.
            <br />
            Day-6: Departure transfers After breakfast, you shall be transferred to new Delhi airport or railway station by private vehicle.<br />
            
        </p>
        </asp:View>
        
</asp:MultiView>
    <p>
        Package No:<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        StartCity:<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        Starting Dates: 6-Apr-2016,15-Apr-2016</p>
    
    <asp:MultiView ID="MultiView2" runat="server">
        <asp:View ID="View3" runat="server">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style11">
                        &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Show Details" />
                        <img class="auto-style10" src="Images/h51.png" />
                    </td>
                    <td class="auto-style4">
                        <img class="auto-style12" src="Images/himachal/h41.png" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </asp:View>
       
        <asp:View ID="View4" runat="server">
              
           <p style="background-color: grey">
            <asp:Button ID="Button6" runat="server" Text="Back" OnClick="Button6_Click1" />
            <br />
            <br />
                  Day-1: Arrival in Delhi- Hotel Hide Park**/Hotel Glorious***<br />
               Upon arrival to Delhi airport, you are transferred to your hotel. Today enjoy a city tour of Delhi. Visit Rajghat, Drive past Jama Masjid and the Red Fort. Time permitting, Shop in the local market of Chandni Chowk. In the afternoon, visit Qutub Minar, Akshardham Temple, India Gate and the Lotus Temple. Overnight stay at hotel.
               <br />
               Day-2: Delhi-Agra-Hotel Shivam**/Hotel Mumtaz***
            <br />
            Today, your journey continues to another historical city of Agra. Enroute, visit Sikandara- the mausoleun of Emperor Akbar. There after proceed to visit Taj Mahal. Continue the tour visiting the Agra fort containing the royal residential palaces, the Halls of public and Private audience and beautiful gardens. Enjoy dinner and stay overnight at the hotel.
            <br />
               Day-3: Agra-Jaipur-Hotel Ganga**/Hotel Bhagyoday***<br />
               This morning, proceed to the pink city of Jaipur. Enroute visit Fatehpur Sikri. On arrival at Jaipur, check-in to your hotel. Enjoy dinner and stay comfortably at the hotel.
               <br />
               Day-4: Jaipur-Hotel Ganga**/Hotel Bhagyoday***
            <br />
            Visit Amber Fort. This morning, you will proceed on a visit to the ancient capital of the Kachchawaha Rajputs, Amber. Enroute enjoy a photo-stop at Hawa Mahal. Stay overnight at the hotel.&nbsp;
             
            </p>
        </asp:View>
        
</asp:MultiView>
    
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/login1.aspx">Proceed to book</asp:HyperLink>
    </p>
</asp:Content>

