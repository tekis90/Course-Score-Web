using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                DataSet1TableAdapters.Tbl_StudentTableAdapter dt = new DataSet1TableAdapters.Tbl_StudentTableAdapter();
                var studentData = dt.GetData();

                if (studentData != null && studentData.Count > 0)
                {
                   
                    Repeater1.DataSource = studentData;
                    Repeater1.DataBind();
                }
                else
                {
                    
                    Response.Write("<script>alert('Öğrenci verileri bulunamadı.');</script>");
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
            }
        }
    }
}
