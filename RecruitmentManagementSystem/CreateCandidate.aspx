<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateCandidate.aspx.cs" Inherits="RecruitmentManagementSystem.CreateCandidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 84%;
            height: 612px;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            width: 23px;
        }
        .auto-style4 {
            width: 603px;
        }
        .auto-style5 {
            width: 231px;
            height: 54px;
        }
        .auto-style6 {
            width: 23px;
            height: 54px;
        }
        .auto-style7 {
            width: 603px;
            height: 54px;
        }
        .auto-style9 {
            width: 231px;
            height: 63px;
        }
        .auto-style10 {
            width: 23px;
            height: 63px;
        }
        .auto-style11 {
            width: 603px;
            height: 63px;
        }
        .auto-style17 {
            height: 65px;
        }
        .auto-style18 {
            height: 65px;
            width: 603px;
        }
        .auto-style20 {
            height: 60px;
        }
        .auto-style21 {
            width: 231px;
            height: 60px;
        }
        .auto-style22 {
            width: 23px;
            height: 60px;
        }
        .auto-style23 {
            width: 603px;
            height: 60px;
        }
        .auto-style24 {
            width: 254px;
            height: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
<table align="center" class="auto-style1">
    <tr>
        <td colspan="5"><h2 style="font-family: Arial, Helvetica, sans-serif; font-weight: bold">ADD CANDIDATE</h2></td>
    </tr>
    <tr>
        <td class="auto-style21">
            <asp:Label ID="Label1" runat="server" Text="Candidate Name"></asp:Label>
        </td>
        <td class="auto-style22">:</td>
        <td class="auto-style23" colspan="2">
            <asp:TextBox ID="Candidate_Name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style20"></td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Text="PAN Number"></asp:Label>
        </td>
        <td class="auto-style10">:</td>
        <td class="auto-style24">
            <asp:TextBox ID="PAN" runat="server"></asp:TextBox>

        </td>
        <%--<td rowspan="5">
            <table align="left" class="auto-style8">
                <tr>
                    <td>
                        <asp:Calendar ID="Calender1" Visible="false" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>
                    </td>
                </tr>
            </table>
        </td>--%>
        <td class="auto-style11">
            
            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>--%>
            <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" ErrorMessage="Please Check PAN Format" ControlToValidate="PAN" ValidationExpression="[A-Za-z]{5}\d{4}[A-Za-z]{1}" CssClass="text-danger"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label3" runat="server" Text="Inteview Date"></asp:Label>
        </td>
        <td class="auto-style6">:</td>
        <td class="auto-style7" colspan="2">
            <asp:TextBox ID="Interview_date" TextMode="Date" runat="server" Width="131px"></asp:TextBox>
        <%--&nbsp;
            <asp:ImageButton id="imgbutton" runat="server" OnClick="imgbutton_Click" ImageUrl="~/Candidate/calendar.png" Width="35px" Height="35px"/>--%>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Candidate Level"></asp:Label>
        </td>
        <td class="auto-style3">:</td>
        <td class="auto-style4" colspan="2">
            <asp:TextBox ID="Candidate_Level" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
        </td>
        <td class="auto-style3">:</td>
        <td class="auto-style4" colspan="2">
            <asp:TextBox ID="Status" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style17">
            <asp:Button ID="Create" runat="server" Text="Create" OnClick="Create_Click" />
        </td>
        <td class="auto-style18" colspan="2">
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:Label ID="Message" runat="server"></asp:Label>
        </td>
    </tr>
</table>
        
    </div>
</asp:Content>
