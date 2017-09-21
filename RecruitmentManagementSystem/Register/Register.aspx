<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RecruitmentManagementSystem.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <table align="center" class="auto-style1">
    <tr>

        <td class="auto-style8" colspan="4"><h2 style="font-family: Arial, Helvetica, sans-serif; font-weight: bold">REGISTER</h2>
            <p style="font-family: Arial, Helvetica, sans-serif; font-weight: bold">&nbsp;</p></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="auto-style3">
            :</td>
        <td class="auto-style2">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style3">
            :</td>
        <td class="auto-style2">
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style3">
            :</td>
        <td class="auto-style2">
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" CssClass="text-danger" ErrorMessage="Enter a Username"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style3">
            :</td>
        <td class="auto-style2">
            <asp:TextBox ID="Password"  runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style3">
            :</td>
        <td class="auto-style2">
            <asp:TextBox ID="ConfirmPassword"  runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" ErrorMessage="CompareValidator"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Button ID="Register_Button" runat="server" Text="Register" OnClick="Register_Button_Click" />
        </td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Label ID="Message" runat="server"></asp:Label>
        </td>
    </tr>
</table>
        </div>
    <br />

&nbsp;&nbsp;&nbsp; 
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 95%;
        height: 323px;
    }
    .auto-style2 {
        width: 251px;
    }
    .auto-style3 {
        width: 23px;
    }
    .auto-style4 {
        width: 172px;
    }
        .auto-style8 {
            height: 17px;
        }
    </style>

</asp:Content>

