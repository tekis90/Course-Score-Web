using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class LessonList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.Tbl_ClassTableAdapter dt =
              new DataSet1TableAdapters.Tbl_ClassTableAdapter();


                Repeater1.DataSource = dt.GetDataClass();
                Repeater1.DataBind();
            }
            catch (Exception)
            {

            }



        }
    }
}