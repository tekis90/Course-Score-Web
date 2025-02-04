using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class AnnouncementList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                DataSet1TableAdapters.Tbl_AnnounTableAdapter dt = new DataSet1TableAdapters.Tbl_AnnounTableAdapter();
                var announcementList = dt.GetAnnouncementList();

                if (announcementList != null && announcementList.Count > 0)
                {
                
                    Repeater1.DataSource = announcementList;
                    Repeater1.DataBind();
                }
                else
                {
                
                    Response.Write("<script>alert('Şu anda duyuru bulunmamaktadır.');</script>");
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('Duyurular yüklenirken bir hata oluştu: " + ex.Message + "');</script>");
            }
        }
    }
}
