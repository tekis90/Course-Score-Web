using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

namespace courseScoreWeb
{
    public partial class graphics : System.Web.UI.Page
    {
        private string connectionString = @"Data Source=YAZILIM\MESTAN;Initial Catalog=courseScoreWeb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                try
                {
                    sqlConnection.Open();

                    LoadChartData("G1", sqlConnection);

                    LoadChartData("G2", sqlConnection);
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
                }
            }
        }

        private void LoadChartData(string chartName, SqlConnection sqlConnection)
        {
            string query = "Execute " + chartName;
            using (SqlCommand sqlCommand = new SqlCommand(query, sqlConnection))
            {
                using (SqlDataReader sqlData = sqlCommand.ExecuteReader())
                {
                    while (sqlData.Read())
                    {
                        string xValue = sqlData[0].ToString();
                        int yValue = 0;
                        if (int.TryParse(sqlData[1].ToString(), out yValue))
                        {
                            if (chartName == "G1")
                                Chart1.Series["G1"].Points.AddXY(xValue, yValue);
                            else if (chartName == "G2")
                                Chart2.Series["G2"].Points.AddXY(xValue, yValue);
                        }
                    }
                }
            }
        }
    }
}
