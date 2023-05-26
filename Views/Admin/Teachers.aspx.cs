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
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }else
                {
                    string Name = TNameTb.Value;
                    string Email = TEmailTb.Value;
                    string Salary = SalaryTb.Value;
                    string Password = PassTb.Value;
                    string Query = "insert into TeacherTbl values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, Name, Email, DOBTb.Value.ToString().Substring(0,10), Salary, Password);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Maestro agregado!!!";
                    TNameTb.Value = "";
                    TEmailTb.Value = "";
                    SalaryTb.Value = "";
                    PassTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;                  
            }
        }
        int Key = 0;
        protected void TeachersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //TNameTb.Value = TeachersList.SelectedRow.Cells[1].Text;
            TNameTb.Value = TeachersList.SelectedRow.Cells[2].Text;
            TEmailTb.Value = TeachersList.SelectedRow.Cells[3].Text;
            DOBTb.Value = TeachersList.SelectedRow.Cells[4].Text;
            SalaryTb.Value = TeachersList.SelectedRow.Cells[5].Text;
            PassTb.Value = TeachersList.SelectedRow.Cells[6].Text;
            if(TNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(TeachersList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TEmailTb.Value == "" || SalaryTb.Value == "" || PassTb.Value == "")
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    string Name = TNameTb.Value;
                    string Email = TEmailTb.Value;
                    string Salary = SalaryTb.Value;
                    string Password = PassTb.Value;
                    string Query = "Update TeacherTbl set TName = '{0}',TEmail = '{1}',TDOB = '{2}',TSalary = '{3}',TPass = '{4}' where TID = {5}";
                    Query = string.Format(Query, Name, Email, DOBTb.Value.ToString().Substring(0, 10), Salary, Password,Key);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Maestro Actualizado!!!";
                    TNameTb.Value = "";
                    TEmailTb.Value = "";
                    SalaryTb.Value = "";
                    PassTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TEmailTb.Value == "" || SalaryTb.Value == "" || PassTb.Value == "")
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    string Name = TNameTb.Value;
                    string Email = TEmailTb.Value;
                    string Salary = SalaryTb.Value;
                    string Password = PassTb.Value;
                    string Query = "Delete from TeacherTbl where TID = {0}";
                    Query = string.Format(Query,TeachersList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowTeachers();
                    ErrMsg.InnerText = "Maestro Eliminado!!!";
                    TNameTb.Value = "";
                    TEmailTb.Value = "";
                    SalaryTb.Value = "";
                    PassTb.Value = "";


                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}