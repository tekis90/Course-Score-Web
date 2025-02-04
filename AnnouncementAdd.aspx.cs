using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class AnnouncementAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    DataSet1TableAdapters.Tbl_TeacherTableAdapter dt = new DataSet1TableAdapters.Tbl_TeacherTableAdapter();
                    TxtATeacher.DataSource = dt.GetDataTeacherList();
                    TxtATeacher.DataTextField = "tNameSurname";
                    TxtATeacher.DataValueField = "tId";
                    TxtATeacher.DataBind();
                }
            }
            catch (Exception ex)
            {
               
                Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.Tbl_AnnounTableAdapter dt = new DataSet1TableAdapters.Tbl_AnnounTableAdapter();
                
                if (TxtATeacher.SelectedValue != null && !string.IsNullOrEmpty(TxtaTitle.Text) && !string.IsNullOrEmpty(TxtAContents.InnerText))
                {
                    dt.addAnnouncement(TxtAContents.InnerText, Convert.ToInt32(TxtATeacher.SelectedValue), TxtaTitle.Text);
                    Response.Redirect("AnnouncementList.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Lütfen tüm alanları doldurun.');</script>");
                }
            }
            catch (Exception ex)
            {
            
                Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
            }
        }
    }
}
