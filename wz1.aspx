<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="wz1.aspx.cs" Inherits="wz1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" OnFinishButtonClick="Wizard1_FinishButtonClick">
    <WizardSteps>
        <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1"></asp:WizardStep>
        <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2"></asp:WizardStep>
    </WizardSteps>
</asp:Wizard>

</asp:Content>


