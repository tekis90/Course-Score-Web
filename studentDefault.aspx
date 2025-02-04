<%@ Page Title="" Language="C#" MasterPageFile="~/studentMasterPage.Master" AutoEventWireup="true" CodeBehind="studentDefault.aspx.cs" Inherits="courseScoreWeb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="container mt-4">

            <h2 class="text-center mb-4">My Profile</h2>

            <div class="form-group">
                <asp:TextBox ID="TxtNumber" runat="server" CssClass="form-control" Enabled="false">Number</asp:TextBox>
            </div>

            <div class="form-group mt-3">
                <asp:TextBox ID="TxtNameSurname" runat="server" CssClass="form-control" Enabled="false">Names Surname</asp:TextBox>
            </div>

            <div class="form-group mt-3">
                <asp:TextBox ID="TxtNamePhone" runat="server" CssClass="form-control" Enabled="false">Phone</asp:TextBox>
            </div>

         

            <div class="form-group mt-3">
                <asp:TextBox ID="TxtNamePassword" runat="server" CssClass="form-control" Enabled="false">Password</asp:TextBox>
            </div>

           
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn-primary active" OnClick="Button1_Click" Text="Update" />
    </form>


</asp:Content>
