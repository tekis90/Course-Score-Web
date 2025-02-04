using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseScoreWeb
{
    public partial class scoreUpdate : System.Web.UI.Page
    {
        int examId;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsPostBack == false)
                {



                    examId = Convert.ToInt32(Request.QueryString["examId"].ToString());

                    DataSet1TableAdapters.studentScoreTableAdapter dt = new DataSet1TableAdapters.studentScoreTableAdapter();


                    TxtStNameSurname.Text = dt.GetDataByExamScore(examId)[0].StudentNameSurname.ToString();
                    TxtStId.Text = dt.GetDataByExamScore(examId)[0].sId.ToString();
                    TxtExam1.Text = dt.GetDataByExamScore(examId)[0].exam1.ToString();
                    TxtExam2.Text = dt.GetDataByExamScore(examId)[0].exam2.ToString();
                    TxtExam3.Text = dt.GetDataByExamScore(examId)[0].exam3.ToString();
                    TxtAverage.Text = dt.GetDataByExamScore(examId)[0].avarega.ToString();
                    TxtSituation.Text = dt.GetDataByExamScore(examId)[0].durum.ToString();
                    TxtLesson.Text = dt.GetDataByExamScore(examId)[0].cName.ToString();



                }
            }
            catch (Exception)
            {

                
            }
            



        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {

            try
            {

                double result = (Convert.ToDouble(TxtExam1.Text) +
                    Convert.ToDouble(TxtExam1.Text) +
                    Convert.ToDouble(TxtExam1.Text)) / 3;
                TxtAverage.Text = result.ToString("0.00");

                if (result > 50)
                {
                    TxtSituation.Text = "True";
                }
                else
                {
                    TxtSituation.Text = "False";
                }
            }
            catch (Exception)
            {

               
            }




        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}