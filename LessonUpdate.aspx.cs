using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class LessonUpdate : System.Web.UI.Page
    {

        private int lessonId = 0;


        private readonly DataSet1TableAdapters.Tbl_ClassTableAdapter dt =
            new DataSet1TableAdapters.Tbl_ClassTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (int.TryParse(Request.QueryString["cId"], out lessonId))
                {

                    TxtLId.Text = lessonId.ToString();


                    var lessonData = dt.GetDataClassSId(lessonId);
                    if (lessonData.Count > 0)
                    {

                        TxtLName.Text = lessonData[0].cName;
                    }
                    else
                    {

                        Response.Redirect("LessonList.aspx");
                    }
                }
                else
                {

                    Response.Redirect("LessonList.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (!int.TryParse(TxtLId.Text, out int updatedLessonId) || string.IsNullOrWhiteSpace(TxtLName.Text))
            {

                return;
            }


            dt.UpdateQueryLesson(TxtLName.Text, updatedLessonId);


            Response.Redirect("LessonList.aspx");
        }
    }
}
