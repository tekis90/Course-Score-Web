<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="LessonList.aspx.cs" Inherits="courseScoreWeb.LessonList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover table-bordered">
        <thead class="thead-dark" style="background-color: #bbdefb;">
            <tr>
                <th scope="col">Lesson Id</th>
                <th scope="col">Lesson Name</th>
                <th scope="col">Transactions</th>
            </tr>
        </thead>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("cId") %></td>
                        <td><%# Eval("cName") %></td>
                        <td>
                            <asp:HyperLink
                                ID="HyperLink1"
                                NavigateUrl='<%# "~/LessonDelete.aspx?cId=" + Server.UrlEncode(Eval("cId").ToString()) %>'
                                runat="server"
                                CssClass="btn btn-danger">
                                Delete
                            </asp:HyperLink>
                            <asp:HyperLink
                                ID="HyperLink2"
                                NavigateUrl='<%# "~/LessonUpdate.aspx?cId=" + Server.UrlEncode(Eval("cId").ToString()) %>'
                                runat="server"
                                CssClass="btn btn-success">
                                Update
                            </asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

    <!-- Yeni bir ders eklemek için bağımsız bir buton -->
    <asp:HyperLink
        ID="HyperLink3"
        NavigateUrl="~/LessonAdd.aspx"
        runat="server"
        CssClass="btn btn-info mt-3">
        Add New Lesson
    </asp:HyperLink>







</asp:Content>
