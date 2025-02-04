<%@ Page Title="Statistics" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="courseScoreWeb.Statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="container mt-4">
            <h2 class="text-center mb-4">Course Statistics</h2>

            <div class="form-group">
                <asp:Label AssociatedControlID="TxtTotalStudent" runat="server" Text="Total Students:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TxtTotalStudent" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>

            <div class="form-group mt-3">
                <asp:Label AssociatedControlID="TxtTotalTeachers" runat="server" Text="Total Teachers:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TxtTotalTeachers" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>

            <div class="form-group mt-3">
                <asp:Label AssociatedControlID="TxtTotalLessons" runat="server" Text="Total Lessons:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TxtTotalLessons" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>

         

            <div class="form-group mt-3">
                <asp:Label AssociatedControlID="TextMathematics" runat="server" Text="Mathematics Grade Point Average:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextMathematics" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
            </div>

           
        </div>
    </form>
</asp:Content>
