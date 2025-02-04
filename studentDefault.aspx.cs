using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DataSet1TableAdapters.Tbl_StudentTableAdapter dt =
            new DataSet1TableAdapters.Tbl_StudentTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (!IsPostBack)
                {

                    string idParam = (string)Session["Id"];//Request.QueryString["Id"];

                   
                    if (string.IsNullOrEmpty(idParam) || !int.TryParse(idParam, out int studentId))
                    {
                        TxtNumber.Text = "Invalid ID";
                        TxtNameSurname.Text = "N/A";
                        TxtNamePhone.Text = "N/A";
                        TxtNamePassword.Text = "N/A";
                        return; 
                    }

                    // Veri çekme
                    var studentList = dt.GetStudentId(studentId);

                  
                    if (studentList == null || studentList.Count == 0)
                    {
                        TxtNumber.Text = "No data found";
                        TxtNameSurname.Text = "N/A";
                        TxtNamePhone.Text = "N/A";
                        TxtNamePassword.Text = "N/A";
                        return; 
                    }

                    
                    var student = studentList[0];
                    TxtNumber.Text = studentId.ToString();
                    TxtNameSurname.Text = "Name Surname: " + student.sName + " " + student.sSurname;
                    TxtNamePhone.Text = "Phone: " + student.sPhone;
                    TxtNamePassword.Text = "Password: " + student.sPassword;
                }
            }
            catch (Exception)
            {


            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("studentPanelUpdate.aspx?Id=" + TxtNumber.Text);
            }
            catch (Exception)
            {



            }

        }
           
}
}
