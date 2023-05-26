using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto.Views.Admin
{
    public partial class Teachers : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowTeachers();
        }
        private void ShowTeachers()
        {
            string Query = "Select * from TeacherTbl";
            TeachersList.DataSource = Con.GetData(Query);
            TeachersList.DataBind();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                if(TNameTb.Value == "" || TEmailTb.Value == "" || SalaryTb.Value == "" || PassTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }else
                {
                    string Name = TNameTb.Value;
                    string Email = TEmailTb.Value;
                    string Salary = SalaryTb.Value;
                    string Password = PassTb.Value;
                    string Query = "insert into TeacherTbl values('{0}','{1}','{3}','{4}')";
                    Query = string.Format(Query, Name, Email, DOBTb.Value.ToString(), Salary, Password);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Teacher Added!!!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;                  
            }
        }
    }
}