<%@ Page Title="" Language="C#" MasterPageFile="~/studentMasterPage.Master" AutoEventWireup="true" CodeBehind="MyGrades.aspx.cs" Inherits="courseScoreWeb.MyGrades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <div class="table-responsive">
        <table class="table table-hover table-bordered text-center align-middle">
            <thead style="background-color: #2196f3; color: #ffffff; font-weight: bold;">
                <tr>
                   <%-- <th scope="col">Exam ID</th>--%>
                    <th scope="col">Student ID</th>
                    <th scope="col">Name Surname</th>
                    <th scope="col">Lesson Name</th>
                    <th scope="col">Exam 1</th>
                    <th scope="col">Exam 2</th>
                    <th scope="col">Exam 3</th>
                   
                </tr>
            </thead>
            <tbody>
                <asp:repeater ID="Repeater1" runat="server">
                    <itemtemplate>
                        <tr>
                          <%--  <td><%# Eval("examId") %></td>--%>
                            <td><%# Eval("sId") %></td>
                            <td><%# Eval("StudentNameSurname") %></td>
                            <td><%# Eval("cName") %></td>
                            <td><%# Eval("exam1") %></td>
                            <td><%# Eval("exam2") %></td>
                            <td><%# Eval("exam3") %></td>
                        


                            <td>
                                <div class="d-flex justify-content-center gap-2">

                                </div>
                            </td>
                        </tr>
                    </itemtemplate>
                </asp:repeater>
            </tbody>
        </table>
    </div>







</asp:Content>
