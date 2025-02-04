<%@ page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="scoreList.aspx.cs" Inherits="courseScoreWeb.scoreList" %>

<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

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
                    <th scope="col">Average</th>
                    <th scope="col">Situation</th>
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
                            <td><%# Eval("avarega") %></td>
                            <td><%# Eval("durum") %></td>


                            <td>
                                <div class="d-flex justify-content-center gap-2">

                                    <asp:hyperlink
                                        ID="HyperLink2"
                                        runat="server"
                                        NavigateUrl='<%# "~/scoreUpdate.aspx?examId=" + Server.UrlEncode(Eval("examId").ToString()) %>'
                                        CssClass="btn-success fa-border">
                                        <i class="fas fa-edit"></i> Update
                                    </asp:hyperlink>
                                </div>
                            </td>
                        </tr>
                    </itemtemplate>
                </asp:repeater>
            </tbody>
        </table>
    </div>



</asp:content>
