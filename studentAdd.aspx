<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="studentAdd.aspx.cs" Inherits="courseScoreWeb.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




    <form id="Form1" runat="server">

        <div class="form-group">
            <asp:Label for="TxtStName" runat="server" Text="Student Name:"></asp:Label>
            <asp:TextBox ID="TxtStName" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <br />

            <asp:Label for="TxtStSurname" runat="server" Text="Student Surname:"></asp:Label>
            <asp:TextBox ID="TxtStSurname" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <br />

            <asp:Label for="TxtStPhone" runat="server" Text="Student Phone:"></asp:Label>
            <asp:TextBox ID="TxtStPhone" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <br />

            <asp:Label for="TxtStMail" runat="server" Text="Student Mail:"></asp:Label>
            <asp:TextBox ID="TxtStMail" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <br />

            <asp:Label for="TxtStPassword" runat="server" Text="Student Password:"></asp:Label>
            <asp:Label for="TxtStPassword" runat="server" Text="Student Password:"></asp:Label>
            <asp:TextBox ID="TxtStPassword" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <br />

            <asp:Label for="TxtStImg" runat="server" Text="Student Photo Link:"></asp:Label>
            <asp:TextBox ID="TxtStImg" runat="server" CssClass="form-control"></asp:TextBox>





        </div>


        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn-success" OnClick="Button1_Click" />


    </form>











</asp:Content>
