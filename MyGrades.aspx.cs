using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class MyGrades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.studentScoreTableAdapter dt = new DataSet1TableAdapters.studentScoreTableAdapter();
                Repeater1.DataSource = dt.GetScoreListStudent(Convert.ToInt32(Session["id"].ToString()));
                Repeater1.DataBind();
            }
            catch (Exception)
            {

                 
            }
           
        }
    }
}