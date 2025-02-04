using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class studentDelete : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        { 
            try
            {
                id = Convert.ToInt32(Request.QueryString["sId"]);
 
                DataSet1TableAdapters.Tbl_StudentTableAdapter dt = new DataSet1TableAdapters.Tbl_StudentTableAdapter();
                dt.DeleteStudent(id);
                Response.Redirect("Default.aspx");

            }
            catch (Exception ex)
            {

                Console.WriteLine("error" + ex.Message);
            }




        }
    }
}