using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class AnnouncementDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                string aIdParam = Request.QueryString["aId"];
                if (string.IsNullOrEmpty(aIdParam) || !int.TryParse(aIdParam, out int aId))
                {
                    
                    Response.Write("<script>alert('Geçersiz veya eksik ID parametresi.');</script>");
                    return;
                }

                // Veritabanı işlemi
                DataSet1TableAdapters.Tbl_AnnounTableAdapter dt = new DataSet1TableAdapters.Tbl_AnnounTableAdapter();
                bool success = dt.DeleteQuery(aId) > 0;  

                if (success)
                {
                    Response.Redirect("AnnouncementList.aspx");
                }
                else
                {
                    
                    Response.Write("<script>alert('Duyuru silinirken bir hata oluştu.');</script>");
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
            }
        }
    }
}
