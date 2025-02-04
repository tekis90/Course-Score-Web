<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="courseScoreWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-hover table-striped table-bordered text-center align-middle">
  <thead class="thead-dark" style="background-color: #0d47a1; color: #ffffff;">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Surname</th>
      <th scope="col">Phone</th>
      <th scope="col">Mail</th>
      <th scope="col">Password</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <tr>
          <td><%# Eval("sId") %></td>
          <td><%# Eval("sName") %></td>
          <td><%# Eval("sSurname") %></td>
          <td><%# Eval("sPhone") %></td>
          <td><%# Eval("sMail") %></td>
          <td>******</td> <!-- Şifreyi gizli göstermek için -->
          <td>
            <div class="d-flex justify-content-center gap-2">
              <asp:HyperLink 
                ID="HyperLink1" 
                runat="server" 
                NavigateUrl='<%# "~/studentDelete.aspx?sId=" + Server.UrlEncode(Eval("sId").ToString()) %>' 
                CssClass="btn btn-sm btn-danger">
                <i class="fas fa-trash-alt"></i> Sil
              </asp:HyperLink>
              <asp:HyperLink 
                ID="HyperLink2" 
                runat="server"    
                NavigateUrl='<%# "~/studentUpdate.aspx?sId=" + Server.UrlEncode(Eval("sId").ToString()) %>' 
                CssClass="btn btn-sm btn-success">
                <i class="fas fa-edit"></i> Güncelle
              </asp:HyperLink>
            </div>
          </td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
  </tbody>
</table>

     <%-- <th scope="row">1</th>--%>


</asp:Content>
