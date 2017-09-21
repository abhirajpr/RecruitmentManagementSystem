<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RecruitmentManagementSystem.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #gridview{
            margin:auto;
            padding-left:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
    &nbsp;<div class="container" style="margin:auto">

       <table align="centre" class="auto-style1">
           <tr>
               <td style="font-family: 'TImes New Roman', Times, serif">
                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateCandidate.aspx">Create New Candidate</asp:HyperLink>
                   <br />
                   <div id="gridview" class="jumbotron" style="font-family: 'Times New Roman', Times, serif">

                   
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="69px" Width="699px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                       <Columns>
                           <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                           <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                           <asp:BoundField DataField="PANNumber" HeaderText="PANNumber" SortExpression="PANNumber" />
                           <asp:BoundField DataField="InterviewDate" HeaderText="InterviewDate" SortExpression="InterviewDate" DataFormatString="{0:dd/MM/yyyy}" />
                           <asp:BoundField DataField="CandidateLevel"  HeaderText="CandidateLevel" SortExpression="CandidateLevel" >
                           <ItemStyle HorizontalAlign="Right" />
                           </asp:BoundField>
                           <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                           <asp:CommandField ShowEditButton="True" />
                       </Columns>
                   </asp:GridView>
                       </div>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecruitmentManagementConnectionString %>" SelectCommand="SELECT * FROM [Candidate]"></asp:SqlDataSource>
               </td>
           </tr>
       </table>

   </div>
</asp:Content>
