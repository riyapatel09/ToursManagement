<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="himachal.aspx.cs" Inherits="himachal" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Tours For Himachal</p>
    
    <br />
    
    <p>
        <asp:Label ID="Label1" runat="server" Text="Package No:"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tours]"></asp:SqlDataSource>
</p>
    <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</p>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" style="z-index: 1; left: 11px; top: 267px; position: absolute; height: 24px;" Text="Book this package" />
            Start City:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
<p>
            <asp:Label ID="Label6" runat="server" Text="Start Date:"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="26-May-2016"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text=",10-Jun-2016"></asp:Label>
            </p>
<p>
        &nbsp;</p>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click1" Text="Show Details" />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style11">
                        &nbsp;<img class="auto-style10" src="Images/h51.png" /></td>
                    <td class="auto-style4">
                        <img class="auto-style12" src="Images/himachal/h41.png" />
                    </td>
                </tr>
            </table>
            
        </asp:View>
         
        <asp:View ID="View2" runat="server">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Back" />
            <p style="background-color: grey"  >
            <br />
            Day1: Shimla &quot;Chandigarh to Shimla (120kms in approximately 4-5 hours)&quot; Get picked up from Chandigarh airport and get transferred by road to Shimla.On arrival,check-in to your hotel.Spend the rest of day at leisure,probably exploring the area around the hotel.As the day falls,return to your hotel for overnight stay.<br /> Day2: &quot;Shimla&quot; This morning visit Kufri.It is at an altitude of 2500 meters and a 2-hour drive from Shimla.After this,visit the Vice Regal Lodge and take a walk down the Mall Road.Return to your Shimla hotel for overnight stay.
            <br />
            Day3: &quot;Shimla - Manali (257kms in approximately 7 hours)&quot; Leave for Manali,a picture perfect hill station at an altitude of 1929 metres.On reaching Manali,check-in to your hotel.Spend the evening at leisure,strolling across the Manali Market.Devour it and sleep comfortably Overnight.
            <br />
            Day4: &quot;Manali&quot; This morning,proceed for a full day tour or Manali,visiting the 450 years old temple dedicated to Hadimba Devi,Jagatsukh and Vashist kund.After thi,visit the Tibetan Monastery and handicraft centre and walk to the nearby picturesque village of Vashist known for its hot sulphur springs.After enjoying these sights,return to your hotel for overnight stay.
            <br />
            Day5: &quot;Manali&quot; Day is at leisure,enjoy the scenic beauty of heavenly himachal.After a memorable experince,return to your hotel for overnight stay.
            <br />
            Day6: &quot;Manali to Chandigarh (610 kms in approximately 10 hours)&quot; Drive to Chandigarh.Upon arrival,Check in to the hotel.Dinner and overnight stay at the hotel.
            <br />
            Day7: &quot; Depature from Chandigarh &quot; Head all the way to Chandigarh Airport for your onwards jouney. <br />
            <br>
        </p>
        </asp:View>
        
</asp:MultiView>
    <p>
        Package No:<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    </p>
    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" style="z-index: 1; left: 19px; top: 1150px; position: absolute" Text="Book This Package" />
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
            Day1: &quot;Chandigarh to Shimla (120kms in approximately 4-5 hours)&quot; Get picked up from Chandigarh and get transferred by road to Shimla.On arrival,check-in to your hotel.Spend the rest of day at leisure,probably exploring the area around the hotel.As the day falls,return to your hotel for overnight stay.<br /> &nbsp;Day2: &quot;Shimla&quot; This morning,you will visit Kufri.It is at an altitude of 2500 meters and a 2-hour drive from Shimla.After this,visit the Vice Regal Lodge and take a walk down the Mall Road.Return to your Shimla hotel for overnight stay. <br />
            Day3: &quot;Shimla - Manali (257kms in approximately 7 hours)&quot; Leave for Manali,a picture perfect hill station at an altitude of 1929 metres.On reaching Manali,check-in to your hotel.Spend the evening at leisure,strolling across the Manali Market.Overnight at hotel.
            <br />
            Day4: &quot;Manali&quot; This morning,proceed for a full day tour or Manali,visiting the 450 years old temple dedicated to Hadimba Devi,Jagatsukh and Vashist kund.After thi,visit the Tibetan Monastery and handicraft centre and walk to the nearby picturesque village of Vashist known for its hot sulphur springs.After enjoying these sights,return to your hotel for overnight stay.
            <br />
            Day5: &quot;Manali -Rothang Pass -Manali (51 kms in approximately 2 hours)&quot; Day is at leisure,enjoy the scenic beauty of heavenly himachal.After a memorable experince,return to your hotel for overnight stay.
            <br />
            Day6: &quot;Manali&quot; Day is at leisure,enjoy the scenic beauty of Himachal.
            <br />
            Day7: &quot;Manali to Chandigarh (300 kms in approximately 7-8 hours)&quot; Drive to Chandigarh.Upon arrival,Check in to the hotel.Dinner and overnight stay at the hotel.
            <br />
            Day8: &quot; Depature from Chandigarh &quot; Head all the way to Chandigarh Airport for your onwards jouney.
             
            </p>
        </asp:View>
        
</asp:MultiView>
    
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/login1.aspx">Proceed to book</asp:HyperLink>
    </p>
</asp:Content>

