using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class Statistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {

                if (!IsPostBack)
                {

                    DataSet1TableAdapters.istatistik0TableAdapter istatistik0 = new DataSet1TableAdapters.istatistik0TableAdapter();

                    TxtTotalStudent.Text = istatistik0.totalStudentİstatistik0().ToString();

                    TxtTotalTeachers.Text = istatistik0.totalTeachersIstatictik0().ToString();

                    TxtTotalLessons.Text = istatistik0.totalLessonsIstatistik0().ToString();

                    TextMathematics.Text = istatistik0.MostStudent().ToString();


                }
            }
            catch (Exception)
            {


            }





        }
    }
}