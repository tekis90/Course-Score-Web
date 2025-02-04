using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class LessonAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.Tbl_ClassTableAdapter dt = new DataSet1TableAdapters.Tbl_ClassTableAdapter();
                dt.InsertQueryLesson(TxtLName.Text);
                Response.Redirect("Default.aspx");
            }
            catch (Exception)
            {
 
            }
            
        }
    }
}