using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{
    public partial class SMsales : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)   
        {
            GridView1.DataBind();
        }
        //Order id Go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getOrderByID();
        }
        //sales id go button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            getSalesByID();
        }
        //Add button click
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkIfOrderExists())
            {
                Response.Write("<script>alert('NO order in this Order ID, try other ID or ADD NEW Order');</script>");
            }
            if (checkIfSalesExists())
            {

                Response.Write("<script>alert('Sales already Exists with this Sales ID, try other ID ');</script>");

            }
            else
            {
                addNewSales();
            }
        }
        //Delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfSalesExists())
            {
                deleteSales();
            }
            else
            {
                Response.Write("<script>alert('Order does not exist');</script>");
            }
        }

        //chek selles id
        bool checkIfSalesExists()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sm_sales_tbl WHERE sal_id ='" + TextBox6.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        //check order id
        bool checkIfOrderExists()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sm_order_tbl WHERE or_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return false;
                }
                else
                {
                    return true;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }
        //Order id go button
        void getOrderByID()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sm_order_tbl WHERE or_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][5].ToString();
                    TextBox3.Text = dt.Rows[0][3].ToString();
                    TextBox4.Text = dt.Rows[0][7].ToString();
                    

                }
                else
                {
                    Response.Write("<script>alert('Invalid Order ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
        //Seales id go button
        void getSalesByID()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sm_sales_tbl WHERE sal_id ='" + TextBox6.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                   
                    TextBox1.Text = dt.Rows[0][1].ToString();
                    TextBox5.Text = dt.Rows[0][2].ToString();


                }
                else
                {
                    Response.Write("<script>alert('Invalid Order ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
        //add
        void addNewSales()
        {
            //Response.Write("<script>alert('testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO sm_sales_tbl (sal_id,sal_or_id,sal_deliverddate) values(@sal_id,@sal_or_id,@sal_delivereddate)", con);

                cmd.Parameters.AddWithValue("@sal_or_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@sal_delivereddate", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@sal_id", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('sales add Successfull');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
            
        }
        //clear form
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }
        //delete
        void deleteSales()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" DELETE FROM sm_sales_tbl WHERE sal_id ='" + TextBox6.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@sal_or_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@sal_delivereddate", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@sal_id", TextBox6.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('sales Deleted Successfull');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

       
    }
}
