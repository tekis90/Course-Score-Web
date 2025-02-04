<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="AnnouncementUpdate.aspx.cs" Inherits="courseScoreWeb.AnnouncementUpdate" %>
<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <asp:label for="TxtAId" runat="server" Text="Id:"></asp:label>
            <asp:textbox ID="TxtAId" runat="server" CssClass="form-control"></asp:textbox>
            <br />
            <br />

            <asp:label for="TxtATitle" runat="server" Text="Title:"></asp:label>
            <asp:textbox ID="TxtaTitle" runat="server" CssClass="form-control"></asp:textbox>
            <br />
            <br />

            <asp:label for="TxtATeacher" runat="server" Text="Teacher:"></asp:label>
            <asp:dropdownlist ID="TxtATeacher" runat="server" CssClass="form-control"></asp:dropdownlist>
            <br />
            <br />

            <asp:label for="TxtAContents" runat="server" Text="Contents:"></asp:label>
            <textarea id="TxtAContents" cols="20" rows="5" runat="server" class="form-control"></textarea>

            <br />
            <br />

        </div>


        <asp:button ID="Button1" runat="server" Text="Update" CssClass="btn-success" OnClick="Button1_Click"  />


    </form>




</asp:content>
