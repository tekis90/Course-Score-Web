using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                DataSet1TableAdapters.Tbl_StudentTableAdapter adapter = new
                    DataSet1TableAdapters.Tbl_StudentTableAdapter();
                adapter.studentAdd(TxtStName.Text, TxtStSurname.Text, TxtStPhone.Text, TxtStMail.Text, TxtStPassword.Text, TxtStImg.Text);

                Response.Redirect("Default.aspx");
            }
            catch (Exception)
            {

                 
            }



        }
    }
}