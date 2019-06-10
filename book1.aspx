<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="book1.aspx.cs" Inherits="book1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .newStyle1 {
        background-image: url('Images/sunset.jpg');
        background-repeat: repeat-x;
    }
    .newStyle2 {
        background-image: url('Images/butterfly.jpg');
    }
    .newStyle3 {
        background-image: url('Images/butterfly.jpg');
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="newStyle2">
        book1......<asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" Width="833px" style="margin-bottom: 0px; z-index: 1; left: 10px; top: 72px; position: absolute; height: 635px; width: 833px;" CssClass="newStyle3">
            <WizardSteps>
                <asp:WizardStep runat="server" title="Step 1">
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [package no] AS package_no FROM [price1]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 176px; top: 486px; position: absolute" Text="Display Amount" />
                    <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 407px; top: 603px; position: absolute"></asp:Label>
                    <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 460px; top: 568px; position: absolute"></asp:Label>
                    <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 443px; top: 537px; position: absolute; height: 20px;"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="package_no" DataValueField="package_no" AutoPostBack="True" style="z-index: 1; left: 236px; top: 162px; position: absolute">
                    </asp:DropDownList>
                    <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 106px; top: 163px; position: absolute" Text="Select Package No:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 174px; top: 242px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 108px; top: 243px; position: absolute; height: 22px; width: 49px" Text="children"></asp:Label>
                    <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 170px; top: 356px; position: absolute" Text="Select Hotel"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 381px; top: 243px; position: absolute" Text="children's age must be 3-12"></asp:Label>
                    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 111px; top: 202px; position: absolute; height: 19px; width: 69px" Text="Adult"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" style="z-index: 1; left: 179px; top: 197px; position: absolute"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required" style="z-index: 1; left: 570px; top: 203px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 385px; top: 200px; position: absolute" Text="Adult's age is above  12"></asp:Label>
                    <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 170px; top: 302px; position: absolute; height: 19px;" Text="Hotel Type"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="z-index: 1; left: 250px; top: 298px; position: absolute; height: 27px; width: 141px">
                        <asp:ListItem>2STAR</asp:ListItem>
                        <asp:ListItem>3STAR</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 146px; top: 384px; position: absolute" Text="Room Type"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged1" style="z-index: 1; left: 238px; top: 383px; position: absolute; height: 27px; width: 120px; right: 625px">
                        <asp:ListItem>Maharaja</asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>Delux</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="hotel_name" DataValueField="hotel_name" style="z-index: 1; left: 254px; top: 357px; position: absolute; right: 711px;">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [price1]">
                    </asp:SqlDataSource>
                    <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 306px; top: 600px; position: absolute" Text="Total Amount:"></asp:Label>
                    <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 303px; top: 569px; position: absolute" Text="Children's total Price:"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 520px; top: 360px; position: absolute; height: 133px; width: 187px">
                    </asp:GridView>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*Required" style="z-index: 1; left: 416px; top: 324px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*Required" style="z-index: 1; left: 427px; top: 417px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" style="z-index: 1; left: 573px; top: 242px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 304px; top: 538px; position: absolute; height: 15px" Text="Adult's Total Price:"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Step 2">
                    <asp:Label ID="Label18" runat="server" ForeColor="Red" style="z-index: 1; left: 413px; top: 24px; position: absolute; right: 232px" Text="ENTER DETAILS"></asp:Label>
                    <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 217px; top: 72px; position: absolute" Text="Name:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 282px; top: 70px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label20" runat="server" style="z-index: 1; left: 221px; top: 118px; position: absolute; " Text="Age:"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 278px; top: 115px; position: absolute; height: 16px;"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 278px; top: 161px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" style="z-index: 1; left: 197px; top: 155px; position: absolute" Text="ID proof:"></asp:Label>
                    <asp:Label ID="Label32" runat="server" style="z-index: 1; left: 497px; top: 263px; position: absolute" Text="Payment Option:"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" style="z-index: 1; left: 485px; top: 284px; position: absolute; height: 50px; width: 144px">
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label33" runat="server" style="z-index: 1; left: 491px; top: 117px; position: absolute" Text="Select Bank:"></asp:Label>
                    <asp:Label ID="Label34" runat="server" style="z-index: 1; left: 629px; top: 117px; position: absolute" Text="Or"></asp:Label>
                    <asp:Label ID="Label35" runat="server" style="z-index: 1; left: 698px; top: 115px; position: absolute" Text="Enter Bank Name:"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged" style="z-index: 1; left: 638px; top: 182px; position: absolute"></asp:TextBox>
                    <asp:TextBox ID="TextBox9" runat="server" style="z-index: 1; left: 625px; top: 214px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label36" runat="server" style="z-index: 1; left: 497px; top: 185px; position: absolute" Text="Enter Branch of Bank:"></asp:Label>
                    <asp:Label ID="Label37" runat="server" style="z-index: 1; left: 494px; top: 216px; position: absolute" Text="Enter City of Bank:"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required" style="z-index: 1; left: 428px; top: 71px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required" style="z-index: 1; left: 428px; top: 123px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Required" style="z-index: 1; left: 419px; top: 160px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Required" style="z-index: 1; left: 791px; top: 180px; position: absolute"></asp:RequiredFieldValidator>
                    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                    <asp:TextBox ID="TextBox10" runat="server" style="z-index: 1; left: 684px; top: 143px; position: absolute"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="z-index: 1; left: 497px; top: 138px; position: absolute">
                        <asp:ListItem>Select Bank Name</asp:ListItem>
                        <asp:ListItem>Bank of Baroda</asp:ListItem>
                        <asp:ListItem>PNB</asp:ListItem>
                    </asp:DropDownList>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="step3">
                    <asp:Label ID="Label24" runat="server" style="z-index: 1; left: 176px; top: 159px; position: absolute" Text="Package No:"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label" style="z-index: 1; left: 187px; top: 78px; position: absolute"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Booking Details" style="z-index: 1; left: 176px; top: 119px; position: absolute"></asp:Label>
                    <asp:Label ID="Label25" runat="server" style="z-index: 1; left: 176px; top: 200px; position: absolute;" Text="Adults:"></asp:Label>
                    <asp:Label ID="Label26" runat="server" style="z-index: 1; left: 176px; top: 232px; position: absolute" Text="Children:"></asp:Label>
                    <asp:Label ID="Label27" runat="server" style="z-index: 1; left: 177px; top: 262px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label28" runat="server" style="z-index: 1; left: 176px; top: 295px; position: absolute" Text="Room Type:"></asp:Label>
                    <asp:Label ID="Label29" runat="server" style="z-index: 1; left: 270px; top: 337px; position: absolute; "></asp:Label>
                    <asp:Label ID="Label30" runat="server" style="z-index: 1; left: 176px; top: 337px; position: absolute" Text="Total Amount:"></asp:Label>
                    <asp:Label ID="Label38" runat="server" style="z-index: 1; left: 275px; top: 157px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label39" runat="server" style="z-index: 1; left: 244px; top: 201px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label40" runat="server" style="z-index: 1; left: 246px; top: 230px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label41" runat="server" style="z-index: 1; left: 264px; top: 297px; position: absolute" Text="Label"></asp:Label>
                    <asp:Label ID="Label42" runat="server" style="z-index: 1; left: 179px; top: 368px; position: absolute" Text="Label"></asp:Label>
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

