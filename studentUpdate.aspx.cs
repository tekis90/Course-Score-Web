using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class studentUpdate : System.Web.UI.Page
    {
        int id = 0; 

        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                if (!IsPostBack)  
                {
                    id = Convert.ToInt32(Request.QueryString["sId"].ToString());
                    TxtStId.Text = id.ToString();

                   
                    DataSet1TableAdapters.Tbl_StudentTableAdapter dt = new DataSet1TableAdapters.Tbl_StudentTableAdapter();
                    var student = dt.getStudentSelect(id)[0]; 

                  
                    TxtStName.Text = student.sName;
                    TxtStSurname.Text = student.sSurname;
                    TxtStMail.Text = student.sMail;
                    TxtStPhone.Text = student.sPhone;
                    TxtStPassword.Text = student.sPassword;
                    TxtStImg.Text = student.sImg;
                }
            }
            catch (Exception ex)
            {
              
            }
            
             
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            
            try
            {
             
                int studentId;

            
                if (!int.TryParse(TxtStId.Text, out studentId))
                {
                   
                    return;  
                }

                DataSet1TableAdapters.Tbl_StudentTableAdapter dt = new DataSet1TableAdapters.Tbl_StudentTableAdapter();
                int result = dt.UpdateStudentQuary(
                    TxtStName.Text,
                    TxtStSurname.Text,
                    TxtStPhone.Text,
                    TxtStMail.Text,
                    TxtStPassword.Text,
                    TxtStImg.Text,
                    studentId
                );

          
               
                Response.Redirect("Default.aspx");

            }
            catch (Exception ex)
            {
           
                //Response.Write("Hata: " + ex.Message);
            }
            
        }

    }
}
