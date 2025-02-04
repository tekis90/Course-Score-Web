using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class AnnouncementUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    if (Request.QueryString["aId"] == null || !int.TryParse(Request.QueryString["aId"], out int id))
                    {
                       
                        Response.Write("<script>alert('Geçersiz duyuru ID.');</script>");
                        return;
                    }

                    DataSet1TableAdapters.Tbl_AnnounTableAdapter dt = new DataSet1TableAdapters.Tbl_AnnounTableAdapter();
                    var duyuru = dt.GetDuyuru(id);

                    if (duyuru == null || duyuru.Count == 0)
                    {
                       
                        Response.Write("<script>alert('Duyuru bulunamadı.');</script>");
                        return;
                    }

                   
                    TxtAId.Text = id.ToString();
                    TxtaTitle.Text = duyuru[0].aTitle?.ToString() ?? "Başlık yok";
                    TxtAContents.Value = duyuru[0].aContents?.ToString() ?? "İçerik yok";
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
                // Güncelleme işlemi
                DataSet1TableAdapters.Tbl_AnnounTableAdapter dt =
                    new DataSet1TableAdapters.Tbl_AnnounTableAdapter();

                int aId = Convert.ToInt32(TxtAId.Text);
                string aTitle = TxtaTitle.Text;
                string aContents = TxtAContents.Value;

                // Veritabanında duyuruyu güncelle
                int result = dt.UpdateDuyuru(aTitle, aContents, aId);

               
                if (result > 0)
                {
                    Response.Redirect("AnnouncementList.aspx");  // Duyuru listesine yönlendir
                }
                else
                {
                    Response.Write("<script>alert('Duyuru güncellenirken bir hata oluştu.');</script>");
                }
            }
            catch (Exception ex)
            {
            
                Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
            }
        }
    }
}
