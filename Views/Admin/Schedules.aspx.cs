using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto.Views.Admin
{
    public partial class Schedules : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if(!IsPostBack)
            {
                ShowSchedules();
                GetDepartment();
            }
            
        }
        private void ShowSchedules()
        {
            string Query = "select * from ScheduleTbl";
            ScheduleList.DataSource = Con.GetData(Query);
            ScheduleList.DataBind();
        }
        private void GetDepartment()
        {
            string Query = "select * from DepartmentTbl";
            DepCb.DataTextField = Con.GetData(Query).Columns["DepName"].ToString();
            DepCb.DataValueField = Con.GetData(Query).Columns["DepId"].ToString();
            DepCb.DataSource = Con.GetData(Query);
            DepCb.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepCb.SelectedIndex == -1 || DayCb.SelectedIndex == -1 || Sub1Cb.SelectedIndex == -1 || Sub2Cb.SelectedIndex == -1 || Sub3Cb.SelectedIndex == -1 || Sub4Cb.SelectedIndex == -1 || Sub5Cb.SelectedIndex == -1)
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepCb.SelectedValue.ToString());
                    string Day = DayCb.SelectedItem.ToString(); ;
                    string Sub1 = Sub1Cb.SelectedItem.ToString();
                    string Sub2 = Sub2Cb.SelectedItem.ToString();
                    string Sub3 = Sub3Cb.SelectedItem.ToString();
                    string Sub4 = Sub4Cb.SelectedItem.ToString();
                    string Sub5 = Sub5Cb.SelectedItem.ToString();                    
                    string Query = "insert into ScheduleTbl values({0},'{1}','{2}','{3}','{4}',{5}',{6}')";
                    Query = string.Format(Query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5);
                    Con.SetData(Query);
                    ShowSchedules();
                    ErrMsg.InnerText = "Horarios agregado!!!";
                    DepCb.SelectedIndex = -1;
                    DayCb.SelectedIndex = -1;
                    Sub1Cb.SelectedIndex = -1;
                    Sub2Cb.SelectedIndex = -1;
                    Sub3Cb.SelectedIndex = -1;
                    Sub4Cb.SelectedIndex = -1;
                    Sub5Cb.SelectedIndex = -1;
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepCb.SelectedIndex == -1 || DayCb.SelectedIndex == -1 || Sub1Cb.SelectedIndex == -1 || Sub2Cb.SelectedIndex == -1 || Sub3Cb.SelectedIndex == -1 || Sub4Cb.SelectedIndex == -1 || Sub5Cb.SelectedIndex == -1)
                {
                    ErrMsg.InnerText = "Datos incompletos!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepCb.SelectedValue.ToString());
                    string Day = DayCb.SelectedItem.ToString(); ;
                    string Sub1 = Sub1Cb.SelectedItem.ToString();
                    string Sub2 = Sub2Cb.SelectedItem.ToString();
                    string Sub3 = Sub3Cb.SelectedItem.ToString();
                    string Sub4 = Sub4Cb.SelectedItem.ToString();
                    string Sub5 = Sub5Cb.SelectedItem.ToString();
                    string Query = "update ScheduleTbl set Department = {0},Day = '{1}','{2}','{3}','{4}',{5}',{6}')";
                    Query = string.Format(Query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5);
                    Con.SetData(Query);
                    ShowSchedules();
                    ErrMsg.InnerText = "Horarios agregado!!!";
                    DepCb.SelectedIndex = -1;
                    DayCb.SelectedIndex = -1;
                    Sub1Cb.SelectedIndex = -1;
                    Sub2Cb.SelectedIndex = -1;
                    Sub3Cb.SelectedIndex = -1;
                    Sub4Cb.SelectedIndex = -1;
                    Sub5Cb.SelectedIndex = -1;
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}