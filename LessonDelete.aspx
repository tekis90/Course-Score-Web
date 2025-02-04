<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="LessonDelete.aspx.cs" Inherits="courseScoreWeb.LessonDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">





    <form id="Form1" runat="server">

        <div class="form-group">

            <asp:Label for="TxtLessonId" runat="server"  Text="Lesson Id:" CssClass="label-info" Font-Size="Medium" ></asp:Label>
            <asp:TextBox ID="TxtLessonId" runat="server" Font-Size="Medium"></asp:TextBox>
 
            <br />

            <asp:Label for="TxtLessonName" runat="server"  Text="Lesson Name:" CssClass="label-info" Font-Size="Medium" ></asp:Label>
            <asp:TextBox ID="TxtLessonName" runat="server" Font-Size="Medium"></asp:TextBox>

              <br />



        </div>


        <asp:button ID="Button1" runat="server" Text="Delete" CssClass="btn-success" OnClick="Button1_Click"   />


    </form>

</asp:Content>
