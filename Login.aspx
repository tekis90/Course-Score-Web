<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="courseScoreWeb.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <style>
        
        body {
            background-image: url('backgrand.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

     
        .card {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: bold;
        }

        .btn-primary {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" CssClass="center-block">
        <div class="card">
            <h3 class="text-center mb-4">Login</h3>
            <div class="form-group mb-3">
                <label for="TxtUsername" class="form-label">Username</label>
                <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control" Placeholder="Enter your username"></asp:TextBox>
            </div>
            <div class="form-group mb-3">
                <label for="TxtPassword" class="form-label">Password</label>
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter your password"></asp:TextBox>
            </div>
            <div class="form-check mb-3">
                <asp:CheckBox ID="ChkRememberMe" runat="server" CssClass="form-check-input" />
                <label for="ChkRememberMe" class="form-check-label">Remember Me</label>
            </div>
            <div class="d-grid">
                <asp:Button ID="BtnLogin" runat="server" Text="Login Student" CssClass="btn btn-primary" OnClick="BtnLogin_Click" />
            </div>
             <div class="d-grid">
                <asp:Button ID="BtnTeacher" runat="server" Text="Login Teacher" CssClass="btn btn-primary" OnClick="BtnTeacher_Click"  />
            </div>
            <div class="text-center mt-3">
                <small class="text-muted">Don't have an account? <a href="Register.aspx">Sign Up</a></small>
            </div>
        </div>
    </form>
</body>
</html>
