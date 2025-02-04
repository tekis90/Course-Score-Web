using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class LessonDelete : System.Web.UI.Page
    {
        
        private int lessonId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (int.TryParse(Request.QueryString["cId"], out lessonId))
            {
               
                TxtLessonId.Text = lessonId.ToString();

                var dt = new DataSet1TableAdapters.Tbl_ClassTableAdapter();

                
                var lessonData = dt.GetDataClassSId(lessonId);
                if (lessonData.Count > 0)
                {
                  
                    TxtLessonName.Text = lessonData[0].cName;
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

      
        protected void Button1_Click(object sender, EventArgs e)
        {
      
            if (lessonId > 0)
            {
                var dt = new DataSet1TableAdapters.Tbl_ClassTableAdapter();

               
                dt.DeleteQueryLesson(lessonId);

              
                Response.Redirect("LessonList.aspx");
            }
            else
            {
               
                Response.Redirect("LessonList.aspx");
            }
        }
    }
}
