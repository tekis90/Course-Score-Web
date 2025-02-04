<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="AnnouncementAdd.aspx.cs" Inherits="courseScoreWeb.AnnouncementAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <form id="Form1" runat="server">

        <div class="form-group">
            <asp:Label for="TxtATitle" runat="server" Text="Title:"></asp:Label>
            <asp:TextBox ID="TxtaTitle" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <br />

            <asp:Label for="TxtATeacher" runat="server" Text="Teacher:"></asp:Label>
            <asp:DropDownList ID="TxtATeacher" runat="server" CssClass="form-control"></asp:DropDownList>
            <br />
            <br />

            <asp:Label for="TxtAContents" runat="server" Text="Contents:"></asp:Label>
            <textarea id="TxtAContents" cols="20" rows="5" runat="server" class="form-control"></textarea>

            <br />
            <br />

        </div>


        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn-success" OnClick="Button1_Click" />


    </form>














</asp:Content>
