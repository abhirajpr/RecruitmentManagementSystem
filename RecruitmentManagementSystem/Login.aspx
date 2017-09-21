<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RecruitmentManagementSystem.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" class="auto-style1">
        <tr>

            <td colspan="3">
                <h2 class="auto-style2">LOGIN</h2></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>:</td>
            <td>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Login_Button" runat="server" Text="Login" OnClick="Login_Button_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Message" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 89%;
            height: 260px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>

