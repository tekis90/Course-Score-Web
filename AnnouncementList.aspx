<%@ page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="AnnouncementList.aspx.cs" Inherits="courseScoreWeb.AnnouncementList" %>

<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-hover table-bordered">
        <thead class="thead-dark" style="background-color: #bbdefb;">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Title</th>
                <th scope="col">Announcement</th>
                <th scope="col">Teacher</th>
                <th scope="col">Transactions</th>



            </tr>
        </thead>


        <tbody>



            <asp:repeater ID="Repeater1" runat="server">

                <itemtemplate>

                    <tr>
                        <td><%#Eval("aId") %></td>
                        <td><%#Eval("aTitle") %></td>
                        <td><%#Eval("aContents") %></td>
                        <td><%#Eval("aTeacher") %></td>
                        <td>

                            <asp:hyperlink
                                ID="HyperLink1"
                                NavigateUrl='<%# "~/AnnouncementDelete.aspx?aId=" + Server.UrlEncode(Eval("aId").ToString()) %>'
                                runat="server"
                                CssClass="btn-danger fa-border">
                    Delete
                            </asp:hyperlink>
                            <asp:hyperlink
                                ID="HyperLink2"
                                NavigateUrl='<%# "~/AnnouncementUpdate.aspx?aId=" + Server.UrlEncode(Eval("aId").ToString()) %>'
                                runat="server"
                                CssClass="btn-success fa-border">
                    Update
                            </asp:hyperlink>



                            <%--                    NavigateUrl='<%# "~/studentUpdate.aspx?sId=" + Server.UrlEncode(Eval("sId").ToString()) %>' --%>

                        </td>
                    </tr>
                </itemtemplate>



            </asp:repeater>






        </tbody>


    </table>













</asp:content>
