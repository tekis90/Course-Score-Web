<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="LessonAdd.aspx.cs" Inherits="courseScoreWeb.LessonAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


<form id="Form1" runat="server">

        <div class="form-group">

            <asp:label for="TxtLName" runat="server" Text="Lesson Name:"></asp:label>
            <asp:textbox ID="TxtLName" runat="server" CssClass="form-control"></asp:textbox>
            <br />
           

        </div>


        <asp:button ID="Button1" runat="server" Text="New Lesson Add" CssClass="btn-success" OnClick="Button1_Click1"  />


    </form>




</asp:Content>

