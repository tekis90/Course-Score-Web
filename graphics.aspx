<%@ Page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="graphics.aspx.cs" Inherits="courseScoreWeb.graphics" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 664px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <form id="form1" runat="server">
      <table class="table table-hover table-striped table-bordered text-center align-middle">

        <tr>
            <td class="auto-style1">
                <asp:Chart ID="Chart1" runat="server" Width="500px" Height="500px" IsMapAreaAttributesEncoded="True" IsSoftShadows="False">
                    <series>
                        <asp:Series Name="G1" ChartType="Pie">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                    <Titles>
                        <asp:Title Name="Lessons" Text="Lessons">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Chart ID="Chart2" runat="server" Width="500px" Height="500px">
                    <series>
                        <asp:Series Name="G2">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
        </tr>
        </table>
</form>



</asp:Content>
