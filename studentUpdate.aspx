<%@ page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="studentUpdate.aspx.cs" Inherits="courseScoreWeb.studentUpdate" %>

<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <asp:label for="TxtStId" runat="server" Text="Student Id:"></asp:label>
            <asp:textbox ID="TxtStId" runat="server" CssClass="form-control"></asp:textbox>
            <br />
            <br />
            <asp:label for="TxtStName" runat="server" Text="Student Name:"></asp:label>
            <asp:textbox ID="TxtStName" runat="server" CssClass="form-control"></asp:textbox>
            <br />
            <br />

            <asp:label for="TxtStSurname" runat="server" Text="Student Surname:"></asp:label>
            <asp:textbox ID="TxtStSurname" runat="server" CssClass="form-control"></asp:textbox>
            <br />
            <br />

            <asp:label for="TxtStPhone" runat="server" Text="Student Phone:"></asp:label>
            <asp:textbox ID="TxtStPhone" runat="server" CssClass="form-control"></asp:textbox>

            <br />
            <br />

            <asp:label for="TxtStMail" runat="server" Text="Student Mail:"></asp:label>
            <asp:textbox ID="TxtStMail" runat="server" CssClass="form-control"></asp:textbox>

            <br />
            <br />

            <asp:label for="TxtStPassword" runat="server" Text="Student Password:"></asp:label>
            <asp:textbox ID="TxtStPassword" runat="server" CssClass="form-control"></asp:textbox>

            <br />
            <br />

            <asp:label for="TxtStImg" runat="server" Text="Student Photo Link:"></asp:label>
            <asp:textbox ID="TxtStImg" runat="server" CssClass="form-control"></asp:textbox>





        </div>


        <asp:button ID="Button1" runat="server" Text="Update" CssClass="btn-success" OnClick="Button1_Click" />


    </form>



</asp:content>
