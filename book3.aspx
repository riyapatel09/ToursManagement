<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="book3.aspx.cs" Inherits="book3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #Select1 {
            z-index: 1;
            left: 236px;
            top: 192px;
            position: absolute;
            height: 16px;
            width: 183px;
        }
    .newStyle2 {
        background-image: url('Images/butterfly.jpg');
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="background-image: url('Images/sunset.jpg')">
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" style="z-index: 1; left: 20px; top: 106px; position: absolute; height: 657px; width: 1089px" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1" StepType="Start">
                    <br />
                    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 95px; top: 8px; position: absolute; height: 22px; width: 136px; right: 858px" Text="Select Package No:"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="package_no" DataValueField="package_no" style="z-index: 1; left: 217px; top: 9px; position: absolute" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label42" runat="server" style="z-index: 1; left: 91px; top: 236px; position: absolute" Text="Starting Date of selected package is shown here,Select the Date on which you want to travell"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [package no] AS package_no FROM [price1]"></asp:SqlDataSource>
                    <asp:TextBox ID="TextBox8" runat="server" style="z-index: 1; left: 95px; top: 272px; position: absolute" TextMode="Date"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" style="z-index: 1; left: 93px; top: 40px; position: absolute; height: 188px; width: 259px" OnDayRender="Calendar1_DayRender" OnDataBinding="Button2_Click"></asp:Calendar>
                    <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 125px; top: 433px; position: absolute" Text="Select Hotel:"></asp:Label>
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 412px; top: 348px; position: absolute; height: 16px; width: 200px" Text="Childerens' age must be 3-12"></asp:Label>
                    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 398px; top: 304px; position: absolute; height: 30px; width: 142px" Text="Adult's age above 12"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 220px; top: 343px; position: absolute"></asp:TextBox>
                    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 217px; top: 310px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 171px; top: 311px; position: absolute; height: 19px;" Text="Adult:"></asp:Label>
                    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 157px; top: 342px; position: absolute" Text="Children:"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" style="z-index: 1; left: 486px; top: 307px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 140px; top: 373px; position: absolute; height: 20px; width: 93px" Text="Hotel Type:"></asp:Label>
                    <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 254px; top: 603px; position: absolute"></asp:Label>
                    <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 256px; top: 626px; position: absolute"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList3" ErrorMessage="*Required" style="z-index: 1; left: 285px; top: 376px; position: absolute"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [hotel_name] FROM [price1] WHERE (([package no] = @package_no) AND ([hotel] = @hotel))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="package_no" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="RadioButtonList3" Name="hotel" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" style="z-index: 1; left: 210px; top: 370px; position: absolute; height: 27px; width: 82px">
                        <asp:ListItem>2STAR</asp:ListItem>
                        <asp:ListItem>3STAR</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 253px; top: 579px; position: absolute"></asp:Label>
                    <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 136px; top: 579px; position: absolute" Text="Adult's total price:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" style="z-index: 1; left: 538px; top: 347px; position: absolute"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*Required" style="z-index: 1; left: 303px; top: 433px; position: absolute; height: 52px;"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 607px; top: 512px; position: absolute; height: 133px; width: 187px">
                    </asp:GridView>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="hotel_name" DataValueField="hotel_name" style="z-index: 1; left: 209px; top: 432px; position: absolute">
                    </asp:DropDownList>
                    <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 129px; top: 463px; position: absolute; height: 29px; width: 90px; right: 870px" Text="Room Type:"></asp:Label>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 10px; top: 545px; position: absolute" Text="Check Availability and Display Amount" />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" style="z-index: 1; left: 203px; top: 459px; position: absolute; height: 72px; width: 106px">
                        <asp:ListItem>Maharaja</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>Delux</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 122px; top: 604px; position: absolute" Text="Childrens' total price:"></asp:Label>
                    <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 168px; top: 625px; position: absolute" Text="Total Amount:"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2" StepType="Step">
                    <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 257px; top: 46px; position: absolute" Text="Name :"></asp:Label>
                    <asp:Label ID="Label17" runat="server" ForeColor="#FF3300" style="z-index: 1; left: 417px; top: 13px; position: absolute" Text="ENTER DETAILS"></asp:Label>
                    <asp:Label ID="Label18" runat="server" style="z-index: 1; left: 256px; top: 89px; position: absolute" Text="Age : "></asp:Label>
                    <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 254px; top: 136px; position: absolute" Text="ID Proof : "></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 317px; top: 48px; position: absolute"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 312px; top: 88px; position: absolute"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 328px; top: 135px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label20" runat="server" style="z-index: 1; left: 621px; top: 51px; position: absolute" Text="Select Bank:"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" style="z-index: 1; left: 705px; top: 94px; position: absolute">
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Navsari</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" style="z-index: 1; left: 705px; top: 51px; position: absolute" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        <asp:ListItem>Select bank</asp:ListItem>
                        <asp:ListItem>Central Bank Of India</asp:ListItem>
                        <asp:ListItem>Canara Bank</asp:ListItem>
                        <asp:ListItem>Corporation Bank</asp:ListItem>
                        <asp:ListItem>City Union Bank</asp:ListItem>
                        <asp:ListItem>Development Credit Bank</asp:ListItem>
                        <asp:ListItem>Deutsche Bank</asp:ListItem>
                        <asp:ListItem>IDBI Bank</asp:ListItem>
                        <asp:ListItem>ICICI Bank</asp:ListItem>
                        <asp:ListItem>Indian Overseas Bank</asp:ListItem>
                        <asp:ListItem>Indian Bank</asp:ListItem>
                        <asp:ListItem>ING Vysya Bank</asp:ListItem>
                        <asp:ListItem>Induslnd Bank</asp:ListItem>
                        <asp:ListItem>Karnataka Bank</asp:ListItem>
                        <asp:ListItem>Jammu and Kasmir Bank</asp:ListItem>
                        <asp:ListItem>Kotak Bank</asp:ListItem>
                        <asp:ListItem>karur Vysya Bank</asp:ListItem>
                        <asp:ListItem>Oriental Bank Of Commerce</asp:ListItem>
                        <asp:ListItem>Laxmi Vilas Bank </asp:ListItem>
                        <asp:ListItem>South Indian Bank</asp:ListItem>
                        <asp:ListItem>Punjab National Bank</asp:ListItem>
                        <asp:ListItem>State Bank Of India</asp:ListItem>
                        <asp:ListItem>State Ban Of Hydrabad</asp:ListItem>
                        <asp:ListItem>Union Bank of India</asp:ListItem>
                        <asp:ListItem>UCO Bank</asp:ListItem>
                        <asp:ListItem>Vijaya Bank</asp:ListItem>
                        <asp:ListItem>United Bank of India</asp:ListItem>
                        <asp:ListItem>Yes Bank  Ltd</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label21" runat="server" style="z-index: 1; left: 807px; top: 21px; position: absolute" Text="OR"></asp:Label>
                    <asp:Label ID="Label22" runat="server" style="z-index: 1; left: 847px; top: 50px; position: absolute; height: 30px" Text="Enter Bank : "></asp:Label>
                    <asp:Label ID="Label23" runat="server" style="z-index: 1; left: 633px; top: 97px; position: absolute; bottom: 541px;" Text="select city"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 932px; top: 48px; position: absolute"></asp:TextBox>
                    <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 926px; top: 93px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label24" runat="server" style="z-index: 1; left: 792px; top: 93px; position: absolute" Text="Enter Bank's Branch : "></asp:Label>
                    <asp:Label ID="Label25" runat="server" style="z-index: 1; left: 712px; top: 199px; position: absolute" Text="Payment Type : "></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" style="z-index: 1; left: 702px; top: 220px; position: absolute; height: 27px; width: 136px">
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Debit card</asp:ListItem>
                    </asp:RadioButtonList>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required" style="z-index: 1; left: 454px; top: 51px; position: absolute"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required" style="z-index: 1; left: 459px; top: 92px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required" style="z-index: 1; left: 473px; top: 137px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Required" style="z-index: 1; left: 887px; top: 130px; position: absolute; bottom: 307px;"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="RadioButtonList4" ErrorMessage="*Required" style="z-index: 1; left: 829px; top: 207px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                   
                    <asp:DropDownList ID="DropDownList5" runat="server" style="z-index: 1; left: 705px; top: 138px; position: absolute">
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label44" runat="server" style="z-index: 1; left: 605px; top: 142px; position: absolute" Text="Select State"></asp:Label>
                   
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="Step 3">
                    <asp:Label ID="Label26" runat="server" style="z-index: 1; left: 244px; top: 40px; position: absolute; "></asp:Label>
                    <asp:Label ID="Label27" runat="server" ForeColor="Red" style="z-index: 1; left: 243px; top: 72px; position: absolute" Text="Booking Details :"></asp:Label>
                    <asp:Label ID="Label28" runat="server" ForeColor="Yellow" style="z-index: 1; left: 243px; top: 112px; position: absolute; " Text="Package NO:"></asp:Label>
                    <asp:Label ID="Label29" runat="server" ForeColor="Yellow" style="z-index: 1; left: 243px; top: 156px; position: absolute; " Text="Adults:"></asp:Label>
                    <asp:Label ID="Label30" runat="server" ForeColor="Yellow" style="z-index: 1; left: 236px; top: 195px; position: absolute" Text="Children :"></asp:Label>
                    <asp:Label ID="Label31" runat="server" style="z-index: 1; left: 240px; top: 233px; position: absolute"></asp:Label>
                    <asp:Label ID="Label32" runat="server" style="z-index: 1; left: 242px; top: 274px; position: absolute; " Text="Room Type : "></asp:Label>
                    <asp:Label ID="Label33" runat="server" style="z-index: 1; left: 243px; top: 308px; position: absolute; height: 17px;" Text="Total Amount : "></asp:Label>
                    <asp:Label ID="Label34" runat="server" style="z-index: 1; left: 340px; top: 111px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label35" runat="server" style="z-index: 1; left: 296px; top: 157px; position: absolute"></asp:Label>
                    <asp:Label ID="Label36" runat="server" style="z-index: 1; left: 301px; top: 198px; position: absolute"></asp:Label>
                    <asp:Label ID="Label37" runat="server" style="z-index: 1; left: 332px; top: 277px; position: absolute; "></asp:Label>
                    <asp:Label ID="Label38" runat="server" style="z-index: 1; left: 352px; top: 312px; position: absolute; right: 677px;"></asp:Label>
                    <asp:Label ID="Label41" runat="server" style="z-index: 1; left: 370px; top: 340px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label43" runat="server" style="z-index: 1; left: 246px; top: 338px; position: absolute" Text="Journy Starts from:"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
       
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tours]"></asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

