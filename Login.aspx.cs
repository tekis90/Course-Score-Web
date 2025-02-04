using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class Login : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=YAZILIM\MESTAN;Initial Catalog=courseScoreWeb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string username = TxtUsername.Text.Trim();
            string password = TxtPassword.Text.Trim();

            if (AuthenticateUser(username, password, "Tbl_Student", "sNumber", "sPassword", "studentDefault.aspx"))
            {
                Session.Add("id", username);
                Response.Redirect("studentDefault.aspx?Id=" + username);
            }
        }

        protected void BtnTeacher_Click(object sender, EventArgs e)
        {
            string username = TxtUsername.Text.Trim();
            string password = TxtPassword.Text.Trim();

            if (AuthenticateUser(username, password, "Tbl_Teacher", "tNumara", "tPassword", "Default.aspx"))
            {
                Session.Add("id", username);
                Response.Redirect("Default.aspx?Id=" + username);
            }
        }

        private bool AuthenticateUser(string username, string password, string tableName, string usernameColumn, string passwordColumn, string redirectPage)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                string query = $"SELECT * FROM {tableName} WHERE {usernameColumn}=@username AND {passwordColumn}=@password";
                using (SqlCommand sqlCommand = new SqlCommand(query, sqlConnection))
                {
                    sqlCommand.Parameters.AddWithValue("@username", username);
                    sqlCommand.Parameters.AddWithValue("@password", password);

                    sqlConnection.Open();
                    using (SqlDataReader data = sqlCommand.ExecuteReader())
                    {
                        if (data.Read())
                        {
                            return true;
                        }
                    }
                }
            }

            return false;
        }
    }
}
