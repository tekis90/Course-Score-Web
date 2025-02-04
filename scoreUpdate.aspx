<%@ page Title="" Language="C#" MasterPageFile="~/teacher.Master" AutoEventWireup="true" CodeBehind="scoreUpdate.aspx.cs" Inherits="courseScoreWeb.scoreUpdate" %>

<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server" style="max-width: 600px; margin: 0 auto; background-color: #f9f9f9; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <fieldset class="form-group" style="border: none;">
            <legend style="font-size: 24px; color: #4CAF50; font-weight: bold; text-align: center;">Update Score Information</legend>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtStId" runat="server" style="font-weight: bold; color: #333;">Student ID:</label>
                <asp:textbox ID="TxtStId" runat="server" CssClass="form-control" placeholder="Enter student ID" Style="border-radius: 5px; padding: 10px; font-size: 16px;" />
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtStNameSurname" runat="server" style="font-weight: bold; color: #333;">Student Name and Surname:</label>
                <asp:textbox ID="TxtStNameSurname" runat="server" CssClass="form-control" placeholder="Enter student name and surname" Style="border-radius: 5px; padding: 10px; font-size: 16px;" />
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtLesson" runat="server" style="font-weight: bold; color: #333;">Lesson:</label>
                <asp:textbox ID="TxtLesson" runat="server" CssClass="form-control" placeholder="Select a lesson" Style="border-radius: 5px; padding: 20px; font-size: 20px;">
                    
                </asp:textbox>
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtExam1" runat="server" style="font-weight: bold; color: #333;">Exam 1 Score:</label>
                <asp:textbox ID="TxtExam1" runat="server" CssClass="form-control" placeholder="Enter Exam 1 score" Style="border-radius: 5px; padding: 10px; font-size: 16px;" />
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtExam2" runat="server" style="font-weight: bold; color: #333;">Exam 2 Score:</label>
                <asp:textbox ID="TxtExam2" runat="server" CssClass="form-control" placeholder="Enter Exam 2 score" Style="border-radius: 5px; padding: 10px; font-size: 16px;" />
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtExam3" runat="server" style="font-weight: bold; color: #333;">Exam 3 Score:</label>
                <asp:textbox ID="TxtExam3" runat="server" CssClass="form-control" placeholder="Enter Exam 3 score" Style="border-radius: 5px; padding: 10px; font-size: 16px;" />
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtAverage" runat="server" style="font-weight: bold; color: #333;">Average Score:</label>
                <asp:textbox ID="TxtAverage" runat="server" CssClass="form-control" placeholder="Enter average score" ReadOnly="true" Style="border-radius: 5px; padding: 10px; font-size: 16px; background-color: #e9e9e9;" />
            </div>

            <div class="form-group" style="margin-bottom: 20px;">
                <label for="TxtSituation" runat="server" style="font-weight: bold; color: #333;">Situation (Status):</label>
                <asp:textbox ID="TxtSituation" runat="server" CssClass="form-control" placeholder="Enter student status (e.g., passed, failed)" Style="border-radius: 5px; padding: 10px; font-size: 16px;" />
            </div>

            <div class="form-group text-center">
                <asp:button ID="btnCalculate" runat="server" Text="Calculate" CssClass="btn btn-info" Style="padding: 10px 20px; font-size: 16px; border-radius: 5px; margin-right: 10px;" OnClick="btnCalculate_Click" />
                <asp:button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success" Style="padding: 10px 20px; font-size: 16px; border-radius: 5px;" OnClick="btnUpdate_Click" />
            </div>
        </fieldset>
    </form>










</asp:content>
