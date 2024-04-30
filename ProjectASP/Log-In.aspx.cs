using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectASP
{
    public partial class Log_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin(ReadSession());
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            if (username == "benz" && password == "111111")
            {
                WriteSession();
                Response.Redirect("Member.aspx");
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Error! คุณป้อนUsername หรือ Passwordไม่ถูกต้อง";
            }
        }
        private void CheckLogin(int login)
        {
            if (login == 1)
            {
                Response.Redirect("Member.aspx");
            }
        }
        private void WriteSession()
        {
            Session["userLogin"] = 1;
        }
        private int ReadSession()
        {
            if (Session["userLogin"] == null)
            {
                return 0;
            }
            return int.Parse(Session["Login"].ToString());
        }

    }
}