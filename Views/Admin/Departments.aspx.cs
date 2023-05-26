using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto.Views.Admin
{
    public partial class Departments : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDepartments();
        }
        private void ShowDepartments()
        {
            string Query = "Select * from DepartmentTbl";
            DepartmentsList.DataSource = Con.GetData(Query);
            DepartmentsList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;
                    
                    string Query = "insert into DepartmentTbl values('{0}','{1}')";
                    Query = string.Format(Query, Department, Remarks);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Departamento agregado!!!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";                   
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int Key = 0;
        protected void DepartmentsList_SelectedIndexChanged(object sender, EventArgs e)
        {            
            DepNameTb.Value = DepartmentsList.SelectedRow.Cells[2].Text;
            RemTb.Value = DepartmentsList.SelectedRow.Cells[3].Text;      

            if (DepNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DepartmentsList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;
                    string Query = "update DepartmentTbl set DepName = '{0}',DepRem = '{1}' where DepId = {2}";
                    Query = string.Format(Query, Department, Remarks, DepartmentsList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Departamento Actualizado!!!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";

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
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;                    
                    string Query = "Delete from DepartmentTbl where TID = {0}";
                    Query = string.Format(Query, DepartmentsList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Departamento Eliminado!!!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";                  
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}