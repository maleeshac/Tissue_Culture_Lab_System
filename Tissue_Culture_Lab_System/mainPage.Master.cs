using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System
{
    public partial class mainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //sales managment click
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeLogin.aspx");
        }
        //singup button click
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeesignup.aspx");
        }
        //user login click
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeLogin.aspx");
        }
        //logout click
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
    }
}